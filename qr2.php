<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<?php
include_once("./Public/config.php");
$fenurl = get_query_val('fn_system', 'content1', array('id' => '3'));

if (empty($_GET['room'])) {
	$_GET['room'] = $_SESSION['roomid'];
}
$room = $_GET['room'] ?? '';
if (!$room) $room = 10029;
$agent = $_GET['agent'] ?? '';

$g = $_GET['g'] ?? ''; //pk10,xyft,cqssc,xy28,jnd28,jsmt,jssc,jsssc
if (is_weixin() == true) {
	$wx['ID'] = 'wxf46833403beb331a';
	$time = date('Y-m-d H:i:s', time());

	$oauth = "http://open.weixin.qq.com/connect/oauth2/authorize?appid=" . $wx["ID"] . "&redirect_uri=" . urlencode("http://" . $fenurl . "/qr2.php?g=" . $_GET['g'] . "&room=" . $_GET['room'] . "&agent=" . $_GET['agent']) . "&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";

	if ($_GET['code'] == '') {
		Header("Location: $oauth");
	}
	$code = $_GET['code'];

	echo "<form style='display:none;' id='form1' name='form1' method='post' action='http://" . $fenurl . "/index2.php'>
             
              <input name='verify' type='text' value='n2oqcvVPpk1M' />
			  <input name='room' type='text' value='" . $room . "' />
			  <input name='agent' type='text' value='" . $agent . "' />
			  <input name='g' type='text' value='" . $g . "' />
			  <input name='code' type='text' value='" . $code . "' />
			  <input name='time' type='text' value='" . $time . "' />
            </form><script type='text/javascript'>function load_submit(){document.form1.submit()}load_submit();</script>";
} else {

	$time = date('Y-m-d H:i:s', time());
	echo "<form style='display:none;' id='form1' name='form1' method='post' action='http://" . $fenurl . "/index2.php'>
              <input name='verify' type='text' value='n2oqcvVPpk1M' />
			  <input name='room' type='text' value='" . $room . "' />
			  <input name='agent' type='text' value='" . $agent . "' />
			  <input name='g' type='text' value='" . $g . "' />
			  <input name='time' type='text' value='" . $time . "' />
            </form><script type='text/javascript'>function load_submit(){document.form1.submit()}load_submit();</script>";
}


?>