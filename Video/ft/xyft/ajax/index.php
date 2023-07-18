<?php 
//echo file_get_contents('http://www.1391c.com/xyft/ajax?ajaxhandler=GetXyftAwardData');
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
date_default_timezone_set("Asia/Shanghai");
    function getTimestamp($digits = false) {  
        $digits = $digits > 10 ? $digits : 10;  
        $digits = $digits - 10;
        if ((!$digits) || ($digits == 10))  
        {  
            return time();  
        }  
        else  
        {  
            return number_format(microtime(true),$digits,'','');  
        }  
    }  

$json = file_get_contents('http://'.$_SERVER['SERVER_NAME'].'/api/xyft.php');
$json = json_decode($json);
$json = $json -> data;
foreach($json as $i){
$aa = $i -> opencode;
$term = $i -> expect;
$opentime = $i -> opentimestamp;
$next_term = $i -> nextterm;
$next_time = $i -> nexttime;

$arr = explode(",",$aa);
$opencode.= (int)$arr[0].",";
$opencode.= (int)$arr[1].",";
$opencode.= (int)$arr[2].",";
$opencode.= (int)$arr[3].",";
$opencode.= (int)$arr[4].",";
$opencode.= (int)$arr[5].",";
$opencode.= (int)$arr[6].",";
$opencode.= (int)$arr[7].",";
$opencode.= (int)$arr[8].",";
$opencode.= (int)$arr[9];

$IntervalTimeMs=(strtotime($next_time))."000";
$IntervalTimeMs = $IntervalTimeMs - getTimestamp(13);
$periodNumber1 = (int)substr($term,8);
$periodNumber2 = (int)substr($next_term,8);

echo "
{
	\"time\":".getTimestamp(13).",
	\"current\":{
		\"periodNumber\":" . $periodNumber1 . ",
		\"awardTime\":\"" . date('Y-m-d H:i:s',$opentime) . "\",
		\"awardNumbers\":\"". $opencode ."\"
	},\"next\":{
		\"periodNumber\":".$periodNumber2.",
		\"awardTime\":\"". $next_time ."\",
		\"awardTimeInterval\": ". $IntervalTimeMs  .",
		\"delayTimeInterval\":-6
	}
}

";
}
?>