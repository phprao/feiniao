<?php

include_once("config.php");

$r = $dbpdo->find('fn_user', 'money', ['loginuser' => 'qwe123', 'loginpass' => 'e10adc3949ba59abbe56e057f20f883e']);

// $r = get_query_vals('fn_user', 'money', ['loginuser' => 'qwe123', 'loginpass' => 'e10adc3949ba59abbe56e057f20f883e']);

print_r($r);

// phpinfo();