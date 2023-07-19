<?php

session_start();
error_reporting(E_ALL);
date_default_timezone_set("Asia/Shanghai");

define('SYSTEM_ROOT', dirname(__FILE__) . '/');
define('ROOT', dirname(SYSTEM_ROOT) . '/');
define("UPLOADPIC", "http://cdn.ononn.com");

$load = 5;

include_once(SYSTEM_ROOT . "functions.php");
include_once(ROOT . "config.php");
include_once("sql.php");

include_once("db.class.php");

// 捕获错误
register_shutdown_function("shutdownLog");
set_error_handler("myErrorHandlerLog", E_ALL);

header("Content-type:text/html;charset=utf-8");

$console = "nengli.co";
$uploadurl = "http://cdn.ononn.com";

$dbconn = db_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['pwd'], $dbconfig['dbname'], $dbconfig['port']);

$mydb = new db(array('DB_HOST' => $dbconfig['host'], 'DB_USER' => $dbconfig['user'], 'DB_PWD' => $dbconfig['pwd'], 'DB_NAME' => $dbconfig['dbname']));

$wx['ID'] = 'wxf46833403beb331a';
$wx['key'] = 'fcebe4d47534957f90a513149533c0ca';

$agent = $_GET['agent'] ?? 0;
$g = $_GET['g'] ?? 0;
$room = $_GET['room'] ?? 0;
$redirect_uri = urlencode("http://{$_SERVER["HTTP_HOST"]}/wx_login.php?agent={$agent}&g={$g}&room={$room}");
$oauth = "https://open.weixin.qq.com/connect/oauth2/authorize?appid={$wx["ID"]}&redirect_uri={$redirect_uri}&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";
$info_singset = $mydb->table('fn_sign_set')->field('*')->where(array('id' => 1))->find(); //
$_SESSION['singset'] = $info_singset;

