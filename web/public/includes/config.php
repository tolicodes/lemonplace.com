<?php 
session_start();

switch ($_SERVER['HTTP_HOST']) {
	// docker
	case 'localhost:8070':
		$sitePath = 'http://localhost:8010/';
		
		$host = 'mysql_lemonplace';
		$user = 'root';
		$password = 'root';
		$database = 'test';

		$connect = mysqli_connect($host, $user, $password, $database);
		
		try {
			$db = new PDO('mysql:host=' . $host . ';dbname=' . $database, $user, $password);
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