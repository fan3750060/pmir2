<?php
namespace app\Packet;

/**
 * 操作码
 */
class OpCode
{
    const CM_GAMELOGIN = 65001; //角色登录游戏服务器

    //移动指定
    const CM_TURN     = 1; //转
    const CM_WALK     = 2; //走路
    const CM_SITDOWN  = 3; //挖
    const CM_RUN      = 4; //跑
    const CM_HORSERUN = 5; //骑马跑
    const CM_LEAP     = 6; //飞跃

    //攻击指令 要保持指令连续
    const TM_HITSTATE                = 7;
    const CM_HIT                     = 7; //砍
    const CM_HEAVYHIT                = 8;
    const CM_BIGHIT                  = 9;
    const CM_POWERHIT                = 10;
    const CM_LONGHIT                 = 11;
    const CM_WIDEHIT                 = 12;
    const CM_FIREHIT                 = 13;
    const CM_CRSHIT                  = 14;
    const CM_TWNHIT                  = 15;
    const CM_TWINHIT                 = 16;
    const CM_110                     = 17;
    const CM_111                     = 18;
    const CM_112                     = 19;
    const CM_113                     = 20;
    const CM_122                     = 21;
    const CM_56                      = 22;
    const TM_HITSTOP                 = 22;
    
    const CM_BUTCH                   = 23;
    const CM_SPELL                   = 24;
    const CM_QUERYUSERNAME           = 25;
    const CM_DROPITEM                = 26;
    const CM_PICKUP                  = 27;
    const CM_TAKEONITEM              = 28;
    const CM_TAKEOFFITEM             = 29;
    const CM_EAT                     = 30;
    const CM_USERKEYSETUP            = 31;
    const CM_1005                    = 32;
    const CM_CLICKNPC                = 33;
    const CM_MERCHANTDLGSELECT       = 34;
    const CM_ITEMSTRENGTHEN          = 35;
    const CM_USERSELLITEM            = 36;
    const CM_USERBUYITEM             = 37;
    const CM_DROPGOLD                = 38;
    const CM_LOGINNOTICEOK           = 39; // 健康游戏忠告点了确实,进入游戏
    const CM_GROUPMODE               = 40;
    const CM_CREATEGROUP             = 41;
    const CM_ADDGROUPMEMBER          = 42;
    const CM_DELGROUPMEMBER          = 43;
    const CM_USERREPAIRITEM          = 44;
    const CM_MAPAPOISE               = 45;
    const CM_DEALTRY                 = 46;
    const CM_DEALADDITEM             = 47;
    const CM_DEALDELITEM             = 48;
    const CM_DEALCANCEL              = 49;
    const CM_DEALCHGGOLD             = 50;
    const CM_DEALEND                 = 51;
    const CM_USERSTORAGEITEM         = 52;
    const CM_USERTAKEBACKSTORAGEITEM = 53;
    const CM_WANTMINIMAP             = 54;
    const CM_USERMAKEDRUGITEM        = 55;
    const CM_OPENGUILDDLG            = 56;
    const CM_GUILDHOME               = 57;
    const CM_GUILDMEMBERLIST         = 58;
    const CM_GUILDADDMEMBER          = 59;
    const CM_GUILDDELMEMBER          = 60;
    const CM_GUILDUPDATENOTICE       = 61;
    const CM_GUILDUPDATERANKINFO     = 62;
    const CM_STORAGEGOLDCHANGE       = 63;
    const CM_SPEEDHACKUSER           = 64;
    const CM_SHOPGETLIST             = 65;
    const CM_SHOPBUYITEMBACK         = 66;
    const CM_SHOPGETGAMEPOINT        = 67;
    const CM_APPEND                  = 68;
    const CM_CLICKUSERSHOP           = 69;
    const CM_BUYUSERSHOP             = 70;
    const CM_QUERYCHR                = 71; //查询角色
    const CM_THROW                   = 72;
    const CM_SAY                     = 73;
    const CM_40HIT                   = 74;
    const CM_41HIT                   = 75;
    const CM_42HIT                   = 76;
    const CM_43HIT                   = 77;
    const CM_QUERYUSERSTATE          = 78;
    const CM_QUERYUSERSET            = 80;
    const CM_OPENDOOR                = 81;
    const CM_SOFTCLOSE               = 82;
    const CM_GUILDALLY               = 83;
    const CM_GUILDBREAKALLY          = 84;
    const CM_UPDATESERVER            = 85;

    /********** 账户登录相关 ************/
    const CM_IDPASSWORD     = 86; //登录 客户端向服务器发送ID和密码
    const CM_ADDNEWUSER     = 87; //注册
    const CM_CHANGEPASSWORD = 88; //修改密码
    const CM_UPDATEUSER     = 89; // 更新注册资料

    const CM_GMUPDATESERVER     = 90;
    const CM_POWERBLOCK         = 91;
    const CM_CHECKMSG           = 92;
    const CM_MAKEITEM           = 93;
    const CM_GETSAYITEM         = 94;
    const CM_CHECKMATRIXCARD    = 95;
    const CM_FRIEND_CHENGE      = 96;
    const CM_EMAIL              = 97;
    const CM_CHANGEITEMDURA     = 98;
    const CM_NAKEDABILITYCHANGE = 99;
    const CM_REALITYINFO        = 100;
    const CM_SAVEUSERPHOTO      = 101;
    const CM_TAKEONOFFADDBAG    = 102;
    const CM_GUILDGOLDCHANGE    = 103;
    const CM_USERSHOPCHANGE     = 104;
    const CM_GETBACKSTORAGE     = 105;
    const CM_GETBACKSTORAGEPASS = 106;
    const CM_QUERYRETURNITEMS   = 107;
    const CM_USERBUYRETURNITEM  = 108;
    const CM_USERSHOPSAY        = 109;

    /********** 角色相关 ************/
    const CM_NEWCHR          = 110; //新增角色
    const CM_DELCHR          = 111; //删除角色
    const CM_SELCHR          = 112; //选择角色进入游戏
    const CM_SELECTSERVER    = 113; //选择服务器
    const CM_VIEWDELHUM      = 114; //查看删除的角色
    const CM_RENEWHUM        = 115; //恢复角色
    const CM_GETBACKPASSWORD = 116; // 密码找回

    const CM_ALIVE              = 117;
    const CM_CBOMAGIC           = 118;
    const CM_UNSEAL             = 119;
    const CM_BAGUSEITEM         = 120;
    const CM_GAMESETUPINFO      = 121;
    const CM_APPENDCLIENT       = 122;
    const CM_GUILDLEVELUP       = 123;
    const CM_OPENBOX            = 124;
    const CM_CLICKBOX           = 125;
    const CM_CLEARMISSION       = 126;
    const CM_LOGINNOTICEOK_EX   = 127;
    const CM_GUAGEBAR           = 128;
    const CM_MAKEMAGIC          = 129;
    const CM_GETTOPINFO         = 130;
    const CM_MISSIONSTATECHANGE = 131;
    const CM_REMOVESTONE        = 132;
    const CM_SPEEDCLOSE         = 133;
    const CM_CENTERMSG_CLICK    = 134;
    const CM_LONGICEHIT         = 135;
    const CM_SETMAGICKEY        = 136;
    const CM_ITEMABILITYMOVE    = 137;
    const CM_COMPOUNDITEM       = 138;

    public static $OpCodeMap;

    //加载操作码
    public static function LoadOpCode()
    {
        //获取类的所有常量
        $objClass = new \ReflectionClass(new self);
        $arrConst = $objClass->getConstants();

        $OpCodeList = [];
        foreach ($arrConst as $k => $v) {
            $OpCodeList[$v] = $k;
        }

        WORLD_LOG('Load Opcode Success , The total number: ' . count($OpCodeList), 'success');

        self::$OpCodeMap = $OpCodeList;

        return self::$OpCodeMap;
    }

    //获取操作码
    public static function GetOpCode($OpCode, $fd)
    {
        $OpCodeName = isset(self::$OpCodeMap[$OpCode]) ? self::$OpCodeMap[$OpCode] : false;

        if ($OpCodeName) {
            AUTH_LOG('[' . $OpCodeName . '] Client : ' . $fd, 'warning');
        }

        return $OpCodeName;
    }
}
