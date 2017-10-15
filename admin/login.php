<?php 
include '../includes/config.php';
if(isAdmin()) {
	header('location: index.php');
}

if(!isset($_SESSION['wrongPass'])) {
	$_SESSION['wrongPass'] = 0;
}

if(isset($_POST['password'])) {
	$password = $_POST['password'];

	if($password == LP_ADMIN) {
		$_SESSION['LP_ADMIN'] = $password;
	} else {
		unset($_SESSION['LP_ADMIN']);
		$_SESSION['wrongPass'] +=1;
		sleep($_SESSION['wrongPass']);
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login - Lemon Place Creative</title>
	<link rel="stylesheet" href="../styles.css">
</head>
<body>
	<section class="loginWrapper">
		<div class="login">
			<h1>Whats the secret pass code?</h1>
			<form action="#" method="post">
				<input type="text" name="password" placeholder="Password123" reguired autofocus>
			</form>
		</div>
	</section>
</body>
</html>