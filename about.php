<?php 
include 'includes/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>About Us - Lemon Place Creative</title>
	<meta charset="utf-8">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="styles.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="Our Brooklyn studio is a collective of creative professionals amidst leaders in design philosophy and marketing technique. Working quickly and efficiently, we produce stunning designs best suited to your market's needs. We offer premium quality service at the best rates in the top tier end of our design spectrum.">
	<meta name="designer" content="Custom site / CursorBlue.com">
	<link rel="icon" href="icon.png" type="image/x-icon" />
</head>
<body>
	<?php $activePage = 'about'; ?>
	<?php include 'templates/mainNav.php'; ?>

	<section id="about">
		
		<div class="wrapper">
			<div id="who">
				<h1>We are lemon place creative</h1>
				<p>Our Brooklyn studio is a collective of creative professionals amidst leaders in design philosophy and marketing technique. Working quickly and efficiently, we produce stunning designs best suited to your market's needs. We offer premium quality service at the best rates in the top tier end of our design spectrum.</p>
			</div>

			<ul id="designers">
				<?php //echo html_entity_decode($designers); ?>
				<?php foreach (designers() as $designer): ?>
				<li>

					<img src="images/designers/<?=$designer['image'];?>" alt="<?=$designer['name'];?>" rel="images/designers/<?=$designer['image_hover'];?>">
					<h3><?=$designer['name'];?></h3>
					<h4><?=$designer['position'];?></h4>
					<p><?=html_entity_decode($designer['description']);?></p>
				</li>
				<?php endforeach; ?>
			</ul>
		</div>

	</section>

	<section id="testimonials">
		
		<div class="wrapper">
			
			<h2>What are they saying about us?</h2>
			
			<div id="testimonialWrapper">
				<a class="icon" href="#" id="slider-prev"></a>
				<a class="icon" href="#" id="slider-next"></a>
				
				<ul>
					<li>"Quick turnaround, plenty of patience for my changes and Shluchim friendly pricing. Within 12 hours of my initial email I had a finished product in my inbox. Thank You so very much."  – <em>Rivka Caroline</em></li>

					<li>"This looks beautiful! And your timing puts all graphic artists to shame-- seriously- this is the fastest production we've ever had for the most complicated job and we've done quite a few so far." – <em>Chanel Lipskar</em></li>

					<li>"I needed a "Rush job" flyer done for a project, I handed in the info. and shortly after that I had a professional product for a great price. All changes were edited right away - no wait, no hassle, affordable price and a professional job done. "o the Great service!" – <em>Rabbi M. Nakar</em></li>

					<li>"Just completed my first job with Sruly. I was blown away by not just his amazing talent and creativity, but his endless patience and professionalism. Sruly is the perfect combination of artistry and amiability. I look forward to working with him very soon." – <em>Chanie Kaminker, Hannabi Marketing</em></li>

					<li>"Job done way above my greatest expectations." - <em>Malky Sperlin</em></li>

					<li>"Thanks for quick, good work!" - <em>Nechama Gurevitz</em></li>

					<li>"Awesome job, quick responses!" - <em>Rabbi M. Nagel</em></li>

					<li>"It was just a great job!" - <em>Rabbi E. Silverman</em></li>

					<li>"Sruly! you continue to amaze with your beautiful work, awesome job. Keep it up!" - <em>Rabbi S. Lebowitz</em></li>
				</ul>

				<div id="testimonialsPager">
					
				</div>
			</div>

		</div>

	</section>

	<section id="clients">
		
		<div class="wrapper">
			<h5>We are so proud of our clients</h5>

			<ul>
				<li><img src="images/Kehos.png" alt="Kehos"></li>
				<li><img src="images/ChabadOnCampus.png" alt="Chabad On Campus"></li>
				<li><img src="images/MachonStam.png" alt="Machon Stam"></li>
				<li><img src="images/Mink.png" alt="Mink"></li>
				<li><img src="images/ChabadIsraelCenter.png" alt="Chabad Israel Center"></li>
			</ul>
		
		</div>
	</section>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="functions.min.js"></script>
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