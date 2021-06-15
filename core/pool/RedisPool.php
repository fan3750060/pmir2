<?php
namespace core\pool;

use core\db\Redis;

class RedisPool
{

    private static $instance;
    protected $available = true;
    protected $pool;
    private $config;
    public static $server;

    public function __construct($config)
    {
        if (empty($this->pool)) {
            $this->config = $config;
            // $this->pool   = new \SplQueue;
            $this->pool = new \chan($config['pool_size']);

            for ($i = 0; $i < $config['pool_size']; $i++) {
                go(function () use ($config, $i) {
                    $res = Redis::getInstance($config, $i);

                    if ($res === false) {
                        throw new \RuntimeException("Failed to connect redis server");
                        echolog('Failed to connect redis serverr', 'error');
                    } else {
                        $this->put($res);
                    }
                });
            }
        }
    }

    //获取连接池大小
    public function getPoolSize()
    {
        // return count($this->pool);
        return $this->pool->length();
    }

    public static function getInstance($config = null)
    {
        if (empty(self::$instance)) {
            if (empty($config)) {
                $config = config('redis');
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
        // if ($this->available && count($this->pool) > 0) {
        if ($this->available && $this->pool->length() > 0) {
            // self::$server = $this->pool->pop();
            self::$server = $this->pool->pop($this->config['pool_get_timeout']);

            //释放
            defer(function () {
                $this->recycle(self::$server);
            });

            return self::$server;
        }

        self::$instance = null;

        //无空闲连接，创建新连接
        $res = Redis::getInstance($this->config, rand(1000, 2000));
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
