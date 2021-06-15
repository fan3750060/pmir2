## pmir2

Mir2传奇模拟游戏服务器,项目采用PHP开发,Tcp基于swoole

=====

~~~
[2019-10-31 00:00:01]: The current system is: Linux
[2019-10-31 00:00:01]: 

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
        
[2019-10-31 00:00:01]: Server version 1.0.1
[2019-10-31 00:00:01]: author by.fan <fan3750060@163.com>
[2019-10-31 00:00:01]: Gameversion: 1.76
[2019-10-31 00:00:01]: bind login server port:127.0.0.1 7000
[2019-10-31 00:00:01]: bind world server port:127.0.0.1 7200
[2019-10-31 00:00:01]: Start
[2019-10-31 00:00:01]: onWorkerStart
[2019-10-31 00:00:01]: onWorkerStart
[2019-10-31 00:00:01]: start timer finished
[2019-10-31 00:00:01]: onWorkerStart

~~~

## Introduction
This is a web game simulator written in PHP.

The game client is based on GEEM2.

Can enter the game normally

The follow-up process is under development...

The database file is in the root directory: sql/..

Limited energy, welcome to submit version, QQ group: 186510932 Welcome to study together~

The game client should be downloaded in the group (only for research, no business conduct is allowed, and any business behavior that does not comply with our regulations is not related to us)

## 介绍
这是用PHP编写的网络游戏模拟器。

游戏客户端基于网上流传代码。

可以正常进入游戏

后续进程正在开发中......

数据库文件在根目录: sql/..

精力有限,欢迎提交版本,QQ群:186510932 欢迎一起研究~

游戏客户端请在群里下载(仅限于研究,禁止进行任何商业行为,任何不遵守我们规定的商业行为都与我们无关)


## 申明
注: 本模拟器为私人研究项目,以学习为目的,不进行任何商业项目的活动,任何人非法用于商业目的都与本项目无关

Pmir2 is an online game object server that has undergone extensive changes over time to optimize.
Improve and clean up codebase mechanics and functionality while improving the game.
It is completely open source; it encourages community involvement.
If you want to provide ideas or code, please visit the join group or send a pull request to our [Github Repository]

Https://github.com/fan3750060/pmir2

pmir2是一款网络游戏对象服务器,随着时间的推移而进行大量更改以进行优化,
在改进游戏的同时改进和清理代码库机制和功能。
它是完全开源的; 非常鼓励社区参与。
如果您想提供想法或代码，请访问加入交流群或向我们的[Github存储库]发出拉取请求

https://github.com/fan3750060/pmir2

## 安装及依赖 Installation dependency

git clone https://github.com/fan3750060/pmir2.git

    Php version >= 7.2.3

    Swoole version >= 4.4.12

    redis version >= 3.2.0

## 运行 Run
Linux:

运行登录模拟器(Run Authserver): 

    php script Server/start

    Or

    ./start.sh

关闭模拟器( Stop Server): 

    ctrl+C 

    Or

    ./stop.sh 


注: 测试账户(test user) admin001 密码 admin  (数据库密码哈希值加密为: sha1("admin001:admin") )

  数据库配置文件是.env
  请将.env.example复制到.env并更改配置。

  The database configuration file is in .env
  please copy .env.example to .env and change the configuration.

## 操作指南
    安装数据库
    新建phpmir2数据库,并将根目录中sql里的文件导入到数据库

    修改服务器ip
    server_infos表中的game_server_ip修改为部署的服务器的外网ip


    下载phpmir2客户端
    将QQ群中登录器放入客户端根目录,点击phpmir2登录器
    添加游戏,并输入部署服务端的ip地址及端口,选择保存后即可点击开始游戏

## 链接 Links

* [PHP](https://www.php.net/)
* [Swoole](https://www.swoole.com/)

感谢mir2,传奇等开源游戏框架


## 更新进度
  1.修复登录器
  2.修复账户注册
  3.修复密码修改
  4.修复密码找回
  5.修复角色查询
  6.修复创建角色
  7.修复删除角色
  8.修复删除角色找回列表
  9.修复删除后恢复角色

## Demonstration 演示

![image](https://doutuquan.oss-cn-hangzhou.aliyuncs.com/11.png)

![image](https://doutuquan.oss-cn-hangzhou.aliyuncs.com/22.png)







  



