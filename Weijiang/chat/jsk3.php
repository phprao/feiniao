<?php

include_once("../../Public/config.php");
$roomid =$_SESSION['agent_room'];
function 管理员喊话($Content, $chat_term='', $chat_status='', $roomid, $game){
    $headimg = get_query_val('fn_setting', 'setting_robotsimg', array('roomid' => $roomid));
    insert_query("fn_chat", array("username" => "播报员", "headimg" => $headimg, 'chat_term'=>$chat_term,'chat_status'=>$chat_status,'content' => $Content, 'addtime' => date('H:i:s'), 'time'=>date('Y-m-d H:i:s'), 'type' => 'S3', 'userid' => 'system', 'game' => $game, 'roomid' => $roomid));
}
if($roomid){ 

$kuai3djs = strtotime(get_query_val('fn_open', 'next_time', "`type` = '9' order by `term` desc limit 1")) - time();

  $kuai3open = get_query_val('fn_lottery9', 'gameopen', array('roomid' => $roomid)) == 'true' ? true : false;

  if($kuai3open){
        $kuai3time = (int)get_query_val('fn_lottery9', 'fengtime', array('roomid' => $roomid));
    }
 
    $msg1 = (int)get_query_val('fn_setting', 'msg1_time', array('roomid' => $roomid));
    $msg1_cont = get_query_val('fn_setting', 'msg1_cont', array('roomid' => $roomid));
    $msg2 = (int)get_query_val('fn_setting', 'msg2_time', array('roomid' => $roomid));
    $msg2_cont = get_query_val('fn_setting', 'msg2_cont', array('roomid' => $roomid));
    $msg3 = (int)get_query_val('fn_setting', 'msg3_time', array('roomid' => $roomid));
    $msg3_cont = get_query_val('fn_setting', 'msg3_cont', array('roomid' => $roomid));
  
    $daojishi = get_query_val('fn_setting','daojishi',"`roomid` = $roomid");
    $fengpanxiaoxi = get_query_val('fn_setting','fengpanxiaoxi',"`roomid` = $roomid");

  $qishu9 = get_query_val('fn_open', 'next_term', "`type` = '9' order by `term` desc limit 1"); 
   
  if($kuai3open){
       $contest1 = str_replace("[期号]",$qishu9,$daojishi);
       $contests1 = str_replace("[换行]","<br>",$contest1);
       $contest2 = str_replace("[期号]",$qishu9,$fengpanxiaoxi);
       $contests2 = str_replace("[换行]","<br>",$contest2);
    $addterm = get_query_val('fn_chat','chat_term',"`roomid`='{$roomid}' and `game`='kuai3' and `chat_status`='djs' and `type`='S3' and `userid`='system' order by `chat_term` desc limit 1");
       $fpterm = get_query_val('fn_chat','chat_term',"`roomid`='{$roomid}' and `game`='kuai3' and `chat_status`='fp' and `type`='S3' and `userid`='system' order by `chat_term` desc limit 1");
        if($kuai3time + 30 == $kuai3djs||$kuai3time + 29 == $kuai3djs||$kuai3time + 28 == $kuai3djs||$kuai3time + 27 == $kuai3djs||$kuai3time + 26 == $kuai3djs||$kuai3time + 25 == $kuai3djs){
          if($addterm==$qishu9){
          }else{
            管理员喊话( $contests1, $qishu9, 'djs',$roomid, 'kuai3');
          }
        }
        if($kuai3time == $kuai3djs||$kuai3time-1== $kuai3djs||$kuai3time-2 == $kuai3djs||$kuai3time-3 == $kuai3djs||$kuai3time-4 == $kuai3djs||$kuai3time-5 == $kuai3djs){
          if($fpterm==$qishu9){
          }else{
            管理员喊话( $contests2, $qishu9, 'fp',$roomid, 'kuai3');
          }
        }
        if($msg1_cont != "" && $kuai3djs == $msg1){
            管理员喊话($msg1_cont, $chatterm='',$chatstatus='',$roomid, 'kuai3');
        }
        if($msg2_cont != "" && $kuai3djs == $msg2){
            管理员喊话($msg2_cont, $chatterm='',$chatstatus='', $roomid, 'kuai3');
        }
        if($msg3_cont != "" && $kuai3djs == $msg3){
            管理员喊话($msg3_cont, $chatterm='',$chatstatus='',  $roomid, 'kuai3');
        }
    }
 
}else{
echo '----------喊话失败！请登录后台启动程序！----------<br><br><br>';
}

//zepto 20171013
echo '<br>';
echo '江苏快三倒计时:'.$kuai3djs;
echo '<br>';
//<!--JS 页面自动刷新 -->
echo ("<script type=\"text/javascript\">");
echo ("function fresh_page()");    
echo ("{");
echo ("window.location.reload();");
echo ("}"); 
echo ("setTimeout('fresh_page()',1000);");      
echo ("</script>");
?>



