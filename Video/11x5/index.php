<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui">
		<meta name="format-detection" content="telephone=no" />
		<title></title>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/animateTool.css" />
	</head>
	<body>
		<div class="cqsscAnimate">
			<div class="bodybg"><img src="img/bodybg.jpg" /></div>
			<div class="loading">
				<div class="loadtxt">
					LOADING...
				</div>
			</div>
			<div class="content">
				<div class="nameLogo <?php echo $_COOKIE['game']?>"></div>
				<div class="coderbox">
					<div class="codeboxl">
						<div class="line tl">
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip bigbg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip smallbg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip bigbg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip smallbg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip bigbg"></span>
							</div>
						</div>
						<div class="line ml" id="numBig">
							<div class="box beforebg">
								<span class="num2"></span>
							</div>
							<div class="box beforebg">
								<span class="num1"></span>
							</div>
							<div class="box beforebg">
								<span class="num0"></span>
							</div>
							<div class="box beforebg">
								<span class="num9"></span>
							</div>
							<div class="box beforebg">
								<span class="num6"></span>
							</div>
						</div>
						<div class="line bl">
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip singlebg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip doublebg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip doublebg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip singlebg"></span>
							</div>
							<div class="box perspectiveView">
								<span class="flip afterbg out"></span>
								<span class="flip doublebg"></span>
							</div>
						</div>
					</div>
					<div class="codeboxr">
						<div class="heiban">
							<div class="line1" id="qishu">
								本期：<span class="redfont" id="preDrawIssue">2016054848</span>期
							</div>
							<div class="line1" id="nexttime">
								<span>下期开奖：</span><span class="redfont" id="drawTime">18:30:47</span>
							</div>
							<div class="line1">
								<div class="oping">
									<div class="cuttimetitle">正在开奖...</div>
								</div>
								<div class="djs">
									<span class="cuttimetitle" id="cuttime">倒计时：</span>
									<span class="bluefont" style="margin-top:5px;"></span>
								</div>
							</div>
						</div>
						<div class="heibanb">
							<div class="bckj" style="font-size:23px;">
								<span id="sumNum">16</span><span id="sumSingleDouble">双</span><span id="sumBigSmall">小</span><span id="dragonTiger"  style="display: none">虎</span>
							</div>
							<div class="smallnum" id="litNum">
								<div class="box beforebg">
									<span class="num2"></span>
								</div>
								<div class="box beforebg">
									<span class="num1"></span>
								</div>
								<div class="box beforebg">
									<span class="num0"></span>
								</div>
								<div class="box beforebg">
									<span class="num9"></span>
								</div>
								<div class="box beforebg">
									<span class="num6"></span>
								</div>
							</div>
							<!--<div class="smallnum line" id="btnbox">
								<div class="box">
									<div class="orbtn">两面路珠</div>
								</div>
								<div class="box">
									<div class="orbtn"> 开奖历史</div>
								</div>
								<div class="box">
									<div class="orbtn"> 走势分析</div>
								</div>
							</div>-->
						</div>
					</div>
				</div>
				<div class="menubox">
					<div class="tyrbtn"></div>
					<div id="soundbtn" class="soundbtn"></div>
				</div>
				<div class="disnone">
					<audio  autoplay="autoplay" id="bgsound" src=""></audio>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/victor1.0.js"></script>
	<script>
		var term = "";
		ifopen = true;
		var game='<?php echo $_COOKIE['game']?>';
		getajax();
	</script>
</html>