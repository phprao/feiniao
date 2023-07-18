<?php
$load = 5;
header("Content-type:text/html;charset=utf-8");
echo "<span style='color:red;'>六合彩</span><br>"; 
date_default_timezone_set("Asia/Shanghai");
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
include_once "./Public/config.php";
require "jiesuan.php";
$game='lhc';
$type=13;
$kaitime = get_query_val('fn_open','next_time',"`type`=$type order by `term` desc limit 1");
if((strtotime($kaitime)+580)>time()){
echo '六合未到开奖时间';
echo '<br>';
}else{
$url = 'http://www.536888.com/chajian/bmjg.js';
$json = file_get_contents($url);
$data = json_encode($json);

$arr = json_decode($data);
$key = explode('"',$arr);
$arrs = explode(',',$key[3]);
 foreach($arr as $val){
   if($val == '00')echo '六合开奖中...';exit;
 }
  $code = $arrs[1].','.$arrs[2].','.$arrs[3].','.$arrs[4].','.$arrs[5].','.$arrs[6].','.$arrs[7];
  $term = date('Y').$arrs[0];
  $opentime = date('Y-m-d')." 21:30:00";
  $next_term = date('Y').$arrs[8];
  $next_time = date('Y-'.$arrs[9].'-'.$arrs[10].'')." 21:30:00";

  
$topterm = get_query_val('fn_open','term',"`type`=$type order by `term` desc limit 1");
if($topterm < $term && $term != ""){
	insert_query('fn_open', array('term' => $term, 'code' => $code, 'time' => date('Y-m-d H:i:s',time()), 'type' => $type, 'next_term' => $next_term, 'next_time' => $next_time));
	LHC_jiesuan();
  sleep(4);
	kaichat($game, $next_term);
	echo '最新六合彩：'.$term;
	echo "\n";
	echo "更新 $code 成功！<br>";
}else{
	echo "等待 $game 刷新<br>";
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
var limit=30
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


