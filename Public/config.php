<?php
session_start();
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
date_default_timezone_set("Asia/Shanghai");

define('SYSTEM_ROOT', dirname(__FILE__) . '/');
define('ROOT', dirname(SYSTEM_ROOT) . '/');

$load = 5;
$_SESSION['agent_user'] = $_SESSION['agent_user'] ?? '';
$_SESSION['agent_pass'] = $_SESSION['agent_pass'] ?? '';
$_SESSION['agent_room'] = $_SESSION['agent_room'] ?? '';
$_SESSION['agent_user'] = $_SESSION['agent_user'] ?? '';
$_SESSION['userid'] = $_SESSION['userid'] ?? '';

$_COOKIE['agentuser'] = $_COOKIE['agentuser'] ?? '';
$_COOKIE['agentpass'] = $_COOKIE['agentpass'] ?? '';

include_once(SYSTEM_ROOT . "functions.php");
include_once("sql.php");
include_once("PdoHelper.php");
include_once(ROOT . "config.php");

register_shutdown_function("shutdownLog");
set_error_handler("myErrorHandlerLog", E_ALL);

header("Content-type:text/html;charset=utf-8");

$console = "九都";
$dbconn = db_connect(
    $dbconfig['host'], 
    $dbconfig['user'], 
    $dbconfig['pwd'], 
    $dbconfig['dbname'], 
    $dbconfig['port']
);

$dbpdo = new PdoHelper([
    'host' => $dbconfig['host'],
    'dbname' => $dbconfig['dbname'],
    'port' => $dbconfig['port'],
    'user' => $dbconfig['user'],
    'pwd' => $dbconfig['pwd'],
]);

$wx['ID'] = 'wxf46833403beb331a';
$wx['key'] = 'fcebe4d47534957f90a513149533c0ca';
$agent = $_GET['agent'] ?? 0;
$g = $_GET['g'] ?? 0;
$room = $_GET['room'] ?? 0;
$oauth = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" . $wx["ID"] . "&redirect_uri=" . urlencode("http://" . $_SERVER["HTTP_HOST"] . "/qr.php?g=" . $g . "&room=" . $room . "&agent=" . $agent) . "&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";

function room_isOK($roomid)
{
    $status = get_query_val('fn_room', 'id', array('roomid' => $roomid));
    if ($status == "") {
        return false;
    }
    return true;
}
function wx_gettoken($Appid, $Appkey, $code)
{
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

function wx_getinfo($token, $openid)
{
    $url = "https://api.weixin.qq.com/sns/userinfo?access_token=" . $token . "&openid=" . $openid . "&lang=zh_CN";
    $html = file_get_contents($url);
    $json = json_decode($html, 1);
    $nickname = $json['nickname'];
    $headhtml = $json['headimgurl'];
    return array("nickname" => $nickname, 'headimg' => $headhtml);
}

function U_create($userid, $username, $headimg, $agent = "null")
{
    if ($agent == "") {
        $agent = 'null';
    }
    insert_query("fn_user", array("userid" => $userid, 'username' => $username, 'headimg' => $headimg, 'money' => '0', 'roomid' => $_SESSION['roomid'], 'statustime' => time(), 'agent' => $agent, 'isagent' => 'false', 'jia' => 'false'));
    return true;
}
function U_isOK($userid, $headimg)
{
    $status = get_query_val('fn_user', 'id', array('userid' => $userid, 'roomid' => $_SESSION['roomid']));
    if ($status == "") {
        return false;
    }
    update_query("fn_user", array("headimg" => $headimg), array('id' => $status));
    return true;
}
