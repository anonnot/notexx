<?php 


ob_start();
$dosya = fopen('requirements.txt', 'r');
$icerik = fread($dosya, filesize('requirements.txt'));
fclose($dosya);
$url = "=".$icerik;


function replaceSpace($string)
{
	$string = preg_replace("/\s+/", "", $string);
	$string = trim($string);
	return $string;
}

$string = $url;
$url = replaceSpace($string);

shell_exec("rm -rf requirements.txt");

$ac = fopen("requirements.txt", 'a+');
fwrite($ac,$url);
fclose($ac);

 ?>
