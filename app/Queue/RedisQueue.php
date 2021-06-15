<?php
namespace app\Queue;

use core\db\Redis;

/**
 * redis队列
 */
class RedisQueue
{
    private static $listName = 'clientList';

    public static function add($param = null, $listName = null)
    {
        $listName = $listName ? $listName : self::$listName;

        return Redis::getInstance(config('redis'))->rpush($listName, json_encode($param));
    }

    public static function get($listName = null)
    {
        $listName = $listName ? $listName : self::$listName;

        return json_decode(Redis::getInstance(config('redis'))->lpop($listName), true);
    }
}
