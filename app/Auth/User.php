<?php
namespace app\Auth;

use app\Packet\PacketHandler;
use app\Packet\ServerState;
use app\Server;
use core\query\DB;

/**
 *  账户操作
 */
class User
{
    //注册新用户
    public static function AddNewUser($serv, $fd, $data = null, $rawData = null)
    {
        $TUserEntry_nLen = ceil((array_sum(ServerState::TUserEntry) + count(ServerState::TUserEntry)) * 4 / 3);
        $TUserEntry      = substr($rawData, 0, $TUserEntry_nLen);
        $TUserEntry      = PacketHandler::Decode6BitBytes(GetBytes($TUserEntry));

        $TUserEntryAdd = substr($rawData, $TUserEntry_nLen);
        $TUserEntryAdd = PacketHandler::Decode6BitBytes(GetBytes($TUserEntryAdd));

        $param = [];
        $num   = 0;
        foreach (ServerState::TUserEntry as $k => $v) {
            $num += 1;
            $param[$k] = gbktoutf8(ToStr(array_filter_plus(array_slice($TUserEntry, $num, $v), [0, 256])));
            $num += $v;
        }

        $num = 0;
        foreach (ServerState::TUserEntryAdd as $k => $v) {
            $num += 1;
            $param[$k] = gbktoutf8(ToStr(array_filter_plus(array_slice($TUserEntryAdd, $num, $v)), [0, 256]));
            $num += $v;
        }

        //检查用户重复
        $where = [
            'account' => $param['account'],
        ];

        if (DB::table('account')->where($where)->find()) {
            $sMsg = makeDefaultMsg(ServerState::SM_NEWID_FAIL, 0, 0, 0, 0);
        } else {
            $param['password'] = sha1($param['account'] . ':' . $param['password']);
            if (DB::table('account')->insert($param)) {
                $sMsg = makeDefaultMsg(ServerState::SM_NEWID_SUCCESS, 0, 0, 0, 0);
            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_NEWID_FAIL, -2, 0, 0, 0);
            }
        }

        return $sMsg;
    }

    //修改密码
    public static function ChangePassWord($serv, $fd, $data = null)
    {
        list($account, $password, $newpassword) = explode("\t", $data);

        $where = [
            'account'  => $account,
            'password' => sha1($account . ':' . $password),
        ];

        if ($info = DB::table('account')->where($where)->find()) {
            if ($info['belock'] == 2) {
                $sMsg = makeDefaultMsg(ServerState::SM_CHGPASSWD_FAIL, -2, 0, 0, 0);
            } else {
                $UserInfo = [
                    'password' => sha1($account . ':' . $newpassword),
                ];

                if (DB::table('account')->where($where)->update($UserInfo) !== false) {
                    $sMsg = makeDefaultMsg(ServerState::SM_CHGPASSWD_SUCCESS, 0, 0, 0, 0);
                } else {
                    $sMsg = makeDefaultMsg(ServerState::SM_CHGPASSWD_FAIL, 0, 0, 0, 0);
                }
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_CHGPASSWD_FAIL, -1, 0, 0, 0);
        }

        return $sMsg;
    }

    //登录
    public static function UserLogin($serv, $fd, $data = null)
    {
        list($account, $password) = explode("/", $data);

        $where = [
            'account' => $account,
        ];

        if (DB::table('account')->where($where)->find()) {

            $where['password'] = sha1($account . ':' . $password);

            if ($info = DB::table('account')->where($where)->find()) {

                if ($info['pas_err_num'] >= config('maxlogintimes')) {
                    $sMsg = makeDefaultMsg(ServerState::SM_PASSWD_FAIL, -5, 0, 0, 0);
                } elseif ($info['online'] == 2) {
                    $sMsg = makeDefaultMsg(ServerState::SM_PASSWD_FAIL, -3, 0, 0, 0);
                } elseif ($info['belock'] == 2) {
                    $sMsg = makeDefaultMsg(ServerState::SM_PASSWD_FAIL, -2, 0, 0, 0);
                } else {
                    Server::$clientparam[$fd]['UserInfo'] = $info; //保存数据

                    $UserInfo = [
                        'online'     => 2,
                        'login_date' => date('Y-m-d H:i:s'),
                        'login_ip'   => $serv->getClientInfo($fd)['remote_ip'],
                    ];

                    //更新
                    DB::table('account')->where($where)->update($UserInfo);

                    //获取服务器列表
                    $ServerInfoList = DB::table('server_infos')->find();

                    //保存随机证书
                    $id   = $info['id'];
                    $cert = rand(100, 1000);
                    $where = [
                        'id' => $id,
                    ];
                    $UserInfo = [
                        'cert' => $cert,
                    ];
                    DB::table('account')->where($where)->update($UserInfo);

                    $body = $ServerInfoList['game_server_ip'] . '/' . $ServerInfoList['game_server_port'] . '/' . $cert;

                    $sMsg = makeDefaultMsg(ServerState::SM_SELECTSERVER_OK, 0, 0, 0, 0, $body);
                }
            } else {
                //记录密码错误次数
                $sql = 'update account set pas_err_num = pas_err_num + 1 where account="' . $account . '"';
                DB::table('account')->query($sql);

                $sMsg = makeDefaultMsg(ServerState::SM_PASSWD_FAIL, -1, 0, 0, 0);
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_PASSWD_FAIL, 0, 0, 0, 0);
        }

        return $sMsg;
    }

    //下线
    public static function Offline($UserId = null)
    {
        if ($UserId) {
            $where = [
                'id' => $UserId,
            ];

            $UserInfo = [
                'online' => 1,
            ];

            DB::table('account')->where($where)->update($UserInfo);
        } else {
            $sql = 'update account set online = 1';
            DB::table('account')->query($sql);
        }
    }

    //密码找回
    public static function GetBackPassWord($serv, $fd, $data = null)
    {
        list($account, $questions1, $answers1, $questions2, $answers2, $birth_day) = explode("\t", $data);

        $where = [
            'account'    => $account,
            'questions1' => $questions1,
            'answers1'   => $answers1,
            'questions2' => $questions2,
            'answers2'   => $answers2,
            'birth_day'  => $birth_day,
        ];

        if (DB::table('account')->where($where)->find()) {
            $UserInfo = [
                'password' => sha1($account . ':' . 123456), //重置密码为123456
            ];

            if (DB::table('account')->where($where)->update($UserInfo) !== false) {
                $body = 123456;
                $sMsg = makeDefaultMsg(ServerState::SM_GETBACKPASSWD_SUCCESS, 0, 0, 0, 0, $body);
            } else {
                $sMsg = makeDefaultMsg(ServerState::SM_GETBACKPASSWD_FAIL, 1, 0, 0, 0);
            }
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_GETBACKPASSWD_FAIL, -1, 0, 0, 0);
        }

        return $sMsg;
    }

    //选择服务器(这个版本没用到)
    public static function SelectServer($serv, $fd, $data = null)
    {
        $server_name = $data;

        $where = [
            'name' => $server_name,
        ];

        if (($info = DB::table('server_infos')->where($where)->find()) && !empty(Server::$clientparam[$fd])) {

            //保存随机证书
            $id   = Server::$clientparam[$fd]['UserInfo']['id'];
            $cert = rand(100, 1000);
            $where = [
                'id' => $id,
            ];
            $UserInfo = [
                'cert' => $cert,
            ];
            DB::table('account')->where($where)->update($UserInfo);

            $body = $info['game_server_ip'] . '/' . $info['game_server_port'] . '/' . $cert;

            $sMsg = makeDefaultMsg(ServerState::SM_SELECTSERVER_OK, 0, 0, 0, 0, $body);
        } else {
            $sMsg = makeDefaultMsg(ServerState::SM_ID_NOTFOUND, 0, 0, 0, 0);
        }

        return $sMsg;
    }
}
