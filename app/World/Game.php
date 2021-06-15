<?php
namespace app\World;

use app\Connection;
use app\Packet\PacketHandler;
use app\Packet\ServerState;
use core\query\DB;
use app\Reflection;

/**
 *
 */
class Game
{
    //角色登录
    public static function GameLogin($serv, $fd, $data = null)
    {
        $UserInfo = [
            'account',
            'human_name',
            'cert',
        ];

        PacketHandler::GetValidStr3($data, $UserInfo, '/');
        $UserInfo['account'] = substr($UserInfo['account'], 2);

        $where = [
            'account' => $UserInfo['account'],
        ];

        if ($info = DB::table('account')->where($where)->find()) {
            if ($info['cert'] == $UserInfo['cert']) {
                //发生公告
                $notice     = config('NOTICE');
                $notice     = explode(PHP_EOL, $notice);
                $new_notice = '';
                $tag        = "\t";
                foreach ($notice as $k => $v) {
                    $new_notice .= $v . $tag;
                }

                $sMsg = makeDefaultMsg(ServerState::SM_SENDNOTICE, strlen($new_notice), 0, 0, 0, $new_notice);

            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_CERTIFICATION_FAIL,1, 0, 0, 0);
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_CERTIFICATION_FAIL,1, 0, 0, 0);
        }

        return $sMsg;
    }

    //文件检验啥的
    public static function LoginNoticeOkEx($serv, $fd, $data = null)
    {
    	$info = [
    		'MissionDataMD5',
    		'ItemDataMD5',
    		'MagicDataMD5',
    		'MapDescDataMD5',
    		'MakeMagicDataMD5'
    	];

    	PacketHandler::GetValidStr3($data, $info, "\t");

    	//TODO 暂时没搞懂干啥的
    	$g_nMakeMagicDataLen = '';
    	$g_nMissionDataLen = 0;

    	if($info['MissionDataMD5'] != $g_nMakeMagicDataLen)
    	{
            $sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,$g_nMissionDataLen, 0, 0, 1);
    	}

    	$g_sItemDataMD5 = '';
    	$g_nItemDataLen = 0;

    	if($info['ItemDataMD5'] != $g_sItemDataMD5)
    	{
            $sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,$g_nItemDataLen, 0, 0, 2);
    	}

    	$g_sMagicDataMD5 = '';
    	$g_nMagicDataLen = 0;

    	if($info['MagicDataMD5'] != $g_sMagicDataMD5)
    	{
            $sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,$g_nMagicDataLen, 0, 0, 3);
    	}

    	$g_sMapDescDataMD5 = '';
    	$g_nMapDescDataLen = 0;

    	if($info['MapDescDataMD5'] != $g_sMapDescDataMD5)
    	{
            $sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,$g_nMapDescDataLen, 0, 0, 4);
    	}

    	$g_sMakeMagicDataMD5 = '';
    	$g_nMakeMagicDataLen = 0;
    	$g_nMakeMagicCount = 0;

    	if($info['MakeMagicDataMD5'] != $g_sMakeMagicDataMD5)
    	{
            $sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,$g_nMakeMagicDataLen, $g_nMakeMagicCount, 0, 5);
    	}

    	$sMsg = makeDefaultMsg(ServerState::SM_CLIENTDATAFILE,0, 0, 0, '');

    	return $sMsg;
    }

    //点击健康忠告
    public static function LoginNoticeOk($serv, $fd, $data = null)
    {
        //加入游戏在线池(同步数据用)
        Connection::saveOnline($fd);
    }

    //登录游戏
    public static function LogonGame($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_LOGON, 384887296, 5040, 232, 204, $body);
    }

    //地图
    public static function NewMap($serv, $fd, $data = null)
    {
        $body = 0;
        return makeDefaultMsg(ServerState::SM_NEWMAP, 384887296, 232, 204, 101, $body);
    }

    //容貌??特征??改变
    public static function FeatureChanged($serv, $fd, $data = null)
    {
    	$body = 0;
        return makeDefaultMsg(ServerState::SM_FEATURECHANGED, 384887296, 512, 514, 0, $body);
    }

    //服务器时间
    public static function ServerTime($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_SERVERTIME, 1603416280, 25472, 16613, 0, $body);
    }

    //能力移动设定
    public static function AbilityMoveset($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_ABILITYMOVESET, 0, 0, 0, 0, $body);
    }

    //复合信息
    public static function CompoundInfos($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_ABILITYMOVESET, 0, 0, 0, 0, $body);
    }

    //名字
    public static function UserName($serv, $fd, $data = null)
    {
        $body = "擦擦擦\\\\\\";
        return makeDefaultMsg(ServerState::SM_USERNAME, 384887296, 255, 4, 0, $body);
    }

    //地区状态
    public static function AreaState($serv, $fd, $data = null)
    {
    	$body = "";
        return makeDefaultMsg(ServerState::SM_AREASTATE, 0, 0, 0, 0, $body);
    }

    //地图形容,地图描述
    public static function MapDescription($serv, $fd, $data = null)
    {
        $body = '比奇省';
        return makeDefaultMsg(ServerState::SM_MAPDESCRIPTION, -1, 0, 0, 0, $body);
    }

    //游戏金币名称
    public static function GameGoldName($serv, $fd, $data = null)
    {
    	$body = '元宝';
    	$num = 39970;
        return makeDefaultMsg(ServerState::SM_GAMEGOLDNAME, $num, 0, 0, 12, $body);
    }

    //身上穿戴物品
    public static function SendUseItems($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_SENDUSEITEMS, 0, 0, 0, 0, $body);
    }

    //我所会的魔法
    public static function SendMyMagic($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_SENDMYMAGIC, 0, 0, 0, 0, $body);
    }

    //服务器配置
    public static function ServerConfig($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_SERVERCONFIG, 0, 0, 0, 0, $body);
    }

    //裸身能力
    public static function NakedAbility($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_NAKEDABILITY, 0, 0, 0, 0, $body);
    }

    //健康信息
    public static function RealityInfo($serv, $fd, $data = null)
    {
        $body = '\/\/';
        return makeDefaultMsg(ServerState::SM_REALITYINFO, 0, 0, 0, 0, $body);
    }

    //游戏设定
    public static function GameSetupInfo($serv, $fd, $data = null)
    {
        $body = '';
        Reflection::serversend($serv, $fd, makeDefaultMsg(ServerState::SM_GAMESETUPINFO, 0, 0, 0, 1, $body));
        Reflection::serversend($serv, $fd, makeDefaultMsg(ServerState::SM_GAMESETUPINFO, 0, 0, 0, 2, $body));
    }

    //任务信息
    public static function MissionInfo($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_MISSIONINFO, 0, 0, 0, 1, $body);
    }

    //制作魔法
    public static function MakeMagic($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_MAKEMAGIC, 0, 0, 12800, 0, $body);
    }

    public static function FilterInfo($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_FILTERINFO, 200, 0, 0, 0, $body);
    }

    //用户密钥设置
    public static function UserKeySetup($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_USERKEYSETUP, -1883242496, 0, 0, 0, $body);
    }

    //角色状态改变
    public static function CharStatusChaned($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_CHARSTATUSCHANGED, 384887296, 219, 255, 0, $body);
    }

    //玩家属性(不发闪退)
    public static function CharacterAbility($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_ABILITY, 258961, 25345, 0, 0, $body);
    }

    //附加属性
    public static function SubAbility($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_SUBABILITY, 1025, 3845, 0, 0, $body);
    }

    //状态模式
    public static function StatusMode($serv, $fd, $data = null)
    {
    	$body = '';
        return makeDefaultMsg(ServerState::SM_STATUSMODE, 600000, 200, 0, 0, $body);
    }

    //系统信息
    public static function SysMessage($serv, $fd, $data = null)
    {
    	$body = '经验倍数:2 时长600000秒';
        return makeDefaultMsg(ServerState::SM_SYSMESSAGE, 384887296, 219, 255, 0, $body);
    }

    //群组消息
    public static function GroupMessage($serv, $fd, $data = null)
    {
        $body = '提示：[攻击模式: 全体攻击]';
        return makeDefaultMsg(ServerState::SM_GROUPMESSAGE, 384887296, 219, 255, 1, $body);
    }

    //背包物品
    public static function BagItems($serv, $fd, $data = null)
    {
        $body = '';
        return makeDefaultMsg(ServerState::SM_BAGITEMS, 384887296, 0, 0, 40, $body);
    }
    
}
