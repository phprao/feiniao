<?php
include_once('../../../Public/config.php');
 

 
 //返回待开奖期数
 function chaqishu(){
return opencan();
	}  
 

//返回注单
 function chazhudan($roomid,$qishu){
	 select_query('fn_jssscorder','*',array('roomid'=>$roomid,'term'=>$qishu,'jia'=>'false','status'=>'未结算'));
    while($db = db_fetch_array()){
     $rs[] = $db;
    }
	if($rs){
	$lie="";
	for($i=0;$i<count($rs);$i++){           
$lie=$lie.$rs[$i]['mingci'].",".$rs[$i]['content'].",".$rs[$i]['money'].",".peilv($rs[$i]['mingci'],$rs[$i]['content'],$roomid)."|";
	}
return substr($lie,0,strlen($lie)-1);
	}

}


//返回随机号码 
function randk($len=5){
	$str='6038519724';
	$rand='';
	for($x=0;$x<$len;$x++){
		$rand.=($rand!=''?',':'').substr($str,rand(0,strlen($str)-1),1);
	}
	return $rand;
}
	
//计算输赢
function jsshuying($haoma,$zhudan){
$hh=explode(',',$haoma);
$zhudan2=explode('|',$zhudan);
$count=count($zhudan2); 
$jiner=0;
for($i=0;$i<$count;$i++) 
{ 
$zhudan3=explode(',',$zhudan2[$i]);

$fanhuishuying=jisuanjieguo($hh,$zhudan3[0],$zhudan3[1],$zhudan3[3],$zhudan3[2]);
$jiner=$fanhuishuying+$jiner;
} 
return $jiner;
}	   
	   
//分布式运算
function jisuanjieguo($result,$mingci,$content,$peilv,$jine){
	switch ($mingci){
		case '1' : 
			return jieguopk($result[0],$content,$peilv,$jine);
			break;
		case '2' : 
			return jieguopk($result[1],$content,$peilv,$jine);
			break;
		case '3' : 
			return jieguopk($result[2],$content,$peilv,$jine);
			break;
		case '4' : 
			return jieguopk($result[3],$content,$peilv,$jine);
			break;
		case '5' : 
			return jieguopk($result[4],$content,$peilv,$jine);
			break;
		case '总' : 
			return jieguozonghepk($result,$content,$peilv,$jine);
			break;
		case '前三' : 
			return jieguo3gepk($result[0].$result[1].$result[2],$content,$peilv,$jine);
			break;
		case '中三' : 
			return jieguo3gepk($result[1].$result[2].$result[3],$content,$peilv,$jine);
			break;
		case '后三' : 
			return jieguo3gepk($result[2].$result[3].$result[4],$content,$peilv,$jine);
			break;
		case '牛牛' : 
			return jieguo4gepk($result,$content,$peilv,$jine);
			break;
		
		default:
			return 0;
	}	
} 
	   
function jieguopk($mnmc,$mnmcjieguo,$peilv,$jine){
	
	$ifdanshuang="";
	$ifdaxiao="";
    
	if($mnmc>4){
		$ifdaxiao="大";
	}else{
		$ifdaxiao="小";
	}
	
	if ($mnmc%2==0) {
		$ifdanshuang="双";	 	
	}else{
		$ifdanshuang="单";	
	}
	
	if(($mnmcjieguo==$mnmc)||($mnmcjieguo==$ifdaxiao)||($mnmcjieguo==$ifdanshuang)){
		//下注正确，返回负数
		return $jine*(1-$peilv);			
	}else {
	//include_once 'cqzn.php';
		//下注错误，返回正数
	 	return $jine;
	}	
}
	   
function jieguozonghepk($totalresult,$mnmcjieguo,$peilv,$jine){
	$resultlonghuhe=$totalresult;
	$totalresult=$totalresult[0]+$totalresult[1]+$totalresult[2]+$totalresult[3]+$totalresult[4];
	$ifdanshuang="";
	$ifdaxiao="";
	$iflonghuhe="";
	
	if($totalresult>23){
		$ifdaxiao="大";
	}else{
		$ifdaxiao="小";
	}
	
	if ($totalresult%2==0) {
		$ifdanshuang="双";	 	
	}else{
		$ifdanshuang="单";	
	}
	if($resultlonghuhe[0]>$resultlonghuhe[4]){
		$iflonghuhe="龙";
	}else if ($resultlonghuhe[0]<$resultlonghuhe[4]) {
	 	$iflonghuhe="虎";
	}else{
		$iflonghuhe="和";
	}

	
	if(($mnmcjieguo==$totalresult)||($mnmcjieguo==$ifdaxiao)||($mnmcjieguo==$ifdanshuang)||($mnmcjieguo==$iflonghuhe)){
	
		//下注正确，返回负数
		return $jine*(1-$peilv);			
	}else {
		//下注错误，返回正数
	 	return $jine;
	}	
	
}
	   
	   
function jieguo3gepk($result3ge,$mnmcjieguo,$peilv,$jine){
   
	$flagjieguo="杂六";
	$result3ge=str_split($result3ge);
	asort($result3ge);
	$result3ge=implode($result3ge);
  
	if($result3ge[0]==$result3ge[2]){
		$flagjieguo="豹子";
	}elseif (($result3ge[1]-$result3ge[0]==1)&&($result3ge[2]-$result3ge[1]==1)) {
	 	$flagjieguo="顺子";
	}elseif (($result3ge[0]==$result3ge[1])||($result3ge[1]==$result3ge[2])) {
	 	$flagjieguo="对子";
	}elseif (($result3ge[1]-$result3ge[0]==1)||($result3ge[2]-$result3ge[1]==1)) {
	 	$flagjieguo="半顺";
	}
	
	if($mnmcjieguo==$flagjieguo){
		//下注正确，返回负数
		return $jine*(1-$peilv);			
	}else {
		//下注错误，返回正数
	 	return $jine;
	}
}
	   
function jieguo4gepk($re,$content,$peilv,$jine){
	$niuniu="";
	if(($re[0]+$re[1]+$re[2])%10==0){
		$niuniu=jisuanniuniu($re[3]+$re[4]);
	}else if(($re[0]+$re[2]+$re[3])%10==0){
		$niuniu=jisuanniuniu($re[1]+$re[4]);
	}else if(($re[0]+$re[3]+$re[4])%10==0){
		$niuniu=jisuanniuniu($re[1]+$re[2]);
	}else if(($re[1]+$re[2]+$re[3])%10==0){
		$niuniu=jisuanniuniu($re[0]+$re[4]);
	}else if(($re[1]+$re[2]+$re[4])%10==0){
		$niuniu=jisuanniuniu($re[0]+$re[3]);
	}else if(($re[2]+$re[3]+$re[4])%10==0){
		$niuniu=jisuanniuniu($re[0]+$re[1]);
	}else{
		$niuniu="无牛";
	}
	if($niuniu != "无牛"){
	$niu=explode('|',$niuniu);
	$niuhao=$niu[0];
	$niudx=$niu[1];
	$niuds=$niu[2];
	}
	if($content==$niuniu || $content==$niuhao || $content==$niudx || $content==$niuds){
		return $jine*(1-$peilv);	
	}else{
		return $jine;	
	}		
}	

function jisuanniuniu($he){
	$zh=$he%10;
	
	switch($zh){
		case '0':
		    return("牛牛|牛大|牛双");
			break;
		case '1':
		    return("牛一|牛小|牛单");
			break;
		case '2':
		    return("牛二|牛小|牛双");
			break;
		case '3':
		    return("牛三|牛小|牛单");
			break;
		case '4':
		    return("牛四|牛小|牛双");
			break;
		case '5':
		    return("牛五|牛小|牛单");
			break;
		case '6':
		    return("牛六|牛大|牛双");
			break;
		case '7':
		    return("牛七|牛大|牛单");
			break;
		case '8':
		    return("牛八|牛大|牛双");
			break;
		case '9':
		    return("牛九|牛大|牛单");
			break;
		default:
			return 0;
	}
}
//查询赔率
function peilv($mingci,$content,$roomid){
if(is_numeric($mingci) && is_numeric($content)){
  $ziduan = 'tema';
  $peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
}elseif(is_numeric($mingci) && is_string($content)){
  switch($content){
    case '大': $ziduan = 'da';
    break; 
    case '小': $ziduan = 'xiao';
    break;    
    case '单': $ziduan = 'dan';
    break;
    case '双': $ziduan = 'shuang';
    break;  
  }
$peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
  
}elseif($mingci == '总' && is_string($content)){
   switch($content){
    case '大': $ziduan = 'zongda';
    break; 
    case '小': $ziduan = 'zongxiao';
    break;    
    case '单': $ziduan = 'zongdan';
    break;
    case '双': $ziduan = 'zongshuang';
    break;  
    case '龙': $ziduan = '`long`';
    break;
    case '虎': $ziduan = '`hu`';
    break;
    case '和': $ziduan = '`he`';
    break;   
  }
$peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
}elseif($mingci == '前三' && is_string($content)){
switch($content){
    case '豹子': $ziduan = 'q_baozi';
    break; 
    case '顺子': $ziduan = 'q_shunzi';
    break;    
    case '对子': $ziduan = 'q_duizi';
    break;
    case '半顺': $ziduan = 'q_banshun';
    break;  
    case '杂六': $ziduan = 'q_zaliu';
    break; 
  }
$peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
}elseif($mingci == '中三' && is_string($content)){
switch($content){
    case '豹子': $ziduan = 'z_baozi';
    break; 
    case '顺子': $ziduan = 'z_shunzi';
    break;    
    case '对子': $ziduan = 'z_duizi';
    break;
    case '半顺': $ziduan = 'z_banshun';
    break;  
    case '杂六': $ziduan = 'z_zaliu';
    break; 
  }
$peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
}elseif($mingci == '后三' && is_string($content)){
switch($content){
    case '豹子': $ziduan = 'h_baozi';
    break; 
    case '顺子': $ziduan = 'h_shunzi';
    break;    
    case '对子': $ziduan = 'h_duizi';
    break;
    case '半顺': $ziduan = 'h_banshun';
    break;  
    case '杂六': $ziduan = 'h_zaliu';
    break; 
  }
$peilv = get_query_val('fn_lottery8',$ziduan,array('roomid'=>$roomid));
return $peilv;
}
}

	   
function opencan(){
$fixno = "10874048";
$daynum = floor((time() - strtotime("2018-12-24 00:00:00")) / 3600 / 24);
$lastno = ($daynum - 1) * 1152 + $fixno;
  
$tarr = ["00:00:30","00:01:45","00:03:00","00:04:15","00:05:30","00:06:45","00:08:00","00:09:15","00:10:30","00:11:45","00:13:00","00:14:15","00:15:30","00:16:45","00:18:00","00:19:15","00:20:30","00:21:45","00:23:00","00:24:15","00:25:30","00:26:45","00:28:00","00:29:15","00:30:30","00:31:45","00:33:00","00:34:15","00:35:30","00:36:45","00:38:00","00:39:15","00:40:30","00:41:45","00:43:00","00:44:15","00:45:30","00:46:45","00:48:00","00:49:15","00:50:30","00:51:45","00:53:00","00:54:15","00:55:30","00:56:45","00:58:00","00:59:15","01:00:30","01:01:45","01:03:00","01:04:15","01:05:30","01:06:45","01:08:00","01:09:15","01:10:30","01:11:45","01:13:00","01:14:15","01:15:30","01:16:45","01:18:00","01:19:15","01:20:30","01:21:45","01:23:00","01:24:15","01:25:30","01:26:45","01:28:00","01:29:15","01:30:30","01:31:45","01:33:00","01:34:15","01:35:30","01:36:45","01:38:00","01:39:15","01:40:30","01:41:45","01:43:00","01:44:15","01:45:30","01:46:45","01:48:00","01:49:15","01:50:30","01:51:45","01:53:00","01:54:15","01:55:30","01:56:45","01:58:00","01:59:15","02:00:30","02:01:45","02:03:00","02:04:15","02:05:30","02:06:45","02:08:00","02:09:15","02:10:30","02:11:45","02:13:00","02:14:15","02:15:30","02:16:45","02:18:00","02:19:15","02:20:30","02:21:45","02:23:00","02:24:15","02:25:30","02:26:45","02:28:00","02:29:15","02:30:30","02:31:45","02:33:00","02:34:15","02:35:30","02:36:45","02:38:00","02:39:15","02:40:30","02:41:45","02:43:00","02:44:15","02:45:30","02:46:45","02:48:00","02:49:15","02:50:30","02:51:45","02:53:00","02:54:15","02:55:30","02:56:45","02:58:00","02:59:15","03:00:30","03:01:45","03:03:00","03:04:15","03:05:30","03:06:45","03:08:00","03:09:15","03:10:30","03:11:45","03:13:00","03:14:15","03:15:30","03:16:45","03:18:00","03:19:15","03:20:30","03:21:45","03:23:00","03:24:15","03:25:30","03:26:45","03:28:00","03:29:15","03:30:30","03:31:45","03:33:00","03:34:15","03:35:30","03:36:45","03:38:00","03:39:15","03:40:30","03:41:45","03:43:00","03:44:15","03:45:30","03:46:45","03:48:00","03:49:15","03:50:30","03:51:45","03:53:00","03:54:15","03:55:30","03:56:45","03:58:00","03:59:15","04:00:30","04:01:45","04:03:00","04:04:15","04:05:30","04:06:45","04:08:00","04:09:15","04:10:30","04:11:45","04:13:00","04:14:15","04:15:30","04:16:45","04:18:00","04:19:15","04:20:30","04:21:45","04:23:00","04:24:15","04:25:30","04:26:45","04:28:00","04:29:15","04:30:30","04:31:45","04:33:00","04:34:15","04:35:30","04:36:45","04:38:00","04:39:15","04:40:30","04:41:45","04:43:00","04:44:15","04:45:30","04:46:45","04:48:00","04:49:15","04:50:30","04:51:45","04:53:00","04:54:15","04:55:30","04:56:45","04:58:00","04:59:15","05:00:30","05:01:45","05:03:00","05:04:15","05:05:30","05:06:45","05:08:00","05:09:15","05:10:30","05:11:45","05:13:00","05:14:15","05:15:30","05:16:45","05:18:00","05:19:15","05:20:30","05:21:45","05:23:00","05:24:15","05:25:30","05:26:45","05:28:00","05:29:15","05:30:30","05:31:45","05:33:00","05:34:15","05:35:30","05:36:45","05:38:00","05:39:15","05:40:30","05:41:45","05:43:00","05:44:15","05:45:30","05:46:45","05:48:00","05:49:15","05:50:30","05:51:45","05:53:00","05:54:15","05:55:30","05:56:45","05:58:00","05:59:15","06:00:30","06:01:45","06:03:00","06:04:15","06:05:30","06:06:45","06:08:00","06:09:15","06:10:30","06:11:45","06:13:00","06:14:15","06:15:30","06:16:45","06:18:00","06:19:15","06:20:30","06:21:45","06:23:00","06:24:15","06:25:30","06:26:45","06:28:00","06:29:15","06:30:30","06:31:45","06:33:00","06:34:15","06:35:30","06:36:45","06:38:00","06:39:15","06:40:30","06:41:45","06:43:00","06:44:15","06:45:30","06:46:45","06:48:00","06:49:15","06:50:30","06:51:45","06:53:00","06:54:15","06:55:30","06:56:45","06:58:00","06:59:15","07:00:30","07:01:45","07:03:00","07:04:15","07:05:30","07:06:45","07:08:00","07:09:15","07:10:30","07:11:45","07:13:00","07:14:15","07:15:30","07:16:45","07:18:00","07:19:15","07:20:30","07:21:45","07:23:00","07:24:15","07:25:30","07:26:45","07:28:00","07:29:15","07:30:30","07:31:45","07:33:00","07:34:15","07:35:30","07:36:45","07:38:00","07:39:15","07:40:30","07:41:45","07:43:00","07:44:15","07:45:30","07:46:45","07:48:00","07:49:15","07:50:30","07:51:45","07:53:00","07:54:15","07:55:30","07:56:45","07:58:00","07:59:15","08:00:30","08:01:45","08:03:00","08:04:15","08:05:30","08:06:45","08:08:00","08:09:15","08:10:30","08:11:45","08:13:00","08:14:15","08:15:30","08:16:45","08:18:00","08:19:15","08:20:30","08:21:45","08:23:00","08:24:15","08:25:30","08:26:45","08:28:00","08:29:15","08:30:30","08:31:45","08:33:00","08:34:15","08:35:30","08:36:45","08:38:00","08:39:15","08:40:30","08:41:45","08:43:00","08:44:15","08:45:30","08:46:45","08:48:00","08:49:15","08:50:30","08:51:45","08:53:00","08:54:15","08:55:30","08:56:45","08:58:00","08:59:15","09:00:30","09:01:45","09:03:00","09:04:15","09:05:30","09:06:45","09:08:00","09:09:15","09:10:30","09:11:45","09:13:00","09:14:15","09:15:30","09:16:45","09:18:00","09:19:15","09:20:30","09:21:45","09:23:00","09:24:15","09:25:30","09:26:45","09:28:00","09:29:15","09:30:30","09:31:45","09:33:00","09:34:15","09:35:30","09:36:45","09:38:00","09:39:15","09:40:30","09:41:45","09:43:00","09:44:15","09:45:30","09:46:45","09:48:00","09:49:15","09:50:30","09:51:45","09:53:00","09:54:15","09:55:30","09:56:45","09:58:00","09:59:15","10:00:30","10:01:45","10:03:00","10:04:15","10:05:30","10:06:45","10:08:00","10:09:15","10:10:30","10:11:45","10:13:00","10:14:15","10:15:30","10:16:45","10:18:00","10:19:15","10:20:30","10:21:45","10:23:00","10:24:15","10:25:30","10:26:45","10:28:00","10:29:15","10:30:30","10:31:45","10:33:00","10:34:15","10:35:30","10:36:45","10:38:00","10:39:15","10:40:30","10:41:45","10:43:00","10:44:15","10:45:30","10:46:45","10:48:00","10:49:15","10:50:30","10:51:45","10:53:00","10:54:15","10:55:30","10:56:45","10:58:00","10:59:15","11:00:30","11:01:45","11:03:00","11:04:15","11:05:30","11:06:45","11:08:00","11:09:15","11:10:30","11:11:45","11:13:00","11:14:15","11:15:30","11:16:45","11:18:00","11:19:15","11:20:30","11:21:45","11:23:00","11:24:15","11:25:30","11:26:45","11:28:00","11:29:15","11:30:30","11:31:45","11:33:00","11:34:15","11:35:30","11:36:45","11:38:00","11:39:15","11:40:30","11:41:45","11:43:00","11:44:15","11:45:30","11:46:45","11:48:00","11:49:15","11:50:30","11:51:45","11:53:00","11:54:15","11:55:30","11:56:45","11:58:00","11:59:15","12:00:30","12:01:45","12:03:00","12:04:15","12:05:30","12:06:45","12:08:00","12:09:15","12:10:30","12:11:45","12:13:00","12:14:15","12:15:30","12:16:45","12:18:00","12:19:15","12:20:30","12:21:45","12:23:00","12:24:15","12:25:30","12:26:45","12:28:00","12:29:15","12:30:30","12:31:45","12:33:00","12:34:15","12:35:30","12:36:45","12:38:00","12:39:15","12:40:30","12:41:45","12:43:00","12:44:15","12:45:30","12:46:45","12:48:00","12:49:15","12:50:30","12:51:45","12:53:00","12:54:15","12:55:30","12:56:45","12:58:00","12:59:15","13:00:30","13:01:45","13:03:00","13:04:15","13:05:30","13:06:45","13:08:00","13:09:15","13:10:30","13:11:45","13:13:00","13:14:15","13:15:30","13:16:45","13:18:00","13:19:15","13:20:30","13:21:45","13:23:00","13:24:15","13:25:30","13:26:45","13:28:00","13:29:15","13:30:30","13:31:45","13:33:00","13:34:15","13:35:30","13:36:45","13:38:00","13:39:15","13:40:30","13:41:45","13:43:00","13:44:15","13:45:30","13:46:45","13:48:00","13:49:15","13:50:30","13:51:45","13:53:00","13:54:15","13:55:30","13:56:45","13:58:00","13:59:15","14:00:30","14:01:45","14:03:00","14:04:15","14:05:30","14:06:45","14:08:00","14:09:15","14:10:30","14:11:45","14:13:00","14:14:15","14:15:30","14:16:45","14:18:00","14:19:15","14:20:30","14:21:45","14:23:00","14:24:15","14:25:30","14:26:45","14:28:00","14:29:15","14:30:30","14:31:45","14:33:00","14:34:15","14:35:30","14:36:45","14:38:00","14:39:15","14:40:30","14:41:45","14:43:00","14:44:15","14:45:30","14:46:45","14:48:00","14:49:15","14:50:30","14:51:45","14:53:00","14:54:15","14:55:30","14:56:45","14:58:00","14:59:15","15:00:30","15:01:45","15:03:00","15:04:15","15:05:30","15:06:45","15:08:00","15:09:15","15:10:30","15:11:45","15:13:00","15:14:15","15:15:30","15:16:45","15:18:00","15:19:15","15:20:30","15:21:45","15:23:00","15:24:15","15:25:30","15:26:45","15:28:00","15:29:15","15:30:30","15:31:45","15:33:00","15:34:15","15:35:30","15:36:45","15:38:00","15:39:15","15:40:30","15:41:45","15:43:00","15:44:15","15:45:30","15:46:45","15:48:00","15:49:15","15:50:30","15:51:45","15:53:00","15:54:15","15:55:30","15:56:45","15:58:00","15:59:15","16:00:30","16:01:45","16:03:00","16:04:15","16:05:30","16:06:45","16:08:00","16:09:15","16:10:30","16:11:45","16:13:00","16:14:15","16:15:30","16:16:45","16:18:00","16:19:15","16:20:30","16:21:45","16:23:00","16:24:15","16:25:30","16:26:45","16:28:00","16:29:15","16:30:30","16:31:45","16:33:00","16:34:15","16:35:30","16:36:45","16:38:00","16:39:15","16:40:30","16:41:45","16:43:00","16:44:15","16:45:30","16:46:45","16:48:00","16:49:15","16:50:30","16:51:45","16:53:00","16:54:15","16:55:30","16:56:45","16:58:00","16:59:15","17:00:30","17:01:45","17:03:00","17:04:15","17:05:30","17:06:45","17:08:00","17:09:15","17:10:30","17:11:45","17:13:00","17:14:15","17:15:30","17:16:45","17:18:00","17:19:15","17:20:30","17:21:45","17:23:00","17:24:15","17:25:30","17:26:45","17:28:00","17:29:15","17:30:30","17:31:45","17:33:00","17:34:15","17:35:30","17:36:45","17:38:00","17:39:15","17:40:30","17:41:45","17:43:00","17:44:15","17:45:30","17:46:45","17:48:00","17:49:15","17:50:30","17:51:45","17:53:00","17:54:15","17:55:30","17:56:45","17:58:00","17:59:15","18:00:30","18:01:45","18:03:00","18:04:15","18:05:30","18:06:45","18:08:00","18:09:15","18:10:30","18:11:45","18:13:00","18:14:15","18:15:30","18:16:45","18:18:00","18:19:15","18:20:30","18:21:45","18:23:00","18:24:15","18:25:30","18:26:45","18:28:00","18:29:15","18:30:30","18:31:45","18:33:00","18:34:15","18:35:30","18:36:45","18:38:00","18:39:15","18:40:30","18:41:45","18:43:00","18:44:15","18:45:30","18:46:45","18:48:00","18:49:15","18:50:30","18:51:45","18:53:00","18:54:15","18:55:30","18:56:45","18:58:00","18:59:15","19:00:30","19:01:45","19:03:00","19:04:15","19:05:30","19:06:45","19:08:00","19:09:15","19:10:30","19:11:45","19:13:00","19:14:15","19:15:30","19:16:45","19:18:00","19:19:15","19:20:30","19:21:45","19:23:00","19:24:15","19:25:30","19:26:45","19:28:00","19:29:15","19:30:30","19:31:45","19:33:00","19:34:15","19:35:30","19:36:45","19:38:00","19:39:15","19:40:30","19:41:45","19:43:00","19:44:15","19:45:30","19:46:45","19:48:00","19:49:15","19:50:30","19:51:45","19:53:00","19:54:15","19:55:30","19:56:45","19:58:00","19:59:15","20:00:30","20:01:45","20:03:00","20:04:15","20:05:30","20:06:45","20:08:00","20:09:15","20:10:30","20:11:45","20:13:00","20:14:15","20:15:30","20:16:45","20:18:00","20:19:15","20:20:30","20:21:45","20:23:00","20:24:15","20:25:30","20:26:45","20:28:00","20:29:15","20:30:30","20:31:45","20:33:00","20:34:15","20:35:30","20:36:45","20:38:00","20:39:15","20:40:30","20:41:45","20:43:00","20:44:15","20:45:30","20:46:45","20:48:00","20:49:15","20:50:30","20:51:45","20:53:00","20:54:15","20:55:30","20:56:45","20:58:00","20:59:15","21:00:30","21:01:45","21:03:00","21:04:15","21:05:30","21:06:45","21:08:00","21:09:15","21:10:30","21:11:45","21:13:00","21:14:15","21:15:30","21:16:45","21:18:00","21:19:15","21:20:30","21:21:45","21:23:00","21:24:15","21:25:30","21:26:45","21:28:00","21:29:15","21:30:30","21:31:45","21:33:00","21:34:15","21:35:30","21:36:45","21:38:00","21:39:15","21:40:30","21:41:45","21:43:00","21:44:15","21:45:30","21:46:45","21:48:00","21:49:15","21:50:30","21:51:45","21:53:00","21:54:15","21:55:30","21:56:45","21:58:00","21:59:15","22:00:30","22:01:45","22:03:00","22:04:15","22:05:30","22:06:45","22:08:00","22:09:15","22:10:30","22:11:45","22:13:00","22:14:15","22:15:30","22:16:45","22:18:00","22:19:15","22:20:30","22:21:45","22:23:00","22:24:15","22:25:30","22:26:45","22:28:00","22:29:15","22:30:30","22:31:45","22:33:00","22:34:15","22:35:30","22:36:45","22:38:00","22:39:15","22:40:30","22:41:45","22:43:00","22:44:15","22:45:30","22:46:45","22:48:00","22:49:15","22:50:30","22:51:45","22:53:00","22:54:15","22:55:30","22:56:45","22:58:00","22:59:15","23:00:30","23:01:45","23:03:00","23:04:15","23:05:30","23:06:45","23:08:00","23:09:15","23:10:30","23:11:45","23:13:00","23:14:15","23:15:30","23:16:45","23:18:00","23:19:15","23:20:30","23:21:45","23:23:00","23:24:15","23:25:30","23:26:45","23:28:00","23:29:15","23:30:30","23:31:45","23:33:00","23:34:15","23:35:30","23:36:45","23:38:00","23:39:15","23:40:30","23:41:45","23:43:00","23:44:15","23:45:30","23:46:45","23:48:00","23:49:15","23:50:30","23:51:45","23:53:00","23:54:15","23:55:30","23:56:45","23:58:00","23:59:15"];
$c = 0;
$t = '';

    for ($i = 0; $i < 1152; $i++) {
        if ($tarr[$i] > date('H:i:s')) {
            $c = $i + 1;
            $t = date('Y-m-d ').$tarr[$i];
            break;
        }
    }

$term = ($lastno + $c) - 1;
$time = date('Y-m-d H:i:s', strtotime($t) - 75);
$next_term = ($lastno + $c);
$next_time = $t;
 
return ($term.'|'.$time.'|'.$next_term.'|'.$next_time);

}	 
	   
	
	   
  
?>