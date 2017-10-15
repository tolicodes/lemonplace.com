<?php 
include '../includes/config.php';
if(!isAdmin()) {
	header('location: login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin Center - Lemon Place Creative</title>
	<link rel="stylesheet" href="../styles.css">
</head>
<body>
<?php $activePage = 'portfolio'; ?>
<?php include '../templates/adminNav.php'; ?>

<section class="portfoloWrapper">
	<div class="wrapper">
		<div class="adminFilters">
			<div id="search">
				<form action="#" method="post">
					<input type="text" name="search" id="searchInput" placeholder="Search">
				</form>	
			</div>
			<ul class="tags">
				<li><a href="#">Branding</a></li>
				<li><a href="#">Ads</a></li>
				<li><a href="#">Holidays</a></li>
				<li><a href="#">Websites</a></li>
				<li><a href="#">Prints</a></li>
			</ul>
		</div>


		<ul class="porfolioProjects">
			<li class="newProject"><p><span>+</span> New Project</p></li>
			<?php foreach (projects() as $project): ?>
				<li class="showing" data-id="<?=$project['id'];?>" data-title="<?=$project['title'];?>" data-url="<?=$project['url'];?>" data-description="<?=$project['description'];?>" data-categories="<?=$project['categories'];?>">

					<img class="portfolioImage" src="../images/portfolio/<?=$project['image'];?>" alt="<?=$project['title'];?>">

					<div class="showProject">
						<img src="../images/picturebox.svg" alt="View Project">
					</div>
				</li>
			<?php endforeach; ?>
		</ul>
	</div>
</section>

<div class="projectTint">&nbsp;</div>
<section class="projectWrapper">
	<nav>
		<a href="#" class="save">Save</a>
		<a href="#" class="cancel">Cancel</a>
		<a href="#" class="delete">Delete</a>
	</nav>
	
	<div class="project">
		<form action="#" method="post">
			<div class="projectDetails">
				<input type="text" name="title" placeholder="Title" required>
				<input type="text" name="url" placeholder="URL">

				<textarea name="description" placeholder="Description..."></textarea>

				<div class="projectCategories">
					<!-- <label><input type="checkbox" name="category[]" value="Brands">Brands</label>
					<label><input type="checkbox" name="category[]" value="Ads">Ads</label>
					<label><input type="checkbox" name="category[]" value="Holidays">Holidays</label>
					<label><input type="checkbox" name="category[]" value="Websites">Websites</label>
					<label><input type="checkbox" name="category[]" value="Prints">Prints</label> -->
					<input type="checkbox" name="category[]" value="Branding" id="Branding"> <label for="Branding">Branding</label>
					<input type="checkbox" name="category[]" value="Ads" id="Ads"> <label for="Ads">Ads</label>
					<input type="checkbox" name="category[]" value="Holidays" id="Holidays"> <label for="Holidays">Holidays</label>
					<input type="checkbox" name="category[]" value="Websites" id="Websites"> <label for="Websites">Websites</label>
					<input type="checkbox" name="category[]" value="Prints" id="Prints"> <label for="Prints">Prints</label>
				</div>
			</div>

			<div class="projectImages showing">
				<input type="file" id="projectImages" multiple>
				<div class="uploadImages">
					<span class="text">Drag images to add</span>
					<span class="progress">&nbsp;</span>
				</div>
				<ul></ul>
			</div>
			<input type="hidden" name="project" value="">
		</form>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="../functions.min.js?<?=time();?>"></script>
<script>
	$('.porfolioProjects li').each(function() {
		if($('.portfolioImage', this).width() > $('.portfolioImage', this).height()) {
			$(this).addClass('land');
		}
	});
</script>
</body>
</html>