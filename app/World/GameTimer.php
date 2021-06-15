<?php
namespace app\World;

use app\Connection;
use app\Packet\ServerState;
use app\Reflection;

/**
 * 游戏定时器
 */
class GameTimer
{
    //游戏公告信息
    public static function SendGroupMessage($serv)
    {
        echo "游戏公告\n";

        $msgData = [
            '这是一个免费公益学习的游戏项目,不涉及任何商业服务',
        ];

        if ($onlineList = Connection::getOnline()) {
            $msg = $msgData[rand(0, count($msgData) - 1)];
            foreach ($onlineList as $k => $v) {
                Reflection::serversend($serv, $v, makeDefaultMsg(ServerState::SM_SYSMESSAGE, 0, 219, 255, 0, $msg));
            }
        }
    }

    //离线后更新数据库为下线
    public static function OfflineProcessingStatus($serv)
    {

    }
}
