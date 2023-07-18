<?php
header("Content-type:text/html;charset=utf-8");
echo "<span style='color:red;'>加拿大28</span><br>"; 
date_default_timezone_set("Asia/Shanghai");
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
include_once "./Public/config.php";
require "jiesuan.php";
require "jiesuan2.php";
$type = 5;
$game = 'jnd28';
$kaitime = get_query_val('fn_open','next_time',"`type`=$type order by `term` desc limit 1");
if(strtotime($kaitime)>time()){
echo '加拿大28未到开奖时间';
echo '<br>';
}else{
$url = "http://www.1399klc.com/lottery/ajax?lotterycode=canada"; 
$json = file_get_contents($url);
$jsondata = json_decode($json);

$code = $jsondata -> result;  
$term = $jsondata -> period;
$next_term = $jsondata->next_period;  
$opentime = $jsondata ->awardTime;
$ntime = $jsondata->next_awardTime;
$nntime = str_replace("/","-","$ntime"); 
if(strlen($nntime)>11){
  $next_times = $nntime;
}else{
  $next_times = date("Y-m-d H:i:s",strtotime($opentime)+210);
}
  
 $topcode = get_query_val('fn_open','term',"`type`= $type order by `term` desc limit 1");

  if($topcode < $term){
   insert_query('fn_open', array('term' => $term, 'code' => $code, 'time' => date('Y-m-d H:i:s',time()), 'type' => $type, 'next_term' => $next_term, 'next_time' => $next_times));
    PC_jiesuan();
    PC_jiesuan1('jnd28',$term);
    sleep(4);
   kaichat($game, $next_term);
      select_query('fn_room','*');
while($x = db_fetch_array()){
 $xx[] = $x;
}
foreach($xx as $x1){
  if(strtotime($x1['roomtime']) < time())continue;
 kaizd($game,$term,$x1['roomid']);
}
    echo "更新 $code 成功！<br>";
}else{
    echo "等待加拿大28刷新<br>";
}

}

  
?>
<style type="text/css">
<!--
body,td,th {
    font-size: 12px;
}
body {
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
}
#timeinfo{color:#C60}
-->
</style>
<script> 
var limit=4
if (document.images){ 
	var parselimit=limit
} 
function beginrefresh(){ 
if (!document.images) 
	return 
if (parselimit==1) 
	window.location.reload() 
else{ 
	parselimit-=1 
	curmin=Math.floor(parselimit) 
	if (curmin!=0) 
		curtime=curmin+"秒后自动获取!" 
	else 
		curtime=cursec+"秒后自动获取!" 
		timeinfo.innerText=curtime 
		setTimeout("beginrefresh()",1000) 
	} 
} 
window.onload=beginrefresh
</script>
<input type=button name=button value="刷新" onClick="window.location.reload()">
<span id="timeinfo"></span>


