<?php

return [
    /**************** 数据库配置 ****************/
    'database' => [
        // 连接池大小
        'pool_size'        => 10,

        'pool_get_timeout' => 0.5,

        // 数据库类型
        'type'             => env('DB_CONNECTION', 'mysql'),

        // 服务器地址
        'hostname_write'   => env('DB_HOST_WRITE', '127.0.0.1'),

        'hostname_read'    => env('DB_HOST_READ', '127.0.0.1'),

        //数据库名称
        'dbname'           => env('DB_DATABASE', 'test'),

        //用户名
        'username'         => env('DB_USERNAME', 'root'),

        //密码
        'password'         => env('DB_PASSWORD', ''),

        //端口
        'hostport'         => env('DB_PORT', '3306'),

        //字符编码
        'charset'          => env('DB_CHARSET', 'UTF8'),

    ],

    /**************** memcache配置 ****************/
    'memcache' => [
        // 连接地址
        'hostname'    => '127.0.0.1',

        // 端口
        'hostport'    => '11211',

        //过期时间
        'expiration'  => 0,

        //前缀
        'prefix'      => 'mem',

        //是否压缩
        'compression' => false,
    ],

    /**************** redis配置 ****************/
    'redis'    => [

        // 连接池大小
        'pool_size'        => 10,

        'pool_get_timeout' => 0.5,

        // 连接地址
        'hostname'         => env('REDIS_HOST', '127.0.0.1'),

        //端口
        'hostport'         => env('REDIS_PORT', 6379),

        //密码
        'password'         => env('REDIS_PASSWORD', null),

        //数据库索引号
        'select'           => env('REDIS_DB', 0),

        //超时时间
        'timeout'          => 0,

        //有效时间
        'expire'           => 0,

        //是否长连接 false=短连接
        'persistent'       => false,

        //前缀
        'prefix'           => 'redis',
    ],

    /**************** mongo配置 ****************/
    'mongo'    => [
        // 连接地址
        'hostname' => env('MOGODB_PRIMARY', 'localhost'),

        //端口
        'hostport' => env('MOGODB_PORT', 27017),

        //库名称
        'dbname'   => env('MOGODB_DATABASE', 'task_manager'),

        //用户
        'username' => env('MOGODB_USERNAME', 'forge'),

        //密码
        'password' => env('MOGODB_PASSWORD', ''),

        //audb
        'authdb'   => env('MOGODB_AUTHDB', 'rule_engine'),

    ],
];
