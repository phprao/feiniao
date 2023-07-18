<?php
header("Content-type:text/html;charset=utf-8");
echo "<span style='color:red;'>腾讯分分彩</span><br>"; 
date_default_timezone_set("Asia/Shanghai");
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
include_once "./Public/config.php";
require "jiesuan.php";
require "jiesuan2.php";
$type = 16;
$game = 'txffc';
$kaitime = get_query_val('fn_open','next_time',"`type`=$type order by `term` desc limit 1");
if(strtotime($kaitime)>time()){
echo '腾讯分分彩未到开奖时间';
echo '<br>';
}else{
  $url = 'http://stitej.com/ap1/txffc.php?id=123A3S56Q1GGSGACSADGASDGAQLBQIA';
  $json = file_get_contents($url);
  $data = json_decode($json,1);
  $qihao = $data['data']['term'];
  $haoma = $data['data']['code'];
  $time = date("Y-m-d H:i:s",$data['data']['time']);
  $next_term = $data['data']['next_term'];
  $next_time = $data['data']['next_time'];

$topcode = get_query_val('fn_open','term',"`type`= $type order by `term` desc limit 1");
if($topcode != $qihao && $topcode<$qihao){
   insert_query('fn_open', array('term' => $qihao, 'code' => $haoma, 'time' => $time, 'type' => $type, 'next_term' => $next_term, 'next_time' => $next_time));
   SSC_jiesuan();
   SSC_jiesuan1('txffc',$qihao);
   sleep(4);
   kaichat($game, $next_term);
    select_query('fn_room','*');
while($x = db_fetch_array()){
 $xx[] = $x;
}
foreach($xx as $x1){
  if(strtotime($x1['roomtime']) < time())continue;
 kaizd($game,$qihao,$x1['roomid']);
}
    echo "更新 $code 成功！<br>";
}else{
    echo "等待 $game 刷新<br>";
    
  }
}
function getcode($szUrl){
$UserAgent = 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; .NET CLR 3.5.21022; .NET CLR 1.0.3705; .NET CLR 1.1.4322)';
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $szUrl);
curl_setopt($curl, CURLOPT_HEADER, 0);  
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
curl_setopt($curl, CURLOPT_ENCODING, '');
curl_setopt($curl, CURLOPT_USERAGENT, $UserAgent);
curl_setopt($curl, CURLOPT_FOLLOWLOCATION, false);
$data = curl_exec($curl); 
return $data;
exit();
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
var limit=6
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


