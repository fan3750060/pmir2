<?php
namespace app\Common;

use core\query\DB;

class DbService
{
    private static $MapCommand = [
        'GetServerInfos' => 'select * from server_infos', //获取服务器列表
    ];

    public static function Execution($Command = null, $param = [])
    {
        if (array_key_exists($Command, self::$MapCommand)) {
            return DB::table('*')->query(self::$MapCommand[$Command]);
        } else {
            return false;
        }
    }
}
