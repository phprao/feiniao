<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<meta name="viewport" content="width=device-width,minimum-scale=2.0,maximum-scale=2.0,user-scalable=no,minimal-ui">
		<!--<link rel="stylesheet" href="css/headorfood1.css" />-->
		<link rel="stylesheet" href="css/kuai3.css" />
		<link rel="stylesheet" href="css/fonts/fonts.css" />
		<script src="js/jquery-1.7.2.min.js"></script>
		<script src="js/main.js"></script>
	</head>
	<body>
		<div id="videobox">
			<div class="content" style="transform: scale(0.87) translate(-84px,-57px)">
				<!--<div class="head">
					江苏快3开奖视频
					<div class="btn">
						<ul>
							<li class="closevideo"><i class="iconfont"></i></li>
							<li class="small">小屏</li>
							<li class="big">中屏</li>
						</ul>
					</div>
				</div>-->
				<div class="animate">
					<div class="kuai3Animate">
						<div class="bodybg"><img src="img/bj.jpg" /></div>
						<div class="loading">
							<div class="loadtxt">
								LOADING...
							</div>
						</div>
						<div class="animate_content">
							<div class="nameLogo"><img src="img/logo.png" alt="" /></div>
						</div>
						<div class="position">
							<div class="middle_div">
								<span class="benqi"><span class="nowDraw" id="preDrawIssue">054</span>期</span>
									
								<ul id="codetop">
									<li id="num1" class="hmlist">3</li>
									<li id="num2" class="hmlist">1</li>
									<li id="num3" class="hmlist">6</li>
									<li id="sumNum" class="hmlist noright">2</li>
									<li id="sumBigSmall" class="bigOsmall">大</li>
								</ul>
								<span class="addIcon1"></span>
								<span class="addIcon2"></span>
								<span class="equalIcon"></span>

							</div>
						</div>
						<div class="currentDraw">
							<div class="dl">
								<span class="nextDraw">
									<span class="dot"></span>
									<span>下期&nbsp;:</span> 
									<span id="drawIssue" class="draw">170503255</span>
								</span>
								<span class="kai">
									<span class="dot"></span> 
									<span>开奖：</span>
									<span id="drawTime" class="kaitime"></span>
								</span>
							</div>
							<div class="dr" id="soundBtn">
								<span id="spanbtn" class="sounds"></span>
							</div>
						</div>
						<div class="timeBox">
							<span class="linetime">
								<span id="timetitle">倒计时</span>
							</span>
							<div>								
								<span id="hourtxt" class="hourtxt">00:00:00</span>
								<span id="opening" class="hourtxt opening"><img src="img/progress.gif"></span>
								<audio class="dispnode" id="audioidB" loop="loop" src="sound/bg.mp3"></audio>
								<audio class="dispnode" id="audioidR" loop="loop" src="sound/run.mp3"></audio>
							</div>
							<ul class="linelist">
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="bones">
							<ul id="code">
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
						<div class="kaimodule">
							<span class="noinfor">即将开奖，禁止模拟</span>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!--<div style="width: 1105px;text-align: center;margin: 0 auto;margin-top: 10px;background: blanchedalmond;padding: 10px;">
			<input type="button" value="启动视频倒计时" onclick="k3v.startVideo()"/>
			<input type="button" value="停止视频开奖" onclick="k3v.stopVideo()"/>
		</div>-->
	</body>
	<script>
		var term = "";
		ifopen = true;
		
		getajax();
	</script>
</html>