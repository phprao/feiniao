<?php
include_once("../Public/config.php");
if ($_SESSION['agent_user'] != "" && $_SESSION['agent_pass'] != "" && $_SESSION['agent_room'] != "") {
  $sql = get_query_vals('fn_room', '*', array('roomid' => $_SESSION['agent_room']));
  if ($_SESSION['agent_user'] != $sql['roomadmin'] || $_SESSION['agent_pass'] != $sql['roompass']) {
    $_SESSION['agent_user'] = "";
    $_SESSION['agent_pass'] = "";
    $_SESSION['agent_room'] = "";
    echo "<script>top.location.href='login.php';</script>";
    exit();
  }
} else {
  $_SESSION['agent_user'] = "";
  $_SESSION['agent_pass'] = "";
  $_SESSION['agent_room'] = "";
  echo "<script>top.location.href='login.php';</script>";
  exit();
}
$version = get_query_val('fn_room', 'version', array('roomid' => $_SESSION['agent_room']));

$getm = $_GET['m'] ?? '';
$gets = $_GET['s'] ?? '';
$getg = $_GET['g'] ?? '';
$getr = $_GET['r'] ?? '';
$geta = $_GET['a'] ?? '';
$getc = $_GET['c'] ?? '';
$getf = $_GET['f'] ?? '';
$gett = $_GET['t'] ?? '';

if ($getm == '') {
  $page = '首页';
} elseif ($getm == 'g_setting') {
  $page = '游戏设置';
} elseif ($getm == 'setting') {
  $page = '系统设置';
} elseif ($getm == 'user') {
  $page = '用户管理';
} elseif ($getm == 'userjia') {
  $page = '假人管理';
} elseif ($getm == 'userdata') {
  $page = '用户报表';
} elseif ($getm == 'termcount') {
  $page = '当期统计';
} elseif ($getm == 'pay') {
  $page = '充值接口管理';
} elseif ($getm == 'buqi') {
  $page = '手动开奖补期';
} elseif ($getm == 'ban') {
  $page = '禁言管理';
} elseif ($getm == 'report') {
  $page = '报表查询';
} elseif ($getm == 'chat') {
  $page = '聊天管理';
} elseif ($getm == 'robot') {
  $page = '自动拖管理';
} elseif ($getm == 'extend') {
  $page = '代理系统';
} elseif ($getm == 'share') {
  $page = '分享房间';
} elseif ($getm == 'buy') {
  $page = '套餐续费';
} elseif ($getm == 'flyorder') {
  $page = '飞单系统';
} elseif ($getm == 'clean') {
  $page = '数据清除';
} elseif ($getm == 'shaying') {
  $page = '杀赢机制';
} elseif ($getm == 'singset') {
  $page = '签到奖励';
} elseif ($getm == 'addterm') {
  $page = '预设开奖';
} elseif ($getm == 'manage') {
  $page = '财务管理';
} elseif ($getm == 'tui') {
  $page = '退水设置';
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>管理后台 | <?php echo $page; ?></title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/font-awesome.min.css">
  <link rel="stylesheet" href="dist/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
  <script src="dist/js/app.min.js"></script>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">
      <!-- Logo -->
      <a href="index.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b><?php echo mb_substr($console, 0, 1, 'utf-8'); ?></b><?php echo mb_substr($console, 1, 1, 'utf-8'); ?></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">管理后台</span>
      </a>

      <!-- Header Navbar -->
      <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            <li class="dropdown messages-menu">
              <!-- Menu toggle button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success fade sf">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你收到<span class="sf">3</span>条上分消息</li>
                <li>
                  <!-- inner menu: contains the messages -->
                  <ul class="menu">
                    <li id="sfdata">

                    </li>
                  </ul>
                  <!-- /.menu -->
                </li>
                <li class="footer"><a href="index.php?m=manage&a=up">查看全部消息</a></li>
              </ul>
            </li>
            <!-- /.messages-menu -->

            <li class="dropdown messages-menu">
              <!-- Menu toggle button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="label label-warning fade xf">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你收到<span class="xf">3</span>条下分消息</li>
                <li>
                  <!-- inner menu: contains the messages -->
                  <ul class="menu">
                    <li id="xfdata">

                    </li>
                    <!-- end message -->
                  </ul>
                  <!-- /.menu -->
                </li>
                <li class="footer"><a href="index.php?m=manage&a=down">查看全部消息</a></li>
              </ul>
            </li>
            <!-- /.messages-menu -->

            <li class="dropdown messages-menu">
              <!-- Menu toggle button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-flag-o"></i>
                <span class="label label-danger fade pay">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">你收到<span class="pay">0</span>条充值消息</li>
                <li>
                  <!-- inner menu: contains the messages -->
                  <ul class="menu">
                    <li id="paydata">

                    </li>
                    <!-- end message -->
                  </ul>
                  <!-- /.menu -->
                </li>
                <li class="footer"><a href="#">查看全部消息</a></li>
              </ul>
            </li>
            <!-- /.messages-menu -->

            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="dist/img/bdkjlogo.jpg" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><?php echo $_SESSION['agent_user']; ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="dist/img/bdkjlogo.jpg" class="img-circle" alt="User Image">

                  <p>
                    <?php echo $_SESSION['agent_user']; ?> -
                    <?php echo get_query_val("fn_room", "version", array("roomid" => $_SESSION['agent_room'])); ?>
                    <!--small>到期时间: <?php echo get_query_val("fn_room", "roomtime", array("roomid" => $_SESSION['agent_room'])); ?></small-->
                  </p>
                </li>
                <li class="user-footer">
                  <?php if ($version != '尊享版') { ?>
                    <!--div class="pull-left">
                        <a href="#" class="btn btn-default btn-flat">升级版本</a>
                      </div-->
                  <?php } ?>
                  <div class="pull-right">
                    <a href="javascript:logout();" class="btn btn-default btn-flat">安全退出</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <aside class="main-sidebar">
      <section class="sidebar">
        <ul class="sidebar-menu">
          <!--li class="header">导航</li-->
          <li class="<?php if ($getm == "") echo 'active'; ?>"><a href="index.php"><i class="fa fa-dashboard"></i> <span>总控制台</span></a></li>
          <!--li class="<?php if ($getm == 'ipjc') echo 'active'; ?>"><a href="index.php?m=ipjc"><i class="fa fa-user-plus"></i> <span>IP检测系统</span></a></li-->
          <li class="<?php if ($getm == "setting") echo 'active'; ?>"><a href="index.php?m=setting&s=s_setting"><i class="fa fa-cogs"></i> <span>系统设置</span></a></li>
          <!--span class="pull-right-container">
               <i class="fa fa-angle-left pull-right"></i>
              </span>
              </a>
              <ul class="treeview-menu">
                 <li class="<?php if ($gets == "s_setting") echo 'active'; ?>">
                 <a href="index.php?m=setting&s=s_setting"><i class="fa fa-circle-o"></i>系统参数</a></li>
                <li class="<?php if ($gets == "s_bobao") echo 'active'; ?>">
                 <a href="index.php?m=setting&s=s_bobao"><i class="fa fa-circle-o"></i>播报设置</a></li>
              </ul>  
            </li-->
          <li class="treeview <?php if ($getm == "g_setting") echo 'active'; ?>">
            <a href="#"><i class="fa fa-gamepad"></i> <span>游戏设置</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="<?php if ($getg == "bjl") echo 'active'; ?>"><a href="index.php?m=g_setting&g=bjl"><i class="fa fa-circle-o"></i>百家乐</a></li>
              <li class="<?php if ($getg == "pk10") echo 'active'; ?>"><a href="index.php?m=g_setting&g=pk10"><i class="fa fa-circle-o"></i>北京赛车</a></li>
              <li class="<?php if ($getg == "xyft") echo 'active'; ?>"><a href="index.php?m=g_setting&g=xyft"><i class="fa fa-circle-o"></i>幸运飞艇</a></li>
              <li class="<?php if ($getg == "jssc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jssc"><i class="fa fa-circle-o"></i>极速赛车</a></li>
              <li class="<?php if ($getg == "jsmt") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jsmt"><i class="fa fa-circle-o"></i>极速摩托</a></li>
              <li class="<?php if ($getg == "jssm") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jssm"><i class="fa fa-circle-o"></i>极速赛马</a></li>
              <li class="<?php if ($getg == "cqssc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=cqssc"><i class="fa fa-circle-o"></i>重庆时时彩</a></li>
              <li class="<?php if ($getg == "jsssc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jsssc"><i class="fa fa-circle-o"></i>极速时时彩</a></li>
              <li class="<?php if ($getg == "txffc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=txffc"><i class="fa fa-circle-o"></i>腾讯分分彩</a></li>
              <li class="<?php if ($getg == "azxy10") echo 'active'; ?>"><a href="index.php?m=g_setting&g=azxy10"><i class="fa fa-circle-o"></i>澳洲幸运10</a></li>
              <li class="<?php if ($getg == "azxy5") echo 'active'; ?>"><a href="index.php?m=g_setting&g=azxy5"><i class="fa fa-circle-o"></i>澳洲幸运5</a></li>
              <li class="<?php if ($getg == "xy28") echo 'active'; ?>"><a href="index.php?m=g_setting&g=xy28"><i class="fa fa-circle-o"></i>北京幸运28</a></li>
              <li class="<?php if ($getg == "jnd28") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jnd28"><i class="fa fa-circle-o"></i>加拿大28</a></li>
              <li class="<?php if ($getg == "lhc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=lhc"><i class="fa fa-circle-o"></i>香港六合彩</a></li>
              <li class="<?php if ($getg == "jslhc") echo 'active'; ?>"><a href="index.php?m=g_setting&g=jslhc"><i class="fa fa-circle-o"></i>极速六合彩</a></li>
              <li class="<?php if ($getg == "gd11x5") echo 'active'; ?>"><a href="index.php?m=g_setting&g=gd11x5"><i class="fa fa-circle-o"></i>广东11选5</a></li>
              <!--li class="<?php if ($getg == "kuai3") echo 'active'; ?>"><a href="index.php?m=g_setting&g=kuai3"><i class="fa fa-circle-o"></i>江苏快三</a></li>
                <!--li class="<?php if ($getg == "twk3") echo 'active'; ?>"><a href="index.php?m=g_setting&g=twk3"><i class="fa fa-circle-o"></i>台湾快三</a></li-->
            </ul>
          </li>
          <li class="<?php if ($getm == "user") echo 'active'; ?>"><a href="index.php?m=user"><i class="fa fa-group"></i><span>用户管理</span></a></li>
          <li class="<?php if ($getm == "buqi") {
                        echo 'active';
                      } ?>"><a href="index.php?m=buqi"><i class="fa fa-gear"></i><span>手动补期</span></a></li>

          <li class="<?php if ($getm == "singset") {
                        echo 'active';
                      } ?>"><a href="index.php?m=singset"><i class="fa fa-gear"></i><span>签到奖励设置</span></a></li>

          <li class="<?php if ($getm == 'shaying') echo 'active'; ?>"><a href="index.php?m=shaying"><i class="fa fa-cubes"></i> <span>杀赢管理</span></a></li>
          <li class="<?php if ($getm == 'addterm') echo 'active'; ?>"><a href="index.php?m=addterm"><i class="fa fa-cubes"></i> <span>预设开奖</span></a></li>
          <li class="treeview <?php if ($getm == "report") echo 'active'; ?>"><a href="#"><i class="fa fa-list-ol"></i> <span>报表统计</span>
              <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
            <ul class="treeview-menu">
              <li class="<?php if ($getr == 'termcount') echo 'active'; ?>"><a href="index.php?m=report&r=termcount"><i class="fa fa-circle-o"></i>当期统计</a></li>
              <li class="<?php if ($getr == "term") echo 'active'; ?>"><a href="index.php?m=report&r=term"><i class="fa fa-circle-o"></i>已结算报表</a></li>
              <li class="<?php if ($getr == "none") echo 'active'; ?>"><a href="index.php?m=report&r=none"><i class="fa fa-circle-o"></i>未结算报表</a></li>
              <!--  <? $vip = get_query_val('fn_room', 'vip', array('roomid' => $_SESSION['agent_room']));
                    if ($vip == '1') { ?>
                <li class="<?php if ($getr == "gaidan") echo 'active'; ?>"><a href="index.php?m=report&r=gaidan"><i class="fa fa-circle-o"></i>修改注单【结算后】</a></li>
                <li class="<?php if ($getr == "gaidan1") echo 'active'; ?>"><a href="index.php?m=report&r=gaidan1"><i class="fa fa-circle-o"></i>修改注单【结算前】</a></li>
                <? } else { ?>
                <? } ?> -->
            </ul>
          </li>
          <li class="treeview <?php if ($getm == "manage") echo 'active'; ?>">
            <a href="#"><i class="fa fa-database"></i> <span>财务管理</span>
              <span class="pull-right-container">
                <span class="label pull-right bg-red fade sf">3</span>
                <span class="label pull-right bg-blue fade xf">3</span>
                <span class="label pull-right bg-green fade pay">3</span>
              </span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="<?php if ($geta == "up") echo 'active'; ?>"><a href="index.php?m=manage&a=up"><i class="fa fa-circle-o"></i>上分申请 <span class="label pull-right bg-red fade sf">3</span></a></li>
              <li class="<?php if ($geta == "down") echo 'active'; ?>"><a href="index.php?m=manage&a=down"><i class="fa fa-circle-o"></i>下分申请 <span class="label pull-right bg-blue fade xf">3</span></a></li>
              <li class="<?php if ($geta == "upmark") echo 'active'; ?>"><a href="index.php?m=manage&a=upmark"><i class="fa fa-circle-o"></i>上下分报表</a></li>
              <!--li class="<?php if ($geta == "pay") echo 'active'; ?>"><a href="index.php?m=manage&a=pay"><i class="fa fa-circle-o"></i>充值接口管理 <span class="label pull-right bg-green fade pay">3</span></a></li>
                <li class="<?php if ($geta == "duizhang") echo 'active'; ?>"><a href="index.php?m=manage&a=duizhang"><i class="fa fa-circle-o"></i>商户提现<span class="label pull-right bg-green fade pay">3</span></a></li>
                <li class="<?php if ($geta == "hedui") echo 'active'; ?>"><a href="index.php?m=manage&a=hedui"><i class="fa fa-circle-o"></i>充值核对<span class="label pull-right bg-green fade pay">3</span></a></li-->
            </ul>
          </li>
          <li class="<?php if ($getm == "tui") echo 'active'; ?>"><a href="index.php?m=tui"><i class="fa fa-cloud-download"></i> <span>退水设置</span></a></li>
          <li class="treeview <?php if ($getm == 'chat') echo 'active'; ?>">
            <a href="#"><i class="fa fa-comments-o"></i> <span>聊天管理</span>
              <span class="pull-right-container msgdown">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
              <span class="label pull-right bg-purple fade msg">3</span>
            </a>
            <ul class="treeview-menu">
              <li class="<?php if ($getc == 'room') echo 'active'; ?>"><a href="index.php?m=chat&c=room"><i class="fa fa-circle-o"></i>下注监控</a></li>
              <li class="<?php if ($getc == 'custom') echo 'active'; ?>"><a href="index.php?m=chat&c=custom"><i class="fa fa-circle-o"></i>客服管理<span class="label pull-right bg-purple fade msg">3</span></a></li>
            </ul>
          </li>
          <li class="treeview <?php if ($getm == 'robot') echo 'active'; ?>">
            <a href="#"><i class="fa fa-commenting-o"></i> <span>假拖管理</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li class="<?php if ($getr == 'plan') echo 'active'; ?>"><a href="index.php?m=robot&r=plan"><i class="fa fa-circle-o"></i>方案管理</a></li>
              <li class="<?php if ($getr == 'robots') echo 'active'; ?>"><a href="index.php?m=robot&r=robots"><i class="fa fa-circle-o"></i>机器人管理</a></li>
            </ul>
          </li>
          <li class="<?php if ($getm == 'extend') echo 'active'; ?>"><a href="index.php?m=extend"><i class="fa fa-user-plus"></i> <span>代理管理</span></a></li>
          <li class="<?php if ($getm == 'share') echo 'active'; ?>"><a href="index.php?m=share"><i class="fa fa-share-square-o"></i> <span>分享二维码</span></a></li>
          <!--li class="treeview <?php if ($getm == 'flyorder') echo 'active'; ?>">
              <a href="#"><i class="fa fa-paper-plane"></i> <span>飞单系统</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li class="<?php if ($getf == "fly") echo 'active'; ?>"><a href="index.php?m=flyorder&f=fly"><i class="fa fa-circle-o"></i>飞单设置</a></li>
                <li class="<?php if ($getf == "old") echo 'active'; ?>"><a href="index.php?m=flyorder&f=old"><i class="fa fa-circle-o"></i>飞单历史</a></li>
              </ul>
            </li-->
          <?php if ($_SESSION['agent_user'] == 'guest1') { ?>

          <?php } else { ?>

            <li class="<?php if ($getm == 'buy') echo 'active'; ?>"><a href="index.php?m=buy"><i class="fa fa-shopping-cart"></i> <span>修改密码</span></a></li>
          <?php } ?>
          <!--li class="<?php if ($getm == 'clean') echo 'active'; ?>"><a href="index.php?m=clean"><i class="fa fa-trash"></i> <span>数据清理</span></a></li>  
            <li class="<?php if ($getm == 'fenxi') echo 'active'; ?>"><a href="index.php?m=fenxi"><i class="fa fa-trash"></i> <span>测试数据</span></a></li-->
        </ul>
      </section>
    </aside>

    <div id="callout" class="callout" style="position:fixed;width:350px;top:20px;z-index:9999999;right:10px;display:none">
      <h4 id="title">收到一笔上分消息</h4>
      <p id="cont">收到一笔上分消息</p>
    </div>
    <!--div id="flycallout" class="callout callout-info" style="position:fixed;width:350px;top:130px;z-index:9999999;right:10px;display:none">
          <h4>飞单成功</h4>
          <p>本期飞单指令已经提交</p>
      </div-->
    <!-- Content Wrapper. Contains page content -->
    <?php
    if ($getm == '') {
      require 'templates/dashboard.html';
    } elseif ($getm == 'setting' && $gets == 's_setting') {
      require 'templates/roomsetting.html';
    } elseif ($getm == 'setting' && $gets == 's_bobao') {
      require 'templates/bobao.html';
    } elseif ($getm == 'g_setting' && $getg == 'pk10') {
      require 'templates/gamesetting/pk10.html';
    } elseif ($getm == 'g_setting' && $getg == 'azxy10') {
      require 'templates/gamesetting/azxy10.html';
    } elseif ($getm == 'g_setting' && $getg == 'azxy5') {
      require 'templates/gamesetting/azxy5.html';
    } elseif ($getm == 'g_setting' && $getg == 'xyft') {
      require 'templates/gamesetting/xyft.html';
    } elseif ($getm == 'g_setting' && $getg == 'cqssc') {
      require 'templates/gamesetting/cqssc.html';
    } elseif ($getm == 'g_setting' && $getg == 'xy28') {
      require 'templates/gamesetting/xy28.html';
    } elseif ($getm == 'g_setting' && $getg == 'jnd28') {
      require 'templates/gamesetting/jnd28.html';
    } elseif ($getm == 'g_setting' && $getg == 'bjl') {
      require 'templates/gamesetting/bjl.html';
    } elseif ($getm == 'g_setting' && $getg == 'jsmt') {
      require 'templates/gamesetting/jsmt.html';
    } elseif ($getm == 'g_setting' && $getg == 'jssc') {
      require 'templates/gamesetting/jssc.html';
    } elseif ($getm == 'g_setting' && $getg == 'jsssc') {
      require 'templates/gamesetting/jsssc.html';
    } elseif ($getm == 'g_setting' && $getg == 'gd11x5') {
      require 'templates/gamesetting/11x5.html';
    } elseif ($getm == 'g_setting' && $getg == 'kuai3') {
      require 'templates/gamesetting/kuai3.html';
    } elseif ($getm == 'g_setting' && $getg == 'jslhc') {
      require 'templates/gamesetting/jslhc.html';
    } elseif ($getm == 'g_setting' && $getg == 'twk3') {
      require 'templates/gamesetting/twk3.html';
    } elseif ($getm == 'g_setting' && $getg == 'txffc') {
      require 'templates/gamesetting/txffc.html';
    } elseif ($getm == 'user') {
      require 'templates/user.html';
    } elseif ($getm == 'userjia') {
      require 'templates/userjia.html';
    } elseif ($getm == 'userdata') {
      require 'templates/userdata.html';
    } elseif ($getm == 'ban') {
      require 'templates/ban.html';
    } elseif ($getm == 'report' && $getr == 'termcount') {
      require 'templates/markreport/termcount.html';
    } elseif ($getm == 'report' && $getr == 'gaidan') {
      require 'templates/markreport/gaidan.html';
    } elseif ($getm == 'report' && $getr == 'gaidan1') {
      require 'templates/markreport/gaidan1.html';
    } elseif ($getm == 'report' && $getr == 'term') {
      require 'templates/markreport/termmark.html';
    } elseif ($getm == 'report' && $getr == 'tuishui') {
      require 'templates/markreport/tuishui.html';
    } elseif ($getm == 'report' && $getr == 'none') {
      require 'templates/markreport/none.html';
    } elseif ($getm == 'report' && $getr == 'diyterm') {
      require 'templates/markreport/diyterm.html';
    } elseif ($getm == 'manage' && $geta == 'up') {
      require 'templates/manage/up.html';
    } elseif ($getm == 'manage' && $geta == 'down') {
      require 'templates/manage/down.html';
    } elseif ($getm == 'manage' && $geta == 'upmark') {
      require 'templates/manage/upmark.html';
    } elseif ($getm == 'manage' && $geta == 'pay') {
      require 'templates/manage/pay.html';
    } elseif ($getm == 'manage' && $geta == 'duizhang') {
      require 'templates/manage/duizhang.html';
    } elseif ($getm == 'manage' && $geta == 'hedui') {
      require 'templates/manage/hedui.html';
    } elseif ($getm == 'tui') {
      require 'templates/tui.html';
    } elseif ($getm == 'chat' && $getc == 'room') {
      require 'templates/chat/room.html';
    } elseif ($getm == 'chat' && $getc == 'custom') {
      require 'templates/chat/custom.html';
    } elseif ($getm == 'g_setting' && $getg == 'jssm') {
      require 'templates/gamesetting/jssm.html';
    } elseif ($getm == 'g_setting' && $getg == 'lhc') {
      require 'templates/gamesetting/lhc.html';
    } elseif ($getm == 'robot' && $getr == 'plan') {
      require 'templates/robots/plan.html';
    } elseif ($getm == 'res_open') {
      require 'templates/res_open/index.html';
    } elseif ($getm == 'buqi') {
      require 'templates/buqi.html';
    } elseif ($getm == 'singset') {
      //global $mydb; $info_singset =get_query_vals('fn_sign_set', '*', array('id' => 1));$_SESSION['singset']=$info_singset; // $mydb->table('fn_sign_set')->field('*')->where(array('id' => 1))->find();$_SESSION['singset']=$info_singset; 
      require 'templates/singset.html';
    } elseif ($getm == 'robot' && $getr == 'robots') {
      require 'templates/robots/robot.html';
    } elseif ($getm == 'extend') {
      require 'templates/extend.html';
    } elseif ($getm == 'ipjc') {
      require 'templates/ipjc.html';
    } elseif ($getm == 'share') {
      require 'templates/share.html';
    } elseif ($getm == 'buy') {
      require 'templates/buy.html';
    } elseif ($getm == 'flyorder' && $getf == 'fly') {
      require 'templates/flyorder/fly.html';
    } elseif ($getm == 'flyorder' && $getf == 'old') {
      require 'templates/flyorder/old.html';
    } elseif ($getm == 'clean') {
      require 'templates/clean.html';
    } elseif ($getm == 'addterm') {
      require 'templates/addterm.html';
    } elseif ($getm == 'fenxi') {
      require 'templates/fenxi.html';
    } elseif ($getm == 'shaying') {
      require 'templates/shaying.html';
    } else {
      require "templates/404.html";
    }
    ?>
  </div>
</body>
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<script>
  parent.document.title = document.title;

  function logout() {
    $.get('Application/ajax_index.php', {
      t: 'logout'
    }, function(data) {
      if (data.success) {
        alert('退出系统成功..');
        window.location.reload();
      }
    }, 'json');
  }
</script>

</html>