<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
  <link rel="stylesheet" href="css/jquery-labelauty.css">
  <script src="js/jquery-1.8.3.min.js"></script>
  <script src="js/jquery-labelauty.js"></script>
    <title>官方充值</title>
</head>
<style type="text/css">
  .abody{
  background-color:#f0f0f0;
  
  }
  .bianju {
  margin-top: 20px;
  margin-right: 5px;
  margin-bottom: 30px;
  margin-left: 5px;
  }
  .kuangjia{
  background-color:#ffffff;
    border-radius:10px 10px 10px 10px;
    border:1px dashed #949494;margin-top:10px
  }
  .h2{
  margin-left: 20px;
    font-size:10px;
  }
  .botton{
  
   margin-right: 20px;
  margin-bottom: 10px;
  margin-left: 20px;
  text-align:center;
    width:240px;height:40px;
  }
</style>  
  
<body class="abody">
<?php 
  session_start();
$_SESSION['game'] = $_GET['g'];
$_SESSION['roomid'] = $_GET['roomid'];
$_SESSION['headimg'] = $_GET['img']; 
$_SESSION['username'] = $_GET['m'];
$_SESSION['userid'] = $_GET['id'];

  ?>
<div class="bianju">  

  <!--img src="./images/paylogo.png" style="width:50%;height:auto;margin:0 auto;"-->
 
<form class="kuangjia">

  <div class="h2"><h2>&nbsp&nbsp充值金额：</h2></div>
    <ul class="dowebok">            
        <!--li><input type="radio" name="inputprice" value="10" checked="" data-labelauty="10元"></li>        
        <li><input type="radio" name="inputprice"  value="20" data-labelauty="20元"></li>                    
        <li><input type="radio" name="inputprice" value="30" data-labelauty="30元" ></li>        
        <li><input type="radio" name="inputprice" value="50" checked="" data-labelauty="50元"></li-->         
        <li><input type="radio" name="inputprice" value="100" data-labelauty="100元"></li>        
        <!--li><input type="radio" name="inputprice" value="200" data-labelauty="200元"></li-->               
        <li><input type="radio" name="inputprice" value="300" data-labelauty="300元"></li>                  
        <li><input type="radio" name="inputprice" value="500" data-labelauty="500元" ></li>                 
        <li><input type="radio" name="inputprice"  value="1000" data-labelauty="1000元"></li>                    
        <!--li><input type="radio" name="inputprice"  value="2000" data-labelauty="2000元"></li-->                    
        <li><input type="radio" name="inputprice"  value="3000" data-labelauty="3000元"></li>        
        <li><input type="radio" name="inputprice"  value="5000" data-labelauty="5000元"></li>              
        <li><input type="radio" name="inputprice"  value="10000" data-labelauty="10000元"></li>        
        <li><input type="radio" name="inputprice"  value="20000" data-labelauty="20000元"></li> 
        <li><input type="radio" name="inputprice"  id="qita1"data-labelauty="其他金额">
        <br>
       <input type="text" name="qita" id="qita2" onclick="check()" onblur="value_to()" onKeyUp="value=value.replace(/[^\d]/g,'')" style="width:90%;height:30px;"></li>
    </ul>  
  <!--div class="h2"><h2>&nbsp&nbsp充值方式：</h2></div-->
    <ul class="dowebok"> 
        <!--li><input type="radio" name="demo1" value="4" data-labelauty="银行卡支付"></li>  
        <li><input type="radio" name="demo1" value="1" data-labelauty="支付宝支付"></li>                            
        <li><input type="radio" name="demo1" value="2" checked="" data-labelauty="微信支付"></li-->
        <span style="font-size:14px;color:red;">提交前，请准确输入已转账成功给财务的金额！</span>
        <br>
        <br>  
        <button type="button" id="demoBtn1"  class="botton" >立即提交</button>
        <br>       
        <button type="button" onclick="window.location.href='/qr2.php?room=<?php echo $_SESSION['roomid'];?>'" class="botton" >返回大厅</button>
        <br>      
    </ul>
    </form>
  </div>
    <form style='display:none;' id='formpay' name='formpay' method='post' action='./post.php'>    
        <input name='goodsname' id='goodsname' type='text' value='' />
        <input name='istype' id='istype' type='text' value='' />
        <input name='key' id='key' type='text' value=''/>
        <input name='notify_url' id='notify_url' type='text' value=''/>
        <input name='orderid' id='orderid' type='text' value=''/>    
        <input name='orderuid' id='orderuid' type='text' value=''/>
        <input name='price' id='price' type='text' value=''/>
        <input name='return_url' id='return_url' type='text' value=''/>
        <input name='uid' id='uid' type='text' value=''/>
        <input type='submit' id='submitdemo1'>
    </form>
  
<!-- Jquery files -->
<script type="text/javascript" src="https://cdn.staticfile.org/jquery/1.11.1/jquery.min.js"></script> <script type="text/javascript">

     var jQuery_1_11_1 = $.noConflict(true);

</script>
  <script type="text/javascript">
    function check(){
    document.getElementById("qita1").checked = true;
    }
    function value_to(){
    var x = document.getElementById("qita2").value;
   if (x<100){
  alert ("金额不小于100");
$("#demoBtn1").attr("disabled","disabled");
   }else{
      document.getElementById("qita1").value = x;
$("#demoBtn1").removeAttr("disabled");
   }
 }
  </script>

<script type="text/javascript">
$().ready(function(){
    
  function getistype(){  
    var radioss = document.getElementsByName("demo1");                                    
    for(var i=0;i<radioss.length;i++){   
        if(radioss[i].checked){   
            return (radioss[i].value);  
        }   
    }   
    }  
 
  
    function judgeRadioClicked(){  
    var radios = document.getElementsByName("inputprice");                                    
    for(var i=0;i<radios.length;i++){   
        if(radios[i].checked){   
            return (radios[i].value);  
        }   
    }   
    }  
    $("#demoBtn1").click(function(){
        $.post(
            "pay.php",
            {
                 price: judgeRadioClicked(),
                 istype : getistype(),
            },
            function(data){ 
                if (data.code > 0){
                    $("#goodsname").val(data.data.goodsname);
                    $("#istype").val(data.data.istype);
                    $('#key').val(data.data.key);
                    $('#notify_url').val(data.data.notify_url);
                    $('#orderid').val(data.data.orderid);
                    $('#orderuid').val(data.data.orderuid);
                    $('#price').val(data.data.price);
                    $('#return_url').val(data.data.return_url);
                    $('#uid').val(data.data.uid);
                    $('#submitdemo1').click();

                } else {
                    alert(data.msg);
                }
            }, "json"
        );
    });
});
</script> 
<script type="text/javascript">
$(function(){
	$(':input').labelauty();
});
</script> 


</body>
</html>