<?php
namespace core\pool;

use core\db\Mypdo;
use app\Server;

class MysqlPool
{
    private static $instance;
    protected $available = true;
    public $pool;
    private $config;
    public static $server;

    public function __construct($config)
    {
        if (empty($this->pool)) {
            $this->config = $config;
            $this->pool   = new \SplQueue;

            for ($i = 0; $i < $config[6]; $i++) {
                $res = Mypdo::getInstance($config[0], $config[1], $config[2], $config[3], $config[4], $config[5],$i);
                if ($res === false) {
                    throw new \RuntimeException("Failed to connect mysql server");
                } else {
                    $this->put($res);
                }
            }
        }
    }

    //获取连接池大小
    public function getPoolSize()
    {
        return count($this->pool);
    }

    public static function getInstance($config = null)
    {
        if (empty(self::$instance)) {
            if (empty($config)) {
                $database = config('database');
                $config   = [
                    $database['hostname_write'],
                    $database['hostport'],
                    $database['username'],
                    $database['password'],
                    $database['dbname'],
                    $database['charset'],
                    $database['pool_size'],
                ];
            }
            self::$instance = new static($config);
        }
        return self::$instance;
    }

    //加入连接池
    public function put($server)
    {
        $this->pool->push($server);
    }

    //回收连接
    public function recycle($server)
    {
        $this->pool->push($server);
    }

    //获取连接池
    public function get()
    {
        //有空闲连接且连接池处于可用状态
        if ($this->available && count($this->pool) > 0) {
            self::$server = $this->pool->pop();
            
            // 释放
            defer(function () {
                $this->recycle(self::$server);
            });

            return self::$server;
        }

        self::$instance = null;

        //无空闲连接，创建新连接
        $res = Mypdo::getInstance($this->config[0], $this->config[1], $this->config[2], $this->config[3], $this->config[4], $this->config[5],rand(1000,2000));
        if ($res == false) {
            return false;
        } else {
            return $res;
        }
    }

    // 连接池销毁, 置不可用状态, 防止新的客户端进入常驻连接池, 导致服务器无法平滑退出
    public function destruct()
    {
        $this->available = false;
        while (!$this->pool->isEmpty()) {
            $this->pool->pop();
        }
    }
}
