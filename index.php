<?php 
include 'includes/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Lemon Place Creative</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="styles.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="See for yourself why so many have already chosen us to work on their creative projects, we hope you enjoy what you see as much as we do.">
	<meta name="publisher" content="cursorblue.com">
	<link rel="apple-touch-icon-precomposed" href="/apple-touch-icon-precomposed.png"/>
	<meta property="og:image" content="http://lemonplace.com/images/og-share.png" />
	<link rel="icon" href="icon.png" type="image/x-icon" />
</head>
<body class="home">

	<section id="intro">
		
		<div class="wrapper">
			
			<div id="logo">
				<img src="images/introlemon.svg" onerror="this.src=images/introlemon.png" alt="lemon">
				<span>&nbsp;</span>
			</div>

			<!-- <h1>lemon place</h1>
			<ul>
				<li>creative</li>
				<li>branding</li>
				<li>marketing</li>
				<li>design</li>
				<li>writing</li>
				<li>printing</li>
			</ul> -->

			<div class="login-work">
				<a href="#" id="loginBTN" class="button">Client Login</a>			

				<div style="width: 47px; margin:auto;"><a href="#" id="moreWork">a</a></div>
			</div>

		</div>

	</section>

	<div class="pusherFix"></div>

	<section class="workWrapper">
		<?php include 'templates/mainNav.php'; ?>
		<section id="portfolio">
			<div class="wrapper">
				<ul id="portfolioItems" class="portfolioItems">
					<?php foreach (projects() as $project): ?>
						<li class="showing" data-id="<?=$project['id'];?>" data-title="<?=$project['title'];?>" data-url="<?=$project['url'];?>" data-description="<?=$project['description'];?>" data-categories="<?=$project['categories'];?>">

							<img class="portfolioImage" src="images/portfolio/<?=$project['image'];?>" alt="<?=$project['title'];?>">

							<div class="showProject">
								<img src="images/picturebox.svg" alt="View Project">
							</div>
						</li>
					<?php endforeach; ?>
				</ul>
			</div>
		</section>
	</section>


	<a href="#" class="triggerSearch">
		<i class="search">S</i>
		<i class="close">X</i>
	</a>
	<div class="searcher">
		<div class="wrapper">
			<div class="searchFeild">
				<input type="text" name="search" placeholder="Search" autocomplete="off">
			</div>

			<ul class="tags">
				<li><a href="#">Branding</a></li>
				<li><a href="#">Ads</a></li>
				<li><a href="#">Holidays</a></li>
				<li><a href="#">Websites</a></li>
				<li><a href="#">Prints</a></li>
			</ul>
		</div>
	</div>


	<div class="projectTint">&nbsp;</div>
	 <section class="projectWrapper">
		<nav>
			<a href="#" class="prev"><i>r</i>Prev</a>
			<a href="#" class="close"><i>v</i></a>
			<a href="#" class="next">Next<i>q</i></a>
		</nav>
		
		<div class="project">
			<section class="description">
				<h1>&nbsp;</h1>
				<a href="#" target="_BLANK">&nbsp;</a>
				<p>&nbsp;</p>
			</section>
			<div class="descriptionHeight">
				<h1>&nbsp;</h1>
				<a href="#" target="_BLANK">&nbsp;</a>
				<p>&nbsp;</p>
			</div>

			<div class="projectImages">
				<ul>
					<li>&nbsp;</li>
				</ul>
			</div>
		</div>
	</section>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="functions.min.js?"></script>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-16638779-2', 'lemonplace.com');
ga('require', 'displayfeatures');
ga('send', 'pageview');
</script>
</html>