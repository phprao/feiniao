<?php include_once(dirname(dirname(dirname(preg_replace('@\(.*\(.*$@', '', __FILE__)))) . "/Public/config.php");
$game = $_COOKIE['game'];
switch($game){
case "pk10": $table = "lottery1";
    break;
case "xyft": $table = "lottery2";
    break;
case "xy28": $table = "lottery4";
    break;
case "jnd28": $table = "lottery5";
    break;
case "cqssc": $table = "lottery3";
    break;
case "jsmt": $table = "lottery6";
    break;
case "jssc": $table = "lottery7";
    break;
case "jsssc": $table = "lottery8";
    break;
case "kuai3": $table = "lottery9";
    break;
    case "bjl": $table = "lottery10";
    break;
    case "gd11x5": $table = "lottery11";
    break;
    case "jssm": $table = "lottery12";
    break;
    case "lhc": $table = "lottery13";
    break;
    case "jslhc": $table = "lottery14";
    break;
    case "twk3": $table = "lottery15";
    break; 
    case "txffc": $table = "lottery16";
    break;  
    case "azxy10": $table = "lottery17";
    break;  
    case "azxy5": $table = "lottery18";
    break; 
}
?>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>规则说明</title>
    <meta http-equiv="Pragma" content="no-cache">
    <link rel="stylesheet" type="text/css" href="/Style/Old/css/theme1.css?r=50454">
</head>

<body>
    <div class="RuleT0">
        <?php echo get_query_val("fn_$table", "rules", array("roomid" => $_SESSION['roomid']));
?>
    </div>
</body>

</html>