<?php
namespace app;

use app\Packet\OpCode;
use app\Packet\PacketHandler;
use app\Reflection;
use core\lib\Cache;

class Message
{
    //消息分发
    public function serverreceive($serv, $fd, $data)
    {
        if (!empty($data)) {

            $packArray = explode('!', $data);
            $packArray = array_filter($packArray);

            //拆包
            foreach ($packArray as $k => $v) {
                $pack = $v . '!';

                if (in_array($pack, ['*', '#+!', '*#+!'])) {
                    return;
                }

                $decodePacket = PacketHandler::Decode($pack);

                if (env('MSG_DEBUG', false)) {
                    AUTH_LOG('Receive:' . $pack, 'info');
                    AUTH_LOG("Receive: " . json_encode($decodePacket, JSON_UNESCAPED_UNICODE), 'info');
                }

                // if($num = Cache::drive('redis')->get('key'))
                // {
                //     $num+=1;
                //     Cache::drive('redis')->set('key',$num,10);
                // }else{
                //     $num = 1;
                //     Cache::drive('redis')->set('key',1,10);
                // }

                // WORLD_LOG("返回 " . $num.' 次', 'success');

                $this->handlePacket($serv, $fd, $decodePacket, Server::$clientparam[$fd]['state']);
            }
        }
    }

    //根据当前ClientState处理传入的数据包
    public function handlePacket($serv, $fd, $data, $state)
    {
        Reflection::LoadClass(OpCode::GetOpCode($data['Header']['Ident'], $fd), $serv, $fd, $data['Data'], $data['rawData']);
    }

}
