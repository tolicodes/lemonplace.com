<?php 
session_start();

if(isset($_POST['password'])) {
	$password = $_POST['password'];

	if($password == 'lemonA1d') {
		$_SESSION['lemons'] = 'lemonA1d';
	} else {
		unset($_SESSION['lemons']);
	}
	
}

if(!isset($_SESSION['lemons']) || $_SESSION['lemons'] != 'lemonA1d') {
	unset($_SESSION['lemons']);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login - Lemon Place</title>
	<meta charset="utf-8">
</head>
<body>
	<form action="#" method="post">
		
		<label for="password">Password</label>
		<input type="password" name="password" id="password">

		<input type="submit" value="Log on">

	</form>
</body>
</html>
<?php
} else {

if ($_SERVER['HTTP_HOST'] == 'localhost') {
	$sitePath = 'http://localhost/lemonplace/';
	mysql_connect('localhost','root','');
	mysql_select_db('lemon_place');
} else {
	$sitePath = 'http://lemonplace.com/';
	mysql_connect('localhost','yossil5_lp','moshiach1');
	mysql_select_db('yossil5_lemon_place');
}

if(isset($_GET['deletePortfolio'])) {
	$id = (int)$_GET['deletePortfolio'];

	$deletePortfolio = mysql_query("DELETE FROM portfolio WHERE id = $id LIMIT 1");
	$deletePortfolioCategories = mysql_query("DELETE FROM portfolio_categories WHERE portfolio_id = $id");
	header('location: admin.php');
}

if(isset($_GET['deleteDesigner'])) {
	$id = (int)$_GET['deleteDesigner'];

	$deleteDesigner = mysql_query("DELETE FROM designers WHERE id = $id LIMIT 1");
	header('location: admin.php');
}

$portfolio = '';
$getPortfolio = mysql_query("SELECT id,title FROM portfolio");
while ($design = mysql_fetch_assoc($getPortfolio)) {
	$portfolio .= '<li><a href="admin.php?deletePortfolio='.$design['id'].'">'.$design['title'].'</a></li>';
}

$designers = '';
$getDesigners = mysql_query("SELECT id,name FROM designers");
while ($designer = mysql_fetch_assoc($getDesigners)) {
	$designers .= '<li><a href="admin.php?deleteDesigner='.$designer['id'].'">'.$designer['name'].'</a></li>';
}

// insert new designer
if(isset($_POST['designer'])) {
	$name = mysql_real_escape_string($_POST['name']);
	$position = mysql_real_escape_string($_POST['position']);
	$picture = $_FILES['picture']['name'];
	$picture_hover = $_FILES['picture_hover']['name'];
	$dDescription = htmlentities(mysql_real_escape_string(stripslashes($_POST['dDescription'])));
	
	move_uploaded_file($_FILES['picture']['tmp_name'], 'images/designers/'.$picture);
	move_uploaded_file($_FILES['picture_hover']['tmp_name'], 'images/designers/'.$picture_hover);

	$insertDesigner = mysql_query("INSERT INTO designers (name, position, description, image, image_hover)
										VALUES ('$name', '$position', '$dDescription', '$picture', '$picture_hover')") or die(mysql_error());

	header('location: admin.php');
}

// insert new portfolio option
if(isset($_POST['portfolio'])) {
	$title = mysql_real_escape_string($_POST['title']);
	$image = $_FILES['image']['name'];
	$categories = $_POST['category'];
	$description = mysql_real_escape_string($_POST['description']);
	$tags = mysql_real_escape_string($_POST['tags']);

	move_uploaded_file($_FILES['image']['tmp_name'], 'images/portfolio/'.$image);
	$insertPortfolio = mysql_query("INSERT INTO portfolio (title, image, description, tags)
									VALUES ('$title', '$image', '$description', '$tags')") or die(mysql_error());

	$portfolio_id = mysql_insert_id();
	for ($i=0; $i < count($categories); $i++) { 
		$category = mysql_real_escape_string($categories[$i]);

		$insertCategory = mysql_query("INSERT INTO portfolio_categories (portfolio_id, category)
										VALUES ('$portfolio_id', '$category')") or die(mysql_error());
	}

	header('location: admin.php');
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Admin Center - Lemon Place</title>
	<meta charset="utf-8">
</head>
<body>
	<h1>Portfolio</h1>
	<p>Click to delete, there is no sorting feature so be careful when deleting</p>
	<ul>
		<?php echo $portfolio; ?>
	</ul>

	<h3>Insert New Portfolio</h3>

	<form action="#" method="post" enctype="multipart/form-data">
		
		<label for="title">Title</label>
		<input type="text" name="title" id="title" required><br>
		
		<label for="image">Image</label>
		<input type="file" name="image" id="image" required><br>

		<p>Categories</p>

		<input type="checkbox" name="category[]" value="Brands" id="Brands"> <label for="Brands">Brands</label><br>
		<input type="checkbox" name="category[]" value="Ads" id="Ads"> <label for="Ads">Ads</label><br>
		<input type="checkbox" name="category[]" value="Holidays" id="Holidays"> <label for="Holidays">Holidays</label><br>
		<input type="checkbox" name="category[]" value="Websites" id="Websites"> <label for="Websites">Websites</label><br>
		<input type="checkbox" name="category[]" value="Prints" id="Prints"> <label for="Prints">Prints</label><br>

		<label for="description">Description</label><br>
		<textarea name="description" id="description" cols="30" rows="10"></textarea><br>

		<label for="tags">Tags</label>
		<input type="text" name="tags" id="tags"><br>

		<input type="submit" name="portfolio" value="upload">

	</form>

	<hr>

	<h1>Designers</h1>
	<p>Click to delete, there is no sorting feature so be careful when deleting</p>
	<ul>
		<?php echo $designers; ?>
	</ul>

	<h3>Insert New Designer</h3>

	<form action="#" method="post" enctype="multipart/form-data">
		
		<label for="name">Name</label>
		<input type="text" name="name" id="name" required><br>

		<label for="position">Position</label>
		<input type="text" name="position" id="position" required><br>

		<label for="picture">Picture</label>
		<input type="file" name="picture" id="picture" required><br>

		<label for="picture_hover">Picture Hover</label>
		<input type="file" name="picture_hover" id="picture_hover" required><br>

		<label for="dDescription">Description</label><br>
		<textarea name="dDescription" id="dDescription" cols="30" rows="10"></textarea><br>

		<input type="submit" name="designer" value="Add Designer">


	</form>
</body>
</html>

<?php
}
?>