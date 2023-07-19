<?php

function shutdownLog()
{
	if (!is_null($e = error_get_last())) {
		addLog(sprintf("[shutdownLog] [%d] %s in %s:%d", $e['type'], $e['message'], $e['file'], $e['line']), "ERROR");
	}
}

function myErrorHandlerLog($errno, $errstr, $errfile, $errline)
{
	addLog(sprintf("[myErrorHandlerLog] [%d] %s in %s:%d", $errno, $errstr, $errfile, $errline), "ERROR");
	return true;
}

function addLog($msg, $level = "INFO")
{
	$dir = ROOT . "logs";
	if (!file_exists($dir)) {
		mkdir($dir, 0777);
	}

	$filename = $dir . "/" . date("Y-m-d") . ".log";
	if (!file_exists($filename)) {
		touch($filename);
		chmod($filename, 0777);
	}
	file_put_contents($filename, date("Y-m-d H:i:s") . " [{$level}] " . $msg . PHP_EOL, FILE_APPEND);
}

function room_isOK($roomid)
{
	$status = get_query_val('fn_room', 'id', array('roomid' => $roomid));
	if ($status == "") {
		return false;
	}
	return true;
}

function vpost($url, $data = array())
{ // 模拟提交数据函数
	$curl = curl_init();
	// 启动一个CURL会话
	curl_setopt($curl, CURLOPT_URL, $url);
	// 要访问的地址
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
	// 对认证证书来源的检查
	curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
	// 从证书中检查SSL加密算法是否存在
	curl_setopt($curl, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	// 模拟用户使用的浏览器
	curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
	// 使用自动跳转
	curl_setopt($curl, CURLOPT_AUTOREFERER, 1);
	// 自动设置Referer
	curl_setopt($curl, CURLOPT_POST, 1);
	// 发送一个常规的Post请求
	@curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
	// Post提交的数据包
	curl_setopt($curl, CURLOPT_TIMEOUT, 30);
	// 设置超时限制防止死循环
	curl_setopt($curl, CURLOPT_HEADER, 0);
	// 显示返回的Header区域内容
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	// 获取的信息以文件流的形式返回
	$tmpInfo = curl_exec($curl);
	// 执行操作
	if (curl_errno($curl)) {
		echo 'Errno' . curl_error($curl);
		//捕抓异常
	}
	curl_close($curl);
	// 关闭CURL会话
	return $tmpInfo;
	// 返回数据
}

function wx_gettoken($Appid, $Appkey, $code)
{
	$url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" . $Appid . "&secret=" . $Appkey . "&code=" . $code . "&grant_type=authorization_code";
	$html = file_get_contents($url);
	// $html = vpost($url);
	$json = json_decode($html, 1);
	$access_token = $json['access_token'];
	$openid = $json['openid'];
	return array("token" => $access_token, 'openid' => $openid);
}

//网页登录处理
function web_login()
{
	global $dbpdo;
	$loginuser = $_POST['loginuser'];
	$loginpass = md5($_POST['loginpass']);
	$r = $dbpdo->find('fn_user', '*', ['loginuser' => $loginuser, 'loginpass' => $loginpass]);
	if ($r) {
		return auto_login($r['id']);
	} else {
		return false;
	}
}

//登录过程
function auto_login($id)
{
	global $dbpdo;
	$_r = $dbpdo->find('fn_user', '*', ['id' => $id]);
	$_SESSION['userid'] = $_r['userid'];
	$_SESSION['username'] = $_r['username'];
	$_SESSION['headimg'] = $_r['headimg'];
	$_SESSION['roomid'] = $_r['roomid'];

	return true;
}

//检查是否登录
function check_login()
{
	if (empty($_SESSION['userid'])) {
		if (is_weixin()) {
			header('Location: wx_login.php');
		} else {
			header('Location: web_login.php');
		}
	}
}

function get_user_money()
{
	global $mydb;
	$r = $mydb->table('fn_user')->field('money')->where(array('userid' => $_SESSION['userid']))->find();
	$time = array();
	$time[0] = date('Y-m-d') . " 00:00:00";
	$time[1] = date('Y-m-d') . " 23:59:59";
	$map['roomid'] = $_SESSION['roomid'];
	$map['userid'] = $_SESSION['userid'];

	$map['type'] = '上分';
	$map['time'] = array('between', array('' . $time[0] . '', '' . $time[1] . ''));
	$sf = $mydb->table('fn_upmark')->field('sum(money)')->where($map)->find();
	$sf = (int) $sf['sum(money)'];

	$map['type'] = '下分';
	$xf = $mydb->table('fn_upmark')->field('sum(money)')->where($map)->find();
	$xf = (int) $xf['sum(money)'];

	unset($map['type']);
	unset($map['time']);
	$map['addtime'] = array('between', array('' . $time[0] . '', '' . $time[1] . ''));
	$map['_string'] = 'status > 0';
	$allz = $mydb->table('fn_order')->field('sum(status)')->where($map)->find();
	$allz = $allz['sum(status)'];

	$sscz = $mydb->table('fn_sscorder')->field('sum(status)')->where($map)->find();
	$sscz = $sscz['sum(status)'];
	$jssscz = $mydb->table('fn_jssscorder')->field('sum(status)')->where($map)->find();
	$jssscz = $jssscz['sum(status)'];
	$jsscz = $mydb->table('fn_jsscorder')->field('sum(status)')->where($map)->find();
	$jsscz = $jsscz['sum(status)'];
	$mtz = $mydb->table('fn_mtorder')->field('sum(status)')->where($map)->find();
	$mtz = $mtz['sum(status)'];
	$pcz = $mydb->table('fn_pcorder')->field('sum(status)')->where($map)->find();
	$pcz = $pcz['sum(status)'];
	$bjlz = $mydb->table('fn_bjlorder')->field('sum(status)')->where($map)->find();
	$bjlz = $bjlz['sum(status)'];

	unset($map['status']);
	$map['_string'] = 'status > 0 or status < 0';
	$allm = $mydb->table('fn_order')->field('sum(money)')->where($map)->find();
	$allm = $allm['sum(money)'];

	$sscm = $mydb->table('fn_sscorder')->field('sum(money)')->where($map)->find();
	$sscm = $sscm['sum(status)'];
	$jssscm = $mydb->table('fn_jssscorder')->field('sum(money)')->where($map)->find();
	$jssscm = $jssscm['sum(status)'];
	$jsscm = $mydb->table('fn_jsscorder')->field('sum(money)')->where($map)->find();
	$jsscm = $jsscm['sum(status)'];
	$mtm = $mydb->table('fn_mtorder')->field('sum(money)')->where($map)->find();
	$mtm = $mtm['sum(status)'];
	$pcm = $mydb->table('fn_pcorder')->field('sum(money)')->where($map)->find();
	$pcm = $pcm['sum(status)'];
	$bjlm = $mydb->table('fn_bjlorder')->field('sum(money)')->where($map)->find();
	$bjlm = $bjlm['sum(money)'];

	$sscyk = $sscz - $sscm;
	$jssscyk = $jssscz - $jssscm;
	$jsscyk = $jsscz - $jsscm;
	$mtyk = $mtz - $mtm;
	$pcyk = $pcz - $pcm;
	$bjlyk = $bjlz - $bjlm;
	$yk = $allz - $allm;
	$yk += $pcyk + $mtyk + $sscyk + $jsscyk + $jssscyk + $bjlyk;
	$allm += $pcm + $mtm + $sscm + $jsscm + $jssscm + $bjlm;
	$yk = round($yk, 2);
	$r['yk'] = $yk;
	$r['liu'] = $allm;

	return $r;
}

function wx_getinfo($token, $openid)
{
	$url = "https://api.weixin.qq.com/sns/userinfo?access_token=" . $token . "&openid=" . $openid . "&lang=zh_CN";
	$html = file_get_contents($url);
	// $html = vpost($url);
	$json = json_decode($html, 1);
	$nickname = $json['nickname'];
	$headhtml = $json['headimgurl'];
	return array("nickname" => $nickname, 'headimg' => $headhtml);
}

function U_create($userid, $username, $headimg, $agent = "null", $level = 1)
{
	if ($agent == "") {
		$agent = 'null';
	}
	$username = str_replace('"', "", $username);
	insert_query("fn_user", array("userid" => $userid, 'username' => $username, 'headimg' => $headimg, 'money' => '0', 'roomid' => $_SESSION['roomid'], 'statustime' => time(), 'agent' => $agent, 'level' => $level, 'isagent' => 'false', 'jia' => 'false'));
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

function is_weixin()
{
	if (strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false) {
		return true;
	}
	return false;
}

function ip()
{
	//strcasecmp 比较两个字符，不区分大小写。返回0，>0，<0。
	if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
		$ip = getenv('HTTP_CLIENT_IP');
	} elseif (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
		$ip = getenv('HTTP_X_FORWARDED_FOR');
	} elseif (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
		$ip = getenv('REMOTE_ADDR');
	} elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
		$ip = $_SERVER['REMOTE_ADDR'];
	}
	$res =  preg_match('/[\d\.]{7,15}/', $ip, $matches) ? $matches[0] : '';
	return $res;
	//dump(phpinfo());//所有PHP配置信息
}

function city($ip)
{
	$json = file_get_contents('http://ip.taobao.com/service/getIpInfo.php?ip=' . $ip);
	$arr = json_decode($json);
	$gj = $arr->data->country;    //国家
	$qy = $arr->data->area;    //区域
	$sf = $arr->data->region;    //省份
	$city = $arr->data->city;    //城市
	$yys = $arr->data->isp;    //运营商
	if ($gj == '') {
		$gj = '--';
	}
	if ($qy == '') {
		$qy = '--';
	}
	if ($sf == '') {
		$sf = '--';
	}
	if ($city == '') {
		$city = '--';
	}
	if ($yys == '') {
		$yys = '--';
	}
	return $gj . '|' . $sf . '|' . $qy . '|' . $city . '|' . $yys;
}
