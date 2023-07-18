<?php 
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
date_default_timezone_set("Asia/Shanghai");
include_once "../../../Public/config.php";

$shengxiao = array(
			1=>'猪', 13=>'猪', 25=>'猪', 37=>'猪', 49=>'猪', 
			12=>'鼠', 24=>'鼠', 36=>'鼠', 48=>'鼠', 
			11=>'牛', 23=>'牛', 35=>'牛', 47=>'牛', 
			10=>'虎', 22=>'虎', 34=>'虎', 46=>'虎', 
			9=>'兔', 21=>'兔', 33=>'兔', 45=>'兔',
			8=>'龙', 20=>'龙', 32=>'龙', 44=>'龙',
			7=>'蛇', 19=>'蛇', 31=>'蛇', 43=>'蛇',
			6=>'马', 18=>'马', 30=>'马', 42=>'马',
			5=>'羊', 17=>'羊', 29=>'羊', 41=>'羊',
			4=>'猴', 16=>'猴', 28=>'猴', 40=>'猴',
			3=>'鸡', 15=>'鸡', 27=>'鸡', 39=>'鸡',
			2=>'狗', 14=>'狗', 26=>'狗', 38=>'狗',
		);
		$sebo = array(
			'1'=>'红波','2'=>'红波','7'=>'红波','8'=>'红波','12'=>'红波','13'=>'红波','18'=>'红波','19'=>'红波','23'=>'红波','24'=>'红波','29'=>'红波','30'=>'红波','34'=>'红波','35'=>'红波','40'=>'红波','45'=>'红波','46'=>'红波',
			'3'=>'蓝波','4'=>'蓝波','9'=>'蓝波','10'=>'蓝波','14'=>'蓝波','15'=>'蓝波','20'=>'蓝波','25'=>'蓝波','26'=>'蓝波','31'=>'蓝波','36'=>'蓝波','37'=>'蓝波','41'=>'蓝波','42'=>'蓝波','47'=>'蓝波','48'=>'蓝波',
			'5'=>'绿波','6'=>'绿波','11'=>'绿波','16'=>'绿波','17'=>'绿波','21'=>'绿波','22'=>'绿波','27'=>'绿波','28'=>'绿波','32'=>'绿波','33'=>'绿波','38'=>'绿波','39'=>'绿波','43'=>'绿波','44'=>'绿波','49'=>'绿波'
		);

$topcode = get_query_vals('fn_open','*',"`type`=13 order by `term` desc limit 1");
$opentime = strtotime($topcode['next_time'])-30;
$next_term = $topcode['next_term'];
$nexttime = strtotime($topcode['next_time'])-60;


$code = explode(',',$topcode['code']);
$opentm = '';
$opentm.=array_sum($code).',';
$opentm.=array_sum($code)>=175 ? '大,' : '小,';
$opentm.=array_sum($code) % 2 == 0 ? '双,' : '单,';
$opentm.=$code[6]<=24 ? '小,' : '大,';
$opentm.=$code[6] % 2==0 ? '双,' : '单,';
if($code[6]==49){
	$opentm.='和,';
}else{
	$opentm.=array_sum(str_split($code[6]))>=7 ? '合大,' : '合小,';	
}
if($code[6]==49){
	$opentm.='和,';
}else{
	$opentm.=array_sum(str_split($code[6]))%2==0 ? '合双,' : '合单,';	
}
if($code[6]==49){
	$opentm.='和';	
}else{
    $haoma = explode(',',str_split($codes[6]));
  
	$opentm.=end($haoma)>=5 ? '尾大' : '尾小';
}


$json['success'] = 1;
$json['info'] = array(
					'Game'=>'six',
					'Name'=>'六合彩',
					'ServerTime'=>(int)time().'000',
					'OpenIndex'=>$topcode['term'],
					'OpenNumber' =>$topcode['code'],
					'OpenTm'=>$opentm,
					'OpenLh' =>$shengxiao[(int)$code[0]].','.$shengxiao[(int)$code[1]].','.$shengxiao[(int)$code[2]].','.$shengxiao[(int)$code[3]].','.$shengxiao[(int)$code[4]].','.$shengxiao[(int)$code[5]].','.$shengxiao[(int)$code[6]],					
					'OpenDateTime'=>date('m.d', strtotime($topcode['time'])).' 21:30',
					'BetIndex'=>$topcode['next_term'],
					'OpenTime'=>strtotime($topcode['next_time'])-time(),
					'BetTime'=>$nexttime-time()
					
				);
echo json_encode($json);
//echo '{"success":1,"info":{"Game":"six","Name":"\u516d\u5408\u5f69","ServerTime":"1523432085123","OpenIndex":"2018037","OpenNumber":"15,43,48,34,1,23,25","OpenTm":"189,\u5927,\u5355,\u5927,\u5355,\u5408\u5927,\u5408\u5355,\u5c3e\u5927","OpenLh":"\u7334,\u9f99,\u732a,\u725b,\u72d7,\u9f20,\u72d7","OpenDateTime":"04.10 21:30","BetIndex":"2018038","OpenTime":107995,"BetTime":107715}}';
?>