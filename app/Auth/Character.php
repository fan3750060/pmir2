<?php
namespace app\Auth;

use app\Packet\PacketHandler;
use app\Packet\ServerState;
use app\Server;
use core\query\DB;

/**
 *  英雄角色
 */
class Character
{
    //查询角色
    public static function QueryCharacter($serv, $fd, $data = null)
    {
        $UserInfo = [
            'account',
            'cert',
        ];

        PacketHandler::GetValidStr3($data, $UserInfo, '/');

        $where = [
            'account' => $UserInfo['account'],
        ];

        if ($info = DB::table('account')->where($where)->find()) {
            if ($UserInfo['cert'] == $info['cert']) {

                Server::$clientparam[$fd]['UserInfo'] = $info; //缓存数据

                $where = [
                    'account_id' => $info['id'],
                    'isdel'      => 1,
                ];

                if ($PlayerList = DB::table('human')->where($where)->select()) {
                    $body = '';
                    foreach ($PlayerList as $k => $v) {
                        $body .= $v['human_name'] . '/' . $v['job'] . '/' . $v['wuxing'] . '/' . $v['level'] . '/' . $v['sex'] . '/';
                    }

                    $sMsg = makeDefaultMsg(ServerState::SM_QUERYCHR, 0, 0, 0, 0, $body);
                } else {
                    $sMsg = makeDefaultMsg(ServerState::SM_QUERYCHR, 0, 0, 0, 0);
                }
            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_QUERYCHR_FAIL, 0, 0, 0, 0);
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_QUERYCHR_FAIL, 0, 0, 0, 0);
        }

        return $sMsg;
    }

    //创建
    public static function NewCharacter($serv, $fd, $data = null)
    {
        $CharacterInfo = [
            'account',
            'human_name',
            'hair',
            'job',
            'sex',
        ];

        PacketHandler::GetValidStr3($data, $CharacterInfo, '/');

        unset($CharacterInfo['account']);

        if (empty(Server::$clientparam[$fd]['UserInfo']['id'])) {
            return makeDefaultMsg(ServerState::SM_NEWCHR_FAIL, -2, 0, 0, 0);
        }

        $CharacterInfo['account_id'] = Server::$clientparam[$fd]['UserInfo']['id'];
        $CharacterInfo['level']      = env('InitialLevel', 1);
        $CharacterInfo['hair']       = 1;
        $CharacterInfo['wuxing']     = 1;

        if (!$CharacterInfo['human_name']) {
            return makeDefaultMsg(ServerState::SM_NEWCHR_FAIL, 4, 0, 0, 0);
        }

        $where = [
            'human_name' => $CharacterInfo['human_name'],
        ];

        if (DB::table('human')->where($where)->find()) {
            $sMsg = makeDefaultMsg(ServerState::SM_NEWCHR_FAIL, 1, 0, 0, 0);
        } else {
            if (DB::table('human')->insert($CharacterInfo)) {
                $sMsg = makeDefaultMsg(ServerState::SM_NEWCHR_SUCCESS, 0, 0, 0, 0);
            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_NEWCHR_FAIL, -2, 0, 0, 0);
            }
        }

        return $sMsg;
    }

    //删除
    public static function DeleteCharacter($serv, $fd, $data = null)
    {
        $where = [
            'account_id' => Server::$clientparam[$fd]['UserInfo']['id'],
            'human_name' => $data,
        ];

        $CharacterInfo = [
            'isdel' => 2,
        ];

        if (DB::table('human')->where($where)->update($CharacterInfo) !== false) {
            $sMsg = makeDefaultMsg(ServerState::SM_DELCHR_SUCCESS, 0, 0, 0, 0);
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_DELCHR_FAIL, 0, 0, 0, 0);
        }

        return $sMsg;
    }

    //查询删除过的角色信息
    public static function QueryDeleteCharacter($serv, $fd, $data = null)
    {
        $where = [
            'account_id' => Server::$clientparam[$fd]['UserInfo']['id'],
            'isdel'      => 2,
        ];

        if ($PlayerList = DB::table('human')->where($where)->select()) {
            $body = '';
            foreach ($PlayerList as $k => $v) {
                $body .= $v['human_name'] . '/' . $v['job'] . '/' . $v['level'] . '/' . $v['sex'] . '/' . $v['wuxing'] . '/';
            }

            $sMsg = makeDefaultMsg(ServerState::SM_DELHUM, count($PlayerList), 0, 0, 0, $body);
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_QUERYDELCHR_FAIL, 0, 0, 0, 0);
        }

        return $sMsg;
    }

    //恢复角色
    public static function RestoreDeleteCharacter($serv, $fd, $data = null)
    {
        $where = [
            'account_id' => Server::$clientparam[$fd]['UserInfo']['id'],
            'isdel'      => 2,
            'human_name' => $data,
        ];

        if ($PlayerList = DB::table('human')->where($where)->find()) {
            $CharacterInfo = [
                'isdel' => 1,
            ];

            if (DB::table('human')->where($where)->update($CharacterInfo) !== false) {
                WORLD_LOG('[超速操作] 恢复人物 ' . $data, 'success');

                $sMsg = makeDefaultMsg(ServerState::SM_RENEWHUM, 1, 0, 0, 0);
            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_RENEWHUM, 0, 0, 0, 0);
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_RENEWHUM, 0, 0, 0, 0);
        }

        return $sMsg;
    }

    //选择角色进入游戏
    public static function SelectCharacter($serv, $fd, $data = null)
    {
        $CharacterInfo = [
            'account',
            'human_name',
        ];

        PacketHandler::GetValidStr3($data, $CharacterInfo, '/');

        $where = [
            'account_id' => Server::$clientparam[$fd]['UserInfo']['id'],
            'human_name' => $CharacterInfo['human_name'],
            'isdel'      => 1,
        ];

        if (DB::table('human')->where($where)->find()) {
            $info = DB::table('server_infos')->find();

            $nMapIndex = 0;
            $body      = $info['game_server_ip'] . '/' . $info['game_server_port'];

            $sMsg = makeDefaultMsg(ServerState::SM_STARTPLAY, 0, 0, 0, 0, $body);
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_STARTFAIL, 2, 0, 0, 0);
        }

        return $sMsg;
    }
}
