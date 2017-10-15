<?php 
session_start();

switch ($_SERVER['HTTP_HOST']) {
	case 'localhost':
		$sitePath = 'http://localhost/lemonplace/';
		$connect = mysqli_connect('localhost','root','','lemon_place');
		
		try {
			$db = new PDO('mysql:host=localhost;dbname=lemon_place', 'root', '');
			$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
		    echo 'Connection failed: ' . $e->getMessage();
		}

		break;
	
	default:
		$sitePath = 'http://lemonplace.com/';
		$connect = mysqli_connect('localhost','yossil5_lp','moshiach1', 'yossil5_lemon_place');

		try {
			$db = new PDO('mysql:host=localhost;dbname=yossil5_lemon_place', 'yossil5_lp', 'moshiach1');
			$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
		    echo 'Connection failed: ' . $e->getMessage();
		}
		break;
}

$activePage = '';
define('LP_ADMIN', 'lemonA1d');
include 'functions.php';
?>