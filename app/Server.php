<?php
namespace app;

use app\Auth\User;
use app\Common\Checksystem;
use app\Common\DbService;
use app\Packet\OpCode;
use app\Reflection;
use app\Socket\SwooleTcp;
use app\World\GameTimer;
use core\lib\Cache;
use core\pool\MysqlPool;
use core\pool\RedisPool;

/**
 * service
 */
class Server
{
    public static $clientparam = [];
    public static $ServerConfig;
    public static $serv;

    public $active;

    public static $DBSERVER;

    /**
     * [start 开始]
     * ------------------------------------------------------------------------------
     * @author  by.fan <fan3750060@163.com>
     * ------------------------------------------------------------------------------
     * @version date:2019-04-19
     * ------------------------------------------------------------------------------
     * @return  [type]          [description]
     */
    public function start()
    {
        Checksystem::check();

        $GetServerInfos = DbService::Execution('GetServerInfos');

        self::$ServerConfig = $GetServerInfos[0];

        $str = "

    MMMMMMMM       MMMM    MMMM     MMM     MMMMMMMMM        MMMMM
    MMM   MMM      MMMM   MMMMM     MMM     MMM   MMMM      MMM MMM
    MMM    MMM     MMMM   MMMMM     MMM     MMM    MMM     MMM   MMM
    MMM    MMM     MMMMM  MMMMM     MMM     MMM    MMM           MMM
    MMM    MMM     MMMMM MMMMMM     MMM     MMM    MMM          MMMM
    MMM   MMM      MMMMM MMMMMM     MMM     MMM   MMMM          MMM
    MMMMMMMM       MMMMMMMM MMM     MMM     MMMMMMMM           MMMM
    MMM            MMMMMMMM MMM     MMM     MMM  MMMM         MMMM
    MMM            MMM MMMM MMM     MMM     MMM   MMM        MMMM
    MMM            MMM MMM  MMM     MMM     MMM    MMM      MMM
    MMM            MMM      MMM     MMM     MMM    MMM     MMMM
    MMM            MMM      MMM     MMM     MMM    MMMM    MMMMMMMMM
        ";
        WORLD_LOG($str);
        WORLD_LOG('Server version 1.0.1');
        WORLD_LOG('author by.fan <fan3750060@163.com>');
        WORLD_LOG('Gameversion: ' . self::$ServerConfig['gameversion']);
        WORLD_LOG('bind login server port:' . self::$ServerConfig['login_server_ip'] . ' ' . self::$ServerConfig['login_server_port']);
        WORLD_LOG('bind world server port:' . self::$ServerConfig['game_server_ip'] . ' ' . self::$ServerConfig['game_server_port']);

        // 初始状态
        $this->active = true;

        $this->runAuthServer();
    }

    /**
     * [runAuthServer 运行服务器]
     * ------------------------------------------------------------------------------
     * @author  by.fan <fan3750060@163.com>
     * ------------------------------------------------------------------------------
     * @version date:2019-04-19
     * ------------------------------------------------------------------------------
     * @return  [type]          [description]
     */
    public function runAuthServer()
    {
        if ($this->active) {

            $other = [
                [
                    'addr' => '0.0.0.0',
                    'port' => self::$ServerConfig['game_server_port'],
                    'type' => SWOOLE_SOCK_TCP,
                ],
            ];

            self::$serv = SwooleTcp::Listen('0.0.0.0', self::$ServerConfig['login_server_port'], new self(), $other);
        } else {
            WORLD_LOG('Error: Did not start the service according to the process...');
        }
    }

    /**
     * Server启动在主进程的主线程回调此函数
     *
     * @param unknown $serv
     */
    public function onStart($serv)
    {
        // 设置进程名称
        cli_set_process_title("swoole_mir2_master");
        WORLD_LOG("Start");
    }

    public function onShutdown()
    {
        WORLD_LOG("onShutdown");
    }

    //管理进程启动回调
    public function onManagerStart($serv) {
        WORLD_LOG("onManagerStart");
        swoole_set_process_name("swoole_mir2_manager");

        $OpCodeMap = OpCode::LoadOpCode(); //载入操作码

        for ($i=1; $i <= $serv->setting['worker_num']; $i++) {
            $serv->sendMessage($OpCodeMap,$i);
        }
    }

    //管理进程关闭回调
    public function onManagerStop($serv) {
        WORLD_LOG("onManagerStop");
        $serv->shutdown();
    }

    public function onpipeMessage($serv, $src_worker_id, $data)
    {
        OpCode::$OpCodeMap = $data;
    }

    /**
     * 此事件在worker进程/task进程启动时发生
     *
     * @param swoole_server $serv
     * @param int $worker_id
     */
    public function onWorkerStart($serv, $worker_id)
    {
        WORLD_LOG("onWorkerStart");

        swoole_set_process_name("swoole_mir2_work_".$worker_id);

        // if(!OpCode::$OpCodeMap)
        // {
        //     OpCode::LoadOpCode();
        // }

        if (!$serv->taskworker) {
            // //监控mysql连接池
            // $serv->tick(1000 * 60, function ($id) use ($serv,$worker_id) {
            //     $size = MysqlPool::getInstance()->getPoolSize();
            //     echolog(' work: '.$worker_id.' mysql connection pools: ' . $size, 'info');
            // });

            //监控redis连接池
            $serv->tick(1000 * 60, function ($id) use ($serv,$worker_id) {
                $size = RedisPool::getInstance()->getPoolSize();
                echolog(' work: '.$worker_id.' redis connection pools: ' . $size, 'info');
            });
        }
        
        if ($worker_id == 0) {
            if (!$serv->taskworker) {

                //清理非法连接
                $serv->tick(1000 * 60, function ($id) use ($serv) {
                    Connection::clearInvalidConnection($serv);
                });

                //在线公告
                $serv->tick(1000 * 60 * 3, function ($id) use ($serv) {
                    GameTimer::SendGroupMessage($serv);
                });

                //离线后更新数据库为下线
                $serv->tick(1000 * 60 * 3, function ($id) use ($serv) {
                    GameTimer::OfflineProcessingStatus($serv);
                });

                Connection::delOnline();

                User::Offline(); //全部下线

                Cache::drive('redis')->delete('checkconnector');
            }

            WORLD_LOG("start timer finished");
        }
    }

    /**
     * Server在workerExit 退出
     *
     * @param unknown $serv
     */
    public function onWorkerExit($serv)
    {
        MysqlPool::getInstance()->destruct();
        RedisPool::getInstance()->destruct();
        echolog('Exit Worker');
    }

    /**
     * Server worker结束
     *
     * @param unknown $serv
     */
    public function onWorkerStop($serv)
    {
         WORLD_LOG("Stop Worker");
    }

    /**
     * 有新的连接进入时，在worker进程中回调
     *
     * @param swoole_server $serv
     * @param int $fd
     * @param int $from_id
     */
    public function onConnect($serv, $fd, $from_id)
    {
        $this->clearcache($fd);

        WORLD_LOG("Client {$fd} connect");

        Server::$clientparam[$fd]['state'] = 1; //初始化状态

        Connection::saveCheckConnector($fd); //保存连接到待检池

        $serv->send($fd, '*'); //不发登录不了(验证什么的吧)
    }

    /**
     * 接收到数据时回调此函数，发生在worker进程中
     *
     * @param swoole_server $serv
     * @param int $fd
     * @param int $from_id
     * @param var $data
     */
    public function onReceive($serv, $fd, $from_id, $data)
    {
        WORLD_LOG("Get Message From Client {$fd}");

        Connection::update_checkTable($fd);

        $info = $serv->connection_info($fd, $from_id);

        go(function () use ($serv, $fd, $data, $info) {
            if ($info['server_port'] == self::$ServerConfig['login_server_port']) {
                (new Message())->serverreceive($serv, $fd, $data);

            } elseif ($info['server_port'] == self::$ServerConfig['game_server_port']) {
                (new Message())->serverreceive($serv, $fd, $data);
            }
        });

        WORLD_LOG("Continue Handle Worker ".$from_id);
    }

    /**
     * TCP客户端连接关闭后，在worker进程中回调此函数
     *
     * @param swoole_server $serv
     * @param int $fd
     * @param int $from_id
     */
    public function onClose($serv, $fd, $from_id)
    {
        //清空用户信息
        $this->clearcache($fd);

        // 将连接从连接池中移除
        Connection::removeConnector($fd);

        WORLD_LOG("Client {$fd} close connection\n");
    }

    //清空redis
    public function clearcache($fd)
    {
        WORLD_LOG("Clear Cache");

        if (!empty(Server::$clientparam[$fd]['UserInfo'])) {
            User::Offline(Server::$clientparam[$fd]['UserInfo']['id']); //下线
        }

        Server::$clientparam[$fd] = [];
        unset(Server::$clientparam[$fd]);
    }

    public function onTask($serv, $task_id, $workd_id, $data)
    {
        WORLD_LOG("Task working... worker_id: " . $workd_id . " task_id: " . $task_id);

        Reflection::LoadClass($data['opcode'], $serv, $data['data']['fd'], $data['data']);

        return $data;
    }

    public function onFinish($serv, $task_id, $data)
    {
        WORLD_LOG('Task Finished task_id: ' . $task_id);

        if (!empty($data['callback'])) {
            Reflection::LoadClass($data['callback'], $serv, $data['data']['fd'], $data['data']);
        }
    }
}
