<?php
namespace app;

use app\Packet\PacketHandler;
use app\Common\Srp6;
use app\Packet\ServerState;
use core\lib\Cache;
use core\pool\MysqlPool;
class Test
{
    public function run()
    {
        // var_dump(MysqlPool::getInstance()->getPoolSize());die;
        // $a = Cache::drive('redis')->get('Online');
        // var_dump($a);die;

        $data = '#6\DCInXKBsdB>^ehHN<uB<@NP^tzF`KSnyKOl{KSpu{`!';
        $decodePacket = PacketHandler::Decode($data);
        var_dump(json_encode($decodePacket));
        var_dump(gbktoutf8(ToStr($decodePacket['Data'])));die;

        $a = '#5Cv^[giBkhGBnhwNqbXbXnuoG]tWS\dCSpyRGrtFJrTSWr[[pxF[neKRagKg?{kvdzKZniW?_hJsciZ_jvw_`wwsdpicMpYGPpiKZrIG^_ivI_eCAmHfMaeRMcUg?lhkHoU`tIR=cIr@zK_tuWrxAKbl{Y^IrE>IlEnEv[C\d[^PgZ]]@M=LMApDMNMeDOmx`N]h=QLeLP<lJPL\ER<`H>QhBZCAnZcqyDnLjXSuuZn]C!';

        //注册
        $data = '#5ffjhg[bkhGBnhwNqdhgDlH[=\DB=hwNqigZtjWfzsYcOqfw=lhK@mXWCnHcFnxoIoh{P==XWFYSRqy_UrikXsYw[tJC^tzOauj[dvZggwJsjw{k<nhkHoXwKlHC>l{oy{kgHtHoEILPB=l\E>\hH?LtK@=@N@mBjofKdF=dWC=pZCn<]D^H`ENTcF?iHN`DZBMd<<LL?Y<L<==UVQQTxKOt{L@A>LpMAM`XgrYITrNYhGBnhwNqigZtjWfwkGrzjchUY_KrmXWCnHcFnxoIoh{LpYGOsjOkwz?rvjgowZ{PpYcVryoYsi{LpYGgwJsjw{?mxkKpy[WszKcvz{oy{kx<<LD?=<PB=l\E>\hH?LtK@=@N@mLQA]X!';
        echolog("源数据:".$data);
        $decodePacket = PacketHandler::Decode($data);
        var_dump(json_encode($decodePacket));
        var_dump(gbktoutf8(ToStr($decodePacket['Data'])));

        $EncodeHeader = PacketHandler::PacketHeader($decodePacket['Header']['Ident'], 0, 0, 0, 0);
        $Packet = array_merge(PacketHandler::Encode($EncodeHeader), PacketHandler::Encode(ToStr($decodePacket['Data'])));
        $data = '#1'.ToStr($Packet).'!';
        echolog('新加密:'.$data);die;

        // 修改密码
        $data = '#1ffjhg[VkhGBnhwNqnx{=mH>[\D>wpi?TsybmrIwRqYH!';
        echolog("源数据:".$data);
        $decodePacket = PacketHandler::Decode($data);
        var_dump(json_encode($decodePacket));
        var_dump(gbktoutf8(ToStr($decodePacket['Data'])));

        $EncodeHeader = PacketHandler::PacketHeader($decodePacket['Header']['Ident'], 0, 0, 0, 0);
        $Packet = array_merge(PacketHandler::Encode($EncodeHeader), PacketHandler::Encode(ToStr($decodePacket['Data'])));
        $data = '#1'.ToStr($Packet).'!';
        echolog('新加密:'.$data);die;

        // 登录
        $data = '#1ffjhg[^khWBnhwNqnx{=mH>[\D>Ypi?Tsy`!';
        echolog("源数据:".$data);
        $decodePacket = PacketHandler::Decode($data);
        var_dump(json_encode($decodePacket));
        var_dump(gbktoutf8(ToStr($decodePacket['Data'])));
        
        $EncodeHeader = PacketHandler::PacketHeader($decodePacket['Header']['Ident'], 0, 1, 0, 0);
        $Packet = array_merge(PacketHandler::Encode($EncodeHeader), PacketHandler::Encode(ToStr($decodePacket['Data'])));
        $data = '#1'.ToStr($Packet).'!';
        echolog('新加密:'.$data);
        die;
    }

    //批量包解析
    public function decode()
    {
        $msg = <<< text
#3\DCInXKBsdB>\ehCYlQu>sjP_eFG_KWrykgsyjcs!
#ffjhgVnwhGBnhwNq!

#4Cv^[giBkhGBnhwNqbXbXnuoG]tWS\dCSpyRGrtFJrTSWr[[pxF[neKRagKg?fFsv{VwehzC_tJschwgejZ_kwZkjpyWW]yCXqiKYpIK^_ivI_eCAmHfMaeRMcUg?lhkHoU`tIR=cIr@zK_tuWrxAKbl{Y^IrE>IlEnEv[C\d[^PgZ]]@M=LMApDMNMeDOmx`N]h=QLeLP<lJPL\ER<`H>QhBZCAnZcqyDnLjXSuuZn]C!
#ffjhgSrwhGBnhwBq!
#ffjhgSrwhGBnhwNq!

#5ffjhgTbkhGBnhwNq!
#f`AXjmzxRGAzhyBqb\!
#f`AXjmvxRGAzhwZqffbjgvvkhGBnh{NQJGZtjL!
#f`AXjlRxhGJlhWNqb\!
#Xehzx]JwHIESxwNq!
#ffjhgQjwhGBnhwNqlXsBmXcumigVyKL!
#ffjhgQrwhGBnhwNqahCYlkwemigVyKWWsh?rnIKXuhcPvFVrfTNr_Vr{y{NkdtZIdtJc`gnWiwZtkwZLiWJc`VvBkvvOfgOF!
#f`AXjlFxOwBrhwNqBBdZW=mjwJsj!
#ffjhgTjwhGBnhwNq!
#QQMOP]fxhGBnhwNqBrIfNrLJ!
#^?ZhgNjwhGBnhofq[\@Y>l!
#ffjhgPbxhGBnhwNq0/bdnhg[FkhGBnhwNqbFLlfgfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/1/btnhgX>khGBnhwNqIGdTigfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/!
#ffjhgRzxhGBnhwNqofjkgVvkhGBnhwNq/fvjhe<JkhGBnhwNq/!
#ffjhgN^whGBnhwNqffjhgVzjhGBnhwP!
#ffjhgOZwhGBnhwNqffjhgVvkhGBnhwNqig^QieZf_v^=gKcG!
#ffjhgONwhGBnhwNq]TL!
#ffjhgM^whGBnhwRqJv^hRDw]hGBrhwNmigZxjWf{kGrvkl!
#ffjhgM^whGBnhwVq!
#ffjhgMRwhGBnhwRqvfjhgVvkhGBnhwNqigZtjWfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZggwJsjw{?mxkKpy[WszKcvz{oy{kx<<LD?=<PB=l\E>\hH?L!
#ffjhgMRwhGBnhwVqffjhgVvkhGBnhwNqigZtjWfwkGp!
#ffjhgSfwhGBn\WNqffjhgVvkhGBnhl!
#TfjhgPjwhGBnhwNqpcBuTb[AXgB^YXQviPOdVobWICGjySARrAF@Rz@_@EYZ^Qqs^^GFZ]NjAYDzYcQ^?CT`@_{TKzrZp{YhOlKJ=vSXOwy@p<uVN\Nw^iljVSHECN^d`hMDD[b@\ovOGmSJ<RsGSgXCqpNxKMb<O?WlLdoZXHBpJtyhIl>uYUxRuOs]?v@[=D[NF=qGxLtDU{hZDAKzZ_QNIE@CO?aEY\HtdiD<krSjmpGkdi]yHxtprSlH<o{ZXvZuklKhUziZujZA=[vxYA]m=A`!
#ffihDaBxhGBnhwNqfs^igVvkhGBnhwNqigZtjWfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOa/v]xCUbJ<x<eOUlRVy\YSWp>P{ClP[<kj\\ia>_pBT\d=uDl<=Slb<LEdI[fRTsKrb]poCoKld>t\DL`!
#f`AXjvzwhGBnhwNq!
#f`AXjm^xVwAIhwNqxMDEAaag@shK^UMyCSiY<=x<Nz<!
#f`AXjm^xVwAIhwNqT=E{WcaB>ctISlad>`jTzjwexE?rcs\yZ\YyTCpl?Bd<YjD!
#Jq^kgMnxhYFnhwNqafjhgVnkhGBohwzqjwZ{jWFwkGrzk{g<]xOzmDK<zX{FnxmUzw_LpY?LpYSaqy{Uwih!
#fvzhgTBwiWvnhwNqdFBhgVvkhGBnhwNq!
#f`AXjlFxOwBrhwNqBBdZW=mjwJsj!
#VdnagPbwZGBnhwNq!
#f`AXjm^xVwAIhwNqA<UyM=xUZ`nD\UM{=lLX_tfG_DrJ[>h!
#f`AXjm^xVwAIhwNqA<UyM=xUZ`nD\UM{=lLX_tfG_DrJ[>h!
#VdnagPbwZGBnhwNq!
#ffjhgOnwhGBlhwNq!

#6ffjhgZBkhGBnhwNq!
#f`AXjmFxhGBnhunq]TnhgSfjhGBnhwNqigZtjWfwkGrz/{TnhgZfjhGBnhwNqigZtjWfwkGrz/xtnhgYjkJwBnhwNqee>dcgfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/xDnhgZRjJwBnhwNqigZtjWfwkGrz/xTnhg[fjJwBnhwNq]hFDoGfwkGrz/ydnhgRFjJwBnhwNqigZtjWfwkGrz/ytnhgRJjJwBnhwNqigZtjWfwkGrz/otnhgRjjhGBnhwNqigZtjWfwkGrz/oTnhgRFjJwBnhwNqigZtjWfwkGrz/rtnhgRBjJwBnhwNqiwZujWfwkGrz/rDnhgRBjJwBnhwNqiwZujWfwkGrz/rTnhgRBjJwBnhwNqiwZujWfwkGrz/sdnhgRBjJwBnhwNqiwZujWfwkGrz/stnhgRBjJwBnhwNqiwZujWfwkGrz/sDnhgRBjJwBnhwNqiwZujWfwkGrz/sTnhgUJjhGBnhwNqiwZujWfwkGrz/qtnhgUJjhGBnhwNqiwZujWfwkGrz/qTnhgUJjhGBnhwNqiwZujWfwkGrz/oDnhg[njJwBnhwNqoaCTPwfwkGrz/gDJhgVrkhGBnhwNqiwZujWfwkGrz/gTJhgLnkhGBnhwNq[gDTigfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/dtJhgYzkhGBnhwNq=gKDggfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/dDJhgNFkhGBnhwNqQf[tegfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/dTJhgYzkhGBnhwNq\g{DggfwkGrzkx?=lhK@mXWCnHcFnxoIoh{LpYGOqISRqy_UrikXsYw[tJC^tzOauj[dvZd/edJhgVfkhGBnhwNqyf^dcgfwkGrz/etJhgVjkhGBnhwNqUg<TigfwkGrz/eTJhgVfkhGBnhwNqyf^dcgfwkGrz/eDJhgVfkhGBnhwNqyf^dcgfwkGrz/jDJhgVjkhGBnhwNqUg<TigfwkGrz/jtJhgVjkhGBnhwNqUg<TigfwkGrz/jdJhgVjkhGBnhwNqUg<TigfwkGrz/jTJhgVjkhGBnhwNqUg<TigfwkGrz/kTJhgVfkhGBnhwNqyf^dcgfwkGrz/ktJhgVjkhGBnhwNqUg<TigfwkGrz/kDJhgVfkhGBnhwNqyf^dcgfwkGrz/hdJhgVjkhGBnhwNqUg<TigfwkGrz/htJhgVfkhGBnhwNqyf^dcgfwkGrz/hDJhgVfkhGBnhwNqyf^dcgfwkGrz/hTJhgVjkhGBnhwNqUg<TigfwkGrz/^DJhgVfkhGBnhwNqyf^dcgfwkGrz/!
#^jmQdNJxWgA\hwBqdUxIgVvkhGBnilV=F?cujV!
#^jmQdLRxjtPOhwNqb\!
#ZbGDdnJxPGAmhwBqdUxIgVvkhGBnh<V=F?cujV!
#ZbGDdlRxjtPOhwNqb\!
#NaGGdNJxPgA^hwZqdUxIgVvkhGBnhlV=F?cujV!
#NaGGdLRxjtPOhwNqb\!
#jg]Od>JxLWArhwBqj[\JgVvkhGBnh\@aa[?DBY]TL!
#jg]Od<RxdzDLhwNqb\!
#FeD=dNJxLgA{hwZqdUxIgVvkhGBnh\V=F?cujV!
#FeD=dLRxjtPOhwNqb\!
text;
    
        $msg = explode("\n", $msg);
        $msg = array_unique($msg);
        
        foreach ($msg as $k => $v) 
        {
            $v = trim($v);
            if($v)
            {
                if(is_numeric(substr($v,1,1)))
                {
                    echo PHP_EOL.PHP_EOL.PHP_EOL;

                    $data = PacketHandler::Decode($v);
                }else{
                    $data = PacketHandler::Decode('#'.$v);
                }

                echo json_encode($data).PHP_EOL;
            }
        }
    }
}
