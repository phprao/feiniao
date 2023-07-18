<?php 
function is_weixin(){
    if ( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') !== false ) {
        return true;
    }  
        return false;
} 
?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title><?php echo $sitename ?></title>
<link rel="stylesheet" type="text/css" href="/default/css/sytle.css?v=201905111940" />
 <link rel="Stylesheet" type="text/css" href="Style/Xs/Public/css/layout.css" />
<script type="text/javascript" src="/default/js/jquery-1.8.2.min.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
		var phoneWidth =  parseInt(window.screen.width);
		var phoneScale = phoneWidth/750;
		var ua = navigator.userAgent;
		if (/Android (\d+\.\d+)/.test(ua)){
			var version = parseFloat(RegExp.$1);
			if(version>2.3){
				document.write('<meta name="viewport" content="width=750, minimum-scale = '+phoneScale+', maximum-scale = '+phoneScale+', target-densitydpi=device-dpi">');
			}else{
				document.write('<meta name="viewport" content="width=750, target-densitydpi=device-dpi">');
			}
		} else {
			document.write('<meta name="viewport" content="width=750,user-scalable=no, target-densitydpi=device-dpi">');
		}
</script>
</head>
<body id="gamebox">
<!--div data-v-7f2b6a5e="" class="legacy" style="position: absolute; top: 10.5em;right: 0;z-index: 101;width: 6em;height: 2em;padding-left: .3em;line-height: 2em;background: red;"><a style="color:#ffffff;" data-v-7f2b6a5e="" href="/Templates/sign/index.php">签到<i data-v-7f2b6a5e="" class="iconfont icon-double-arrow1"></i></a></div-->
<div class="lou">
    <div class="cover"></div>
</div>
<section id="allpage" class="p-index">
    <div class="userbox">
    	<div class="infobox"><span class="touxiang"><img src="<?php echo $_SESSION['headimg'];?>"></span><span><?php echo $_SESSION['username'];?></span></div>
    	<div class="infobox">游戏点数：<?php echo get_query_val("fn_user", "money", array("roomid" => $_SESSION['roomid'], 'userid' => $_SESSION['userid']));?></div>
          	<div class="infobox">在线人数：1652</div>
      <div class="banner"><img src="/default/images/banner2.jpg"></div>   <div class="gonggao"> <span>欢迎大家来到唐龙国际娱乐城，祝大家赚钱多多！</span></div>
    </div>
	<div class="gamebox">
    <div data-v-7f2b6a5e="" class="gamebox" style="position: absolute; top: 10.5em;right: 0;z-index: 101;width: 6em;height: 2em;padding-left: .3em;line-height: 2em;background: ;">
    <a href="/Templates/sign/index.php"><img src="/Style/Home/images/hongbao.png"><i data-v-7f2b6a5e="" class="iconfont icon-double-arrow1"></i></a>
    </div>
    	<!--div class="navhl_b">
            <a href="javascript:;" class="xcnav_1 navhl_h">彩票游戏</a>
            <a href="javascript:;" class="xcnav_2">真人视讯</a>
        </div-->
        <div class="ss_nav" style="height:1230px;">
        <div id="ss_menu" style="display: block;position:inherit;" class="in" aria-hidden="false"><div class=""></div>	
		<div class="ss_nav new_ss_nav" style="margin-top: 0px;border:none;margin-left: 0px;overflow:hidden;width: 730px;height: 1100px;">
		 <ul class="lottery" style="padding-right: 25px;padding-left: 25px;width: 720px;">
            <li><a href="/qr.php?room=10029&amp;g=bjl"><img src="/Style/Home/images/bjl.gif" title="百家乐"><font>百家乐</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=jssc"><img src="/Style/Home/images/jssc-logo.png" title="极速赛车"><font>极速赛车</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=jsmt"><img src="/Style/Home/images/jsmt-logo.png" title="极速摩托"><font>极速摩托</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=jsssc"><img src="/Style/Home/images/jsssc-logo.png" title="极速时时彩"><font>极速时时彩</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=xyft"><img src="/Style/Home/images/xyft-logo.png" title="幸运飞艇"><font>幸运飞艇</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=txffc"><img src="/Style/Home/images/txffc-logo.png" title="腾讯分分彩"><font>腾讯分分彩</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=azxy10"><img src="/Style/Home/images/azxy10-logo.png" title="澳洲幸运10"><font>澳洲幸运10</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=azxy5"><img src="/Style/Home/images/azxy5-logo.png" title="澳洲幸运5"><font>澳洲幸运5</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=jssm"><img src="/Style/Home/images/jssm-logo.png" title="极速赛马"><font>极速赛马</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=jslhc"><img src="/Style/Home/images/jslhc-logo.png" title="极速六合彩"><font>极速六合彩</font></a></li>
            <li><a href="/qr.php?room=10029&amp;g=xy28"><img src="/Style/Home/images/xy28-logo.png" title="幸运28"><font>幸运28</font></a></li>
			<li><a href="/qr.php?room=10029&amp;g=jnd28"><img src="/Style/Home/images/jnd28-logo.png" title="加拿大28"><font>加拿大28</font></a></li>
			<li><a href="/qr.php?room=10029&amp;g=pk10"><img src="/Style/Home/images/pk10-logo.png" title="北京赛车"><font>北京赛车</font></a></li>
			<li><a href="/qr.php?room=10029&amp;g=cqssc"><img src="/Style/Home/images/cqssc-logo.png" title="重庆欢乐生肖"><font>重庆欢乐生肖</font></a></li>
			<li><a href="/qr.php?room=10029&amp;g=gd11x5"><img src="/Style/Home/images/gd11x5-logo.png" title="十一选五"><font>十一选五</font></a></li>
			<li><a href="/qr.php?room=10029&amp;g=lhc"><img src="/Style/Home/images/lhc-logo.png" title="六合彩"><font>六合彩</font></a></li>
			</ul>
	 	  </div>
	    </div>
        <!--div class="zhenren">
            <?php if(is_weixin()==true){?>
            <a href="/qr.php?room=<?php echo $_SESSION['roomid'];?>&g=bjl"><img src="/default/images/zhenren1.jpg"></a>
            <?php }else{?>
            <a href="/zhenren/login.php?=<?php $_SESSION['username'];?>" style="display:block;margin-bottom:10px;"><img src="/default/images/zhenren.jpg"></a>
            <?}?>
        </div-->
      </div>	
    </div>
	<div class="ft">
    	<div class="nav">
    	<ul>
        	<li class="a1"><a href="/qr2.php?room=<?php echo $_SESSION['roomid'];?>" class="hover"><span class="ft_icon"></span><div class="ft_nav">游戏大厅</div></a></li>
        	<li class="a2"><a href="/Templates/user/"><span class="ft_icon"></span><div class="ft_nav">用户中心</div></a></li>
            <?php $key = (int)get_query_val('fn_setting', 'payfs', array('roomid' => $_SESSION['roomid']));?>
			<?php if($key == 2){?>
            <li class="a4" data-id="cz"><a href="/pay/index.php"><span class="ft_icon"></span><div class="ft_nav">在线充值</div></a></li>
            <?php }elseif($key == 1){?>
            <li class="a4" data-id="cz"><a href="/spay/index.php?roomid=<? echo $_SESSION['roomid'];?>&g=<? echo $_COOKIE['game'];?>&img=<? echo $_SESSION['headimg'];?>&m=<? echo  $_SESSION['username'];?>&id=<? echo  $_SESSION['userid'];?>"><span class="ft_icon"></span><div class="ft_nav">在线充值</div></a></li>
            <?php }elseif($key == 3){?>
            <li class="a4" data-id="cz"><a href="/dspay/index.php"><span class="ft_icon"></span><div class="ft_nav">在线充值</div></a></li>
            <?php }?>

            <?php if(is_weixin()==true){?>
            <li class="a3"><a href="/Templates/New/tgzq.php"><span class="ft_icon"></span><div class="ft_nav">推广赚钱</div></a></li>
            <?php }else{?>
            <li class="a5"><a href="/tui.php"><span class="ft_icon"></span><div class="ft_nav">退出登录</div></a></li>
            <?}?>
        </ul>
        </div>
    </div>
</section>
  
<div id="orientLayer" class="mod-orient-layer" style="display: block;">
    <div class="mod-orient-layer__content">
        <i class="icon mod-orient-layer__icon-orient"></i>

        <div class="mod-orient-layer__desc">为了更好的体验，请使用竖屏浏览</div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(".xcnav_1").click(function(e) {
		$(".zhenren").hide()
		$(".caipiao").show()
		$(".xcnav_2").removeClass("navhl_h")
		$(this).addClass("navhl_h")
	});
	$(".xcnav_2").click(function(e) {
		$(".zhenren").show()
		$(".caipiao").hide()
		$(".xcnav_1").removeClass("navhl_h")
		$(this).addClass("navhl_h")
	});
})

	

</script>
  
<script>
    var orientLayer = document.getElementById("orientLayer");
    //判断横屏竖屏
    function checkDirect() {
        if (document.documentElement.clientHeight >= document.documentElement.clientWidth) {
            return "portrait";
        } else {
            return "landscape";
        }
    }
    //显示屏幕方向提示浮层
    function orientNotice() {
        var orient = checkDirect();
        if (orient == "portrait") {
            orientLayer.style.display = "none";
        } else {
            orientLayer.style.display = "block";
        }
    }
    function init() {
        orientNotice();
        window.addEventListener("onorientationchange" in window ? "orientationchange" : "resize", function () {
            setTimeout(orientNotice, 200);
        })
    }
    init();
  
  document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
WeixinJSBridge.call('hideToolbar');
});
</script>


</body>
</html>