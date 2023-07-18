<?php
//2017-10-20 以post来的数据
header("Content-type:text/html;charset=utf-8");
$res=include_once("Public/config.php");
if($_POST['tuiguang'] == 'tuiguang'){
 require 'Templates/New/tuiguang.php';
  exit();
}
if((get_query_val('fn_user','hmd',array('userid'=>$_SESSION['userid'],'roomid'=>$_SESSION['roomid']))) == '1'){
header('Location: https://h5.ele.me/msite/');
exit();
}
if(stristr($_SERVER['HTTP_USER_AGENT'], 'Android')){
  
	if($_POST['verify']=="n2oqcvVPpk1M"){
	}elseif($_COOKIE['logintime']=='temp'){
	}else{
		require "Templates/error.php";
		exit;
	}
}else{
	if( $_POST['verify']!="n2oqcvVPpk1M" ){
		header('Location: /web_login.php');
		exit();
	}
}
if(is_weixin1()==true){
$room = $_POST['room'];
$agent = $_POST['agent'];
$g = $_POST['g'];

if($room==''){
  $room=$_SESSION['roomid'];
}


if(room_isOK($room)){
    $_SESSION['roomid'] = $room;
    $sitename = get_query_val('fn_room', 'roomname', array('roomid' => $room));
	
	setcookie('logintime', 'temp', time() + 1800);
}else{
    $_SESSION['error_room'] = $room;
	//echo '555';exit;
    require "Templates/error.php";
    exit();
}
$roomtime = get_query_val('fn_room', 'roomtime', array('roomid' => $room));
if(strtotime($roomtime) - time() < 0){
    echo "<center><strong style='font-size:80px;'>您所访问的房间ID:{$room} <br>已于 <font color=red>$roomtime</font> 到期！<br>请提醒管理员进行续费！</strong></center>";
    exit;
}
if($_POST['agent'] != ""){
    setcookie('agent', $_POST['agent'], time() + 36000);
    $_COOKIE['agent'] = $_POST['agent'];
}
if($_SESSION['userid'] == ""){
    if(!empty($_POST['code'])){
        $token = wx_gettoken($wx['ID'], $wx['key'], $_POST['code']);
        $userinfo = wx_getinfo($token['token'], $token['openid']);
        if($token['openid'] == ""){
			header('Location:' . $oauth );
        }elseif(U_isOK($token['openid'], $userinfo['headimg'])){
            $_SESSION['userid'] = $token['openid'];
            $_SESSION['username'] = $userinfo['nickname'];
            $_SESSION['headimg'] = $userinfo['headimg'];
        }else{
            U_create($token['openid'], $userinfo['nickname'], $userinfo['headimg'], $_COOKIE['agent']);
            $_SESSION['userid'] = $token['openid'];
            $_SESSION['username'] = $userinfo['nickname'];
            $_SESSION['headimg'] = $userinfo['headimg'];
            $_SESSION['agent'] =  $_COOKIE['agent'];
        }
    }else{
		header("Location:" . $oauth );
    }
}elseif(!U_isOK($_SESSION['userid'], $_SESSION['headimg'])){
    U_create($_SESSION['userid'], $_SESSION['username'], $_SESSION['headimg'], $_COOKIE['agent']);
    $_SESSION['userid'] = $token['openid'];
    $_SESSION['username'] = $userinfo['nickname'];
    $_SESSION['headimg'] = $userinfo['headimg'];
    $_SESSION['agent'] =  $_COOKIE['agent'];
}
$templates = get_query_val('fn_setting', 'setting_templates', array('roomid' => $_SESSION['roomid']));
if($templates == 'old'){
  $ip = get_query_vals('fn_userlog','*',array('ip'=>ip(),'time'=>date('Y-m-d'),'userid'=>$_SESSION['userid']));
  if(empty($ip)){
  insert_query('fn_userlog',array('ip'=>ip(),'time'=>date('Y-m-d',time()), 'addtime'=>date('Y-m-d H:i:s',time()),'userid'=> $_SESSION['userid'],'roomid'=> $_SESSION['roomid']));
  }
    require 'Templates/Old/index.php';
}elseif($templates == 'new'){
    require 'Templates/New/index.php';
} 
}else{
$room = $_POST['room'];
$agent = $_POST['agent'];
$g = $_POST['g'];
 if($room==''){
  $room=$_SESSION['roomid'];
 }

if(room_isOK($room)){
    $_SESSION['roomid'] = $room;
    $sitename = get_query_val('fn_room', 'roomname', array('roomid' => $room));
	
	setcookie('logintime', 'temp', time() + 1800);
}else{
    $_SESSION['error_room'] = $room;
    require "Templates/error.php";
    exit();
}
$roomtime = get_query_val('fn_room', 'roomtime', array('roomid' => $room));
if(strtotime($roomtime) - time() < 0){
    echo "<center><strong style='font-size:80px;'>您所访问的房间ID:{$room} <br>已于 <font color=red>$roomtime</font> 到期！<br>请提醒管理员进行续费！</strong></center>";
    exit;
}
if($_POST['agent'] != ""){
    setcookie('agent', $_POST['agent'], time() + 36000);
    $_COOKIE['agent'] = $_POST['agent'];
}
if(empty($g)){
	header('Location: home.php?room='.$room);
}

$templates = get_query_val('fn_setting', 'setting_templates', array('roomid' => $_SESSION['roomid']));
$templates= 'old';
if($templates == 'old'){
  $ip = get_query_vals('fn_userlog','*',array('ip'=>ip(),'time'=>date('Y-m-d'),'userid'=>$_SESSION['userid']));
  if(empty($ip)){
  insert_query('fn_userlog',array('ip'=>ip(),'time'=>date('Y-m-d',time()), 'addtime'=>date('Y-m-d H:i:s',time()),'userid'=> $_SESSION['userid'],'roomid'=> $_SESSION['roomid']));
  }
    require 'Templates/Old/index.php';
}elseif($templates == 'new'){
    require 'Templates/New/index.php';
}
}
 function is_weixin1(){
  if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false ) {
    return true;
    }  
    return false;
    } 

 function ip() {
    //strcasecmp 比较两个字符，不区分大小写。返回0，>0，<0。
    if(getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
        $ip = getenv('HTTP_CLIENT_IP');
    } elseif(getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
        $ip = getenv('HTTP_X_FORWARDED_FOR');
    } elseif(getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
        $ip = getenv('REMOTE_ADDR');
    } elseif(isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    $res =  preg_match ( '/[\d\.]{7,15}/', $ip, $matches ) ? $matches [0] : '';
    return $res;
    //dump(phpinfo());//所有PHP配置信息
}
function city($ip){
$json=file_get_contents('http://ip.taobao.com/service/getIpInfo.php?ip='.$ip);
$arr=json_decode($json);
$gj = $arr->data->country;    //国家
$qy = $arr->data->area;    //区域
$sf = $arr->data->region;    //省份
$city = $arr->data->city;    //城市
$yys = $arr->data->isp;    //运营商
  if($gj == ''){
  $gj = '--';
  }
  if($qy == ''){
  $qy = '--';
  }
  if($sf == ''){
  $sf = '--';
  }
  if($city == ''){
  $city = '--';
  }
  if($yys == ''){
  $yys = '--';
  }
 return $gj.'|'.$sf.'|'.$qy.'|'.$city.'|'.$yys;
}

?>