<?php
namespace app;
use core\lib\Cache;

/**
 * opcode映射
 */
class Reflection
{
    private static $mapOpcode = [
        //发生公告任务
        'SendGroupMessage'    => ['app\World\GameMessage', 'SendGroupMessage'],

        // 账户相关
        'CM_ADDNEWUSER'       => ['app\Auth\User', 'AddNewUser'],
        'CM_CHANGEPASSWORD'   => ['app\Auth\User', 'ChangePassWord'],
        'CM_IDPASSWORD'       => ['app\Auth\User', 'UserLogin'],
        'CM_GETBACKPASSWORD'  => ['app\Auth\User', 'GetBackPassWord'],
        'CM_SELECTSERVER'     => ['app\Auth\User', 'SelectServer'],

        //角色相关
        'CM_QUERYCHR'         => ['app\Auth\Character', 'QueryCharacter'],
        'CM_NEWCHR'           => ['app\Auth\Character', 'NewCharacter'],
        'CM_DELCHR'           => ['app\Auth\Character', 'DeleteCharacter'],
        'CM_VIEWDELHUM'       => ['app\Auth\Character', 'QueryDeleteCharacter'],
        'CM_RENEWHUM'         => ['app\Auth\Character', 'RestoreDeleteCharacter'],
        'CM_SELCHR'           => ['app\Auth\Character', 'SelectCharacter'],

        //游戏登录
        'CM_GAMELOGIN'        => ['app\World\Game', 'GameLogin'],

        'CM_LOGINNOTICEOK_EX' => ['app\World\Game', 'LoginNoticeOkEx'],

        //点击公告ok
        'CM_LOGINNOTICEOK'    => [
            ['app\World\Game', 'LoginNoticeOk'],
            ['app\World\Game', 'LogonGame'],
            ['app\World\Game', 'NewMap'],
            ['app\World\Game', 'FeatureChanged'],
            ['app\World\Game', 'ServerTime'],
            ['app\World\Game', 'AbilityMoveset'],
            ['app\World\Game', 'CompoundInfos'],
            ['app\World\Game', 'UserName'],
            ['app\World\Game', 'AreaState'],
            ['app\World\Game', 'MapDescription'],
            ['app\World\Game', 'GameGoldName'],
            ['app\World\Game', 'SendUseItems'],
            ['app\World\Game', 'SendMyMagic'],
            ['app\World\Game', 'ServerConfig'],
            ['app\World\Game', 'NakedAbility'],
            ['app\World\Game', 'RealityInfo'],
            ['app\World\Game', 'GameSetupInfo'],
            ['app\World\Game', 'MissionInfo'],
            ['app\World\Game', 'MakeMagic'],
            ['app\World\Game', 'FilterInfo'],
            ['app\World\Game', 'UserKeySetup'],
            ['app\World\Game', 'CharStatusChaned'],
            ['app\World\Game', 'CharacterAbility'],
            ['app\World\Game', 'SubAbility'],
            ['app\World\Game', 'StatusMode'],
            ['app\World\Game', 'SysMessage'],
            // ['app\World\Game', 'GroupMessage'],
        ],

        //查询背包物品
        'CM_QUERYBAGITEMS' => ['app\World\Game', 'BagItems'],
    ];

    public static function LoadClass($opcode, $serv, $fd, $data = null, $rawData = null, $mapOpcode = null)
    {
        if (!$mapOpcode) {
            $mapOpcode = self::$mapOpcode;
        }

        if (isset($mapOpcode[$opcode]) && $mapinfo = $mapOpcode[$opcode]) {
            if (is_array($mapinfo[0])) {
                foreach ($mapinfo as $k => $v) {
                    self::LoadFunc($v[0], $v[1], $serv, $fd, $data, $rawData);
                }
            } else {
                self::LoadFunc($mapinfo[0], $mapinfo[1], $serv, $fd, $data, $rawData);
            }
        } else {
            WORLD_LOG('Unknown opcode: ' . $opcode . ' Client : ' . $fd, 'warning');
        }
    }

    public static function LoadFunc($class, $func, $serv, $fd, $data, $rawData)
    {
        $classObject = new \ReflectionMethod($class, $func);
        if ($classObject->isStatic()) {
            if ($packdata = $classObject->invokeArgs(null, [$serv, $fd, $data, $rawData])) {
                Reflection::serversend($serv, $fd, $packdata);
            }
        } else {
            if ($packdata = $classObject->invokeArgs(new $class, [$serv, $fd, $data, $rawData])) {
                Reflection::serversend($serv, $fd, $packdata);
            }
        }
    }

    public static function serversend($serv, $fd, $packdata = null)
    {
        $packdata = '#' . ToStr($packdata) . '!';

        if (env('MSG_DEBUG', false)) {
            WORLD_LOG("Send: " . $packdata, 'info');
        }

        // if($num = Cache::drive('redis')->get('key'))
        // {
        //     $num+=1;
        //     Cache::drive('redis')->set('key',$num,10);
        // }else{
        //     $num = 1;
        //     Cache::drive('redis')->set('key',1,10);
        // }

        // WORLD_LOG("返回 " . $num.' 次', 'success');

        $serv->send($fd, $packdata);
    }
}
