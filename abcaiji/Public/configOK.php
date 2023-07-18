<?php
session_start();
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
date_default_timezone_set("Asia/Shanghai");
header("Content-type:text/html;charset=utf-8");
$load = 5;
include_once("sql.php");
$console = "九都";
$db['host'] = "localhost";
$db['user'] = "feiniao";
$db['pass'] = "feiniao@";
$db['name'] = "feiniao";
$dbconn = db_connect($db['host'], $db['user'], $db['pass'], $db['name']);
$wx['ID'] = 'wx1e11b59af76cad3e';
$wx['key'] = '90f6d2a8b9cec2ba42e15073fef077d3';
$oauth = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$wx["ID"]."&redirect_uri=".urlencode("http://".$_SERVER["HTTP_HOST"]."/qr.php?g=".$_GET['g']."&room=".$_GET['room']."&agent=".$_GET['agent'])."&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";  //微信公众号授权接口请咨询QQ 1878336950
function room_isOK($roomid){
    $status = get_query_val('fn_room', 'id', array('roomid' => $roomid));
    if($status == ""){
        return false;
    }
    return true;
}
function wx_gettoken($Appid, $Appkey, $code){
    $url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" . $Appid . "&secret=" . $Appkey . "&code=" . $code . "&grant_type=authorization_code";
    $html = file_get_contents($url);
    $json = json_decode($html, 1);
    $access_token = $json['access_token'];
    $openid = $json['openid'];
    return array("token" => $access_token, 'openid' => $openid);
}
//2017-10-21 获取全局access token 
// function wx_getaccesstoken($Appid, $Appkey){
    // $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=". $Appid ."&secret=". $Appkey;
    // $html = file_get_contents($url);
    // $json = json_decode($html, 1);
    // $access_token = $json['access_token'];
    // $expires = $json['expires_in'];
    // return array("access_token" => $access_token, 'expires_in' => $expires);
// }
//用全局access token 和 openid 获取用户详情
// function wx_getinfo2($token, $openid){
    // $url = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=". $token ."&openid=". $openid;
    // $html = file_get_contents($url);
    // $json = json_decode($html, 1);
    // $nickname = $json['nickname'];
    // $headhtml = $json['headimgurl'];
    // return array("nickname" => $nickname, 'headimg' => $headhtml);
// }

function wx_getinfo($token, $openid){
    $url = "https://api.weixin.qq.com/sns/userinfo?access_token=" . $token . "&openid=" . $openid."&lang=zh_CN";
    $html = file_get_contents($url);
    $json = json_decode($html, 1);
    $nickname = $json['nickname'];
    $headhtml = $json['headimgurl'];
    return array("nickname" => $nickname, 'headimg' => $headhtml);
}
function U_create($userid, $username, $headimg, $agent = "null"){
    if($agent == ""){
        $agent = 'null';
    }
    //insert_query("fn_user", array("userid" => $userid, 'username' => $username, 'headimg' => $_SESSION['headimg'], 'money' => '0', 'roomid' => $_SESSION['roomid'], 'statustime' => time(), 'agent' => $agent, 'isagent' => 'false', 'jia' => 'false'));
	insert_query("fn_user", array("userid" => $userid, 'username' => $username, 'headimg' => $headimg, 'money' => '0', 'roomid' => $_SESSION['roomid'], 'statustime' => time(), 'agent' => $agent, 'isagent' => 'false', 'jia' => 'false'));
    return true;
}
function U_isOK($userid, $headimg){
    $status = get_query_val('fn_user', 'id', array('userid' => $userid, 'roomid' => $_SESSION['roomid']));
    if($status == ""){
        return false;
    }
    update_query("fn_user", array("headimg" => $headimg), array('id' => $status));
    return true;
}


?>
