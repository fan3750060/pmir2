<?php
namespace app\Packet;

/**
 *  数据包加解密管理器
 */
class PacketHandler
{

    private static $decode6BitMask    = [0xFC, 0xF8, 0xF0, 0xE0, 0xC0];
    private static $DEFBLOCKSIZE      = 16;
    private static $CONTENT_SEPARATOR = '/';
    private static $BITMASKS          = 0xAA;
    private static $ENDECODEMODE      = true; //加密类型 true代表新加密  false代表老加密

    //加密
    public static function Encode($packet = '')
    {
        return self::Encode6BitBytes(GetBytes($packet));
    }

    //解密
    public static function Decode($packet = '')
    {
        $packetIndex = substr($packet, 1, 1);
        echolog('PacketIndex:' . $packetIndex, 'info');

        $sCode  = substr($packet, 2, strlen($packet) - 3);
        $sPos1  = substr($sCode, 0, self::$DEFBLOCKSIZE);
        $sPos2  = substr($sCode, self::$DEFBLOCKSIZE, strlen($sCode) - self::$DEFBLOCKSIZE);
        $DefMsg = self::Decode6BitBytes(GetBytes($sPos1));

        $login = ToStr($DefMsg);
        if (strlen($login) > 2 && substr($login, 0, 1) == '*' && substr($login, 1, 1) == '*') {
            $DefMsg = self::Decode6BitBytes(GetBytes($sCode));

            $packet = [
                'Header'  => [
                    'Ident'  => 65001,
                    'Recog'  => 0,
                    'Param'  => 0,
                    'Tag'    => 0,
                    'Series' => 0,
                ],
                'Data'    => gbktoutf8(ToStr($DefMsg)),
                'rawData' => $sCode,
            ];
        } else {
            $Header = self::UnPacketHeader($DefMsg);
            $sData  = self::Decode6BitBytes(GetBytes($sPos2));

            $packet = [
                'Header'  => $Header,
                'Data'    => gbktoutf8(ToStr($sData)),
                'rawData' => $sPos2,
            ];
        }

        return $packet;
    }

    //加密包头
    public static function PacketHeader($Ident, $Recog, $Param, $Tag, $Series)
    {
        return pack('ls4', $Recog, $Ident, $Param, $Tag, $Series);
    }

    //解包头
    public static function UnPacketHeader($packet)
    {
        return unpack('lRecog/sIdent/sParam/sTag/sSeries', ToStr($packet));
    }

    //解析参数
    public static function Params($packet)
    {
        return explode(self::$CONTENT_SEPARATOR, $packet);
    }

    //获取有效值
    public static function GetValidStr3($Str, &$Dest, $DividerAry = '/')
    {
        $array = explode($DividerAry, $Str);
        $param = [];
        foreach ($array as $k => $v) {
            if (isset($Dest[$k])) {
                $param[$Dest[$k]] = $v;
            }
        }
        $Dest = $param;
    }

    //加密
    public static function Encode6BitBytes($pSrc)
    {
        $nRestCount = 0;
        $btRest     = 0;
        $nDestPos   = 0;
        $pDest      = [];
        $size       = count($pSrc);
        $nDestLen   = ($size / 3) * 4 + 10;

        for ($i = 0; $i < $size; $i++) {
            if ($nDestPos >= $nDestLen) {
                break;
            }

            $btCh = $pSrc[$i];

            if (self::$ENDECODEMODE) {
                $btXor = self::$BITMASKS;
                $btXor += $i;
                $btCh = $btCh ^ $btXor;
            }

            $btMade = ($btRest | ($btCh >> (2 + $nRestCount))) & 0x3F;
            $btRest = ($btCh << (8 - (2 + $nRestCount)) >> 2) & 0x3F;
            $nRestCount += 2;

            if ($nRestCount < 6) {
                $pDest[$nDestPos] = $btMade + 0x3C;
                $nDestPos++;
            } else {
                if ($nDestPos < $nDestLen - 1) {
                    $pDest[$nDestPos]     = $btMade + 0x3C;
                    $pDest[$nDestPos + 1] = $btRest + 0x3C;
                    $nDestPos += 2;
                } else {
                    $pDest[$nDestPos] = $btMade + 0x3C;
                    $nDestPos++;
                }
                $nRestCount = 0;
                $btRest     = 0;
            }
        }

        if ($nRestCount > 0) {
            $pDest[$nDestPos] = $btRest + 0x3C;
            $nDestPos++;
        }

        // $pDest[$nDestPos] = 0;
        return $pDest;
    }

    public static function Decode6BitBytes($sSource, $nBufLen = 1024)
    {
        $Masks    = self::$decode6BitMask;
        $btCh     = 0;
        $nSrcLen  = count($sSource);
        $nBitPos  = 2;
        $nMadeBit = 0;
        $nBufPos  = 0;
        $btTmp    = 0;
        $pbuf     = [];

        $nBufLen = [];
        for ($i = 0; $i < ($nSrcLen * 3 / 4); $i++) {
            $nBufLen[] = 0;
        }

        for ($i = 0; $i < $nSrcLen; $i++) {
            if ($sSource[$i] - 0x3C >= 0) {
                $btCh = $sSource[$i] - 0x3C;
            } else {
                $nBufPos = 0;
                break;
            }

            if ($nBufPos >= $nBufLen) {
                break;
            }

            if ($nMadeBit + 6 >= 8) {
                $btByte = $btTmp | (($btCh & 0x3F) >> (6 - $nBitPos));

                if (self::$ENDECODEMODE) {
                    $btXor = self::$BITMASKS;
                    $btXor += $nBufPos;
                    $btByte = $btByte ^ $btXor;
                }

                $pbuf[$nBufPos] = $btByte;
                $nBufPos++;
                $nMadeBit = 0;

                if ($nBitPos < 6) {
                    $nBitPos += 2;
                } else {
                    $nBitPos = 2;
                    continue;
                }
            }

            $btTmp = ($btCh << $nBitPos) & $Masks[$nBitPos - 2];
            $nMadeBit += (8 - $nBitPos);
        }

        // $pbuf[$nBufPos-1] = 0;
        return $pbuf;
    }
}
