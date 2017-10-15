<?php 
session_start();

if ($_SERVER['HTTP_HOST'] == 'localhost') {
	$sitePath = 'http://localhost/lemonplace/';
	mysql_connect('localhost','root','');
	mysql_select_db('lemon_place');
} else {
	$sitePath = 'http://lemonplace.com/';
	mysql_connect('localhost','yossil5_lp','moshiach1');
	mysql_select_db('yossil5_lemon_place');
}

if(isset($_POST)) {
	if(isset($_POST['action'])) {
		$action = mysql_real_escape_string($_POST['action']);
	} else {
		$action = '';
	}

	if(isset($_POST['filter'])) {
		$filter = mysql_real_escape_string($_POST['filter']);
	} else {
		$filter = '';
	}

	if(isset($_POST['search'])) {
		if($action == 'add') {
			$search = mysql_real_escape_string($_POST['search']);
			$_SESSION['search'] = $search;
		} else if($action == 'remove') {
			$_SESSION['search'] = '';
			$search = '';
		}
	} else {
		$search = $_SESSION['search'];
	}

	if($filter != '') {
		if($action == 'remove') {
			if(in_array($filter, $_SESSION['filter'])) {
				unset( $_SESSION['filter'][array_search( $filter, $_SESSION['filter'] )] );
				sort($_SESSION['filter']);
			}
		} elseif($action == 'add') {
			if(!in_array($filter, $_SESSION['filter'])) {
				$_SESSION['filter'][] = $filter;
			}
		}
	}
	

	// $response = $_SESSION['filter'];
	// $response = implode(',', $_SESSION['filter']);
	// $response .= ' - ';


	if(count($_SESSION['filter']) > 0) {
		$filters = '"' . implode('","', $_SESSION['filter']) . '"';

		if ($search == '') {
			$getPortfolio = mysql_query("SELECT category, portfolio.*
								FROM portfolio
								JOIN portfolio_categories on portfolio.id = portfolio_categories.portfolio_id
								AND category IN($filters)
								GROUP BY id
								ORDER BY id DESC");
		} else {
			$getPortfolio = mysql_query("SELECT category, portfolio.*
								FROM portfolio
								JOIN portfolio_categories on portfolio.id = portfolio_categories.portfolio_id
								AND category IN($filters)
								WHERE portfolio.title LIKE '%$search%'
								OR portfolio.description LIKE '%$search%'
								OR portfolio.tags LIKE '%$search%'
								GROUP BY id
								ORDER BY id DESC");
		}
		


	} else {
		if ($search == '') {
			$getPortfolio = mysql_query("SELECT * FROM portfolio ORDER BY id DESC");
		} else {
			$getPortfolio = mysql_query("SELECT * FROM portfolio 
								WHERE portfolio.title LIKE '%$search%'
								OR portfolio.description LIKE '%$search%'
								OR portfolio.tags LIKE '%$search%' ORDER BY id DESC");
		}
	}
	

	$response = '';

	if(mysql_num_rows($getPortfolio) > 0) {
		while($design = mysql_fetch_assoc($getPortfolio)) {
			$response .= '<li>
			<img src="images/portfolio/'.$design['image'].'" alt="'.$design['title'].'">
			<div class="info">
				<h2>'.$design['title'].'</h2>
				<p>'.$design['description'].'</p>
			</div>
		</li>';
		}
	}

	$array = array('response' => $response);

	echo json_encode($array);
}
?>