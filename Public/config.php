<?php
session_start();
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING);
date_default_timezone_set("Asia/Shanghai");

define('PUBLIC_DIR', dirname(__FILE__) . '/');
define('ROOT', dirname(PUBLIC_DIR) . '/');

$load = 5;
$_SESSION['agent_user'] = $_SESSION['agent_user'] ?? '';
$_SESSION['agent_pass'] = $_SESSION['agent_pass'] ?? '';
$_SESSION['agent_room'] = $_SESSION['agent_room'] ?? '';
$_SESSION['agent_user'] = $_SESSION['agent_user'] ?? '';
$_SESSION['userid'] = $_SESSION['userid'] ?? '';
$_SESSION['roomid'] = $_SESSION['roomid'] ?? '';

$_COOKIE['agentuser'] = $_COOKIE['agentuser'] ?? '';
$_COOKIE['agentpass'] = $_COOKIE['agentpass'] ?? '';

include_once(ROOT . "config.php");
include_once(PUBLIC_DIR . "functions.php");

register_shutdown_function("shutdownLog");
set_error_handler("myErrorHandlerLog", E_ALL);

include_once("sql.php");
include_once("db.class.php");
include_once("PdoHelper.php");

header("Content-type:text/html;charset=utf-8");

$console = "九都";
if (!isset($GLOBALS['D']) || !$GLOBALS['D']) {
    db_connect(
        $dbconfig['host'],
        $dbconfig['user'],
        $dbconfig['pwd'],
        $dbconfig['dbname'],
        $dbconfig['port']
    );
}

if (!isset($dbpdo)) {
    $dbpdo = new PdoHelper([
        'host' => $dbconfig['host'],
        'dbname' => $dbconfig['dbname'],
        'port' => $dbconfig['port'],
        'user' => $dbconfig['user'],
        'pwd' => $dbconfig['pwd'],
    ]);
}

if (!isset($mydb)) {
    $mydb = new db(array('DB_HOST' => $dbconfig['host'], 'DB_USER' => $dbconfig['user'], 'DB_PWD' => $dbconfig['pwd'], 'DB_NAME' => $dbconfig['dbname']));
}

$wx['ID'] = 'wxf46833403beb331a';
$wx['key'] = 'fcebe4d47534957f90a513149533c0ca';

$agent = $_GET['agent'] ?? 0;
$g = $_GET['g'] ?? 0;
$room = $_GET['room'] ?? 0;
$oauth = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" . $wx["ID"] . "&redirect_uri=" . urlencode("http://" . $_SERVER["HTTP_HOST"] . "/qr.php?g=" . $g . "&room=" . $room . "&agent=" . $agent) . "&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";
