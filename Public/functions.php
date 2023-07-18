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