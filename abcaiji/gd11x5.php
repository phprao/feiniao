<?php
header("Content-type:text/html;charset=utf-8");
echo "<span style='color:red;'>广东11选5</span><br>"; 
date_default_timezone_set("Asia/Shanghai");
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
include_once "./Public/config.php";
require "jiesuan.php";
require "jiesuan2.php";
$type = 8;
$game = 'gd11x5';
$topcode = get_query_val('fn_open','term',"`type`= $type order by `term` desc limit 1");

  $url = 'http://stitej.com/ap1/gd11x5.php?id=123A3S56Q1GGSGACSADGASDGAQLBQIA';
  $json = file_get_contents($url);
  $data = json_decode($json,1);
  $term = $data['data']['term'];
  $haoma = $data['data']['code'];
  $time = date("Y-m-d H:i:s",$data['data']['time']);
  $next_term = $data['data']['next_term'];
  $next_time = $data['data']['next_time'];
if($topcode < $term && strlen($term)>8){
   insert_query('fn_open', array('term' => $term, 'code' => $haoma, 'time' => $time, 'type' => $type, 'next_term' => $next_term, 'next_time' => $nexttime));
   X5_jiesuan();
  X5_jiesuan1('gd11x5',$term);
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
    echo "更新 $codes 成功！<br>";
}else{
    echo "等待 $game 刷新<br>";
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


