<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact Us - Lemon Place Creative</title>
	<meta charset="utf-8">
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="styles.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="Let’s get the ball rolling, Give us a call at (347)­ 915-5566 or drop us a note with any suggestion or comment you may have at hello@lemonplace.com. Please send all possible information about what you need. Communication is the key to success. Every project is special to us. Cheers!">
	<meta name="designer" content="Custom site / CursorBlue.com">
	<link rel="icon" href="icon.png" type="image/x-icon" />
</head>
<body>
	<?php $activePage = 'contact'; ?>
	<?php include 'templates/mainNav.php'; ?>


	<section id="contact">
		<div class="wrapper">
			
			<div id="contactFrom">
				<span>&nbsp;</span>

				<div class="contactSocial">
					<h1>Hey there!</h1>
					<ul>
						<li><a target="_BLANK" href="http://fb.com/lemonplace">K</a></li>
						<li><a target="_BLANK" href="http://instagram.com/lemonplace">I</a></li>
						<li><a target="_BLANK" href="http://twitter.com/lemon_place">t</a></li>
						<li><a target="_BLANK" href="http://lemonplace.com/blog.php">T</a></li>
					</ul>
				</div>

				<div id="contactResponse">&nbsp;</div>
				<form action="#" method="post">

					<p>Communication is the key to success. If you’d like to hire us, please fill out all the information you currently have that will help us deliver your project efficiently in the from below or at <a href="mailto:hello@lemonplace.com">hello@lemonplace.com</a></p>
					<p>Every project is special to us. Cheers!</p>

					<ul class="fields">
						<li class="half">
							<input type="text" name="fname" placeholder="First Name" required>
						</li>

						<li class="half right">
							<input type="text" name="lname" placeholder="Last Name" required>
						</li>

						<li class="half">
							<input type="email" name="email" placeholder="Email" required>
						</li>

						<li class="half right">
							<input type="text" name="company" placeholder="Company">
						</li>

						<li class="checklist half">
							<h3>Timeframe</h3>
							<ul>
								<li>
									<input type="radio" name="timeframe" id="timeframe-rush" value="Rush">
									<label for="timeframe-rush">Right Away (50% rush charge)</label>
								</li>

								<li>
									<input type="radio" name="timeframe" id="timeframe-2weeks" value="2 Weeks">
									<label for="timeframe-2weeks">Within 2 weeks</label>
								</li>

								<li>
									<input type="radio" name="timeframe" id="timeframe-4weeks" value="4 Weeks">
									<label for="timeframe-4weeks">Within 4 weeks</label>
								</li>

								<li>
									<input type="radio" name="timeframe" id="timeframe-dontknow" value="Dont Know">
									<label for="timeframe-dontknow">Dont Know yet</label>
								</li>

								<li>
									<input type="radio" name="timeframe" id="timeframe-notapplicable" value="Dont Know">
									<label for="timeframe-notapplicable">Not applicable</label>
								</li>
							</ul>
						</li>

						<li class="checklist half right">
							<h3>Budget</h3>

							<ul>
								<li>
									<input type="radio" name="budget" id="budget-1" value="$200 - $500">
									<label for="budget-1">$200 - $500 <em>lemon head</em></label>
								</li>

								<li>
									<input type="radio" name="budget" id="budget-2" value="$500 - $1000">
									<label for="budget-2">$500 - $1000 <em>lemonade</em></label>
								</li>

								<li>
									<input type="radio" name="budget" id="budget-3" value="$1000 - $3000">
									<label for="budget-3">$1000 - $3000 <em>limoncello</em></label>
								</li>

								<li>
									<input type="radio" name="budget" id="budget-4" value="$3000+">
									<label for="budget-4">$3000+ <em>limon meringue</em></label>
								</li>

								<li><em>This will give us a better idea of the scope of your project</em></li>
							</ul>
						</li>

						<li class="full">
							<textarea name="message" placeholder="Hey, let's get in touch." ></textarea>
						</li>
					</ul>

					<input type="submit" value="D">
				</form>
			</div>

		</div>
	</section>

	<section id="map">
		<div class="wrapper">
			<iframe src="https://www.google.com/maps/embed?pb=!1m5!3m3!1m2!1s0x89c25b79678200cd%3A0x37d764cfa36e0cca!2sLemon+Place+Creative!5e0!3m2!1sen!2sus!4v1387166001493" frameborder="0" style="border:0"></iframe>
		</div>
	</section>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
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