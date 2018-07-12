$(function() {
	$('#intro').css('min-height', $(window).height() - $('#mainNav').height());
	$('#portfolioWrap').css('min-height', $(window).height());

	// if ($(window).height() <= 900) {
	// 	$('#intro .wrapper').css('padding-top', '100px');
	// }

	$(window).scroll(function(e){
		var top = $(document).scrollTop();
		if(top < 0) {
			top = 0;
		}

		//Animate Lemon
		// $('#logo').rotate(top);
		// $('#logo span').rotate(-top * 2);
		$('#logo span').rotate(-top);
		$('#logo span').css({
			'top' : -top + 'px',
			'left' : -top + 'px',
			'border-width' : top + 'px'
		});

	});

	$(window).scroll(function(e){
		var top = $(document).scrollTop();

		//Animate Fish
		$('#development .image').css({
			'background-position-x' : -top + 'px',
			'background-position-y' : top + 'px'
		});
	});

	$('#loginBTN').click(function() {
		return false;
	});

	$("#loginBTN").hover(
		function() {
			$(this).html('Coming Soon');
		}, function() {
			$(this).html('Client Login');
		}
	);

	// $("#faq a").hover(
	// 	function() {
	// 		$(this).html('Coming Soon');
	// 	}, function() {
	// 		$(this).html('FAQ');
	// 	}
	// );
	// $('#faq a').click(function() {
	// 	return false;
	// });

	// sorting the portfolio
	var sortPortfolio = function() {
		if ($(window).width() > 768) {
			$('#portfolioItems li:even').appendTo('#leftPortfolio');
			$('#portfolioItems li').appendTo('#rightPortfolio');
		}	
	}

	sortPortfolio();

	// portfolio popup
	$(document).keyup(function(e) {
    	if (e.keyCode == 27) { // Esc
        	closeSlideOut();
    	}
	});

	// CLICKING ON OVERLAY
	$('body').click(function(e){
	 	if($(e.target).attr('class') == 'overlay') {
	 		closeSlideOut();
	 	}
	});

	closeSlideOut = function() {
		$('.overlay').fadeOut(400);
		$('.projectWrapper').removeClass('showing');
		$('.description h1, .description a, .description p').animate({
			'opacity': 0
		}, 500);
		$('.projectImages').removeClass('showing');
	}

	$('body').on('click', '#portfolioWrap li', function() {
		// console.log($('#portfolioWrap li').length);
		// console.log($(this).data('title'));
		$('.description h1, .description a, .description p').css({
			'opacity': 0
		});
		$this = $(this);
		$('#portfolioWrap li').removeClass('active');
		$this.addClass('active');


		// slide in popup
		$('.overlay').fadeIn(400);
		$('.description h1, .description a, .description p').delay(200).animate({
			'opacity': 1
		}, 300);
		setTimeout(function() {
			$('.projectImages').addClass('showing');
		}, 200);
		$('.projectWrapper').addClass('showing');

		return false;
	});

	// ADMIN SIDEBAR
	$('body').on('click', '.porfolioProjects li', function() {
		$this = $(this);
		// slide in popup
		$('.overlay').fadeIn(400);
		$('.projectWrapper').addClass('showing');

		return false;
	});


	// search
	$('#search form').submit(function() {
		var term = $('#searchInput').val();
		$('#searchInput').val('');

		$.ajax({
			type : 'POST',
			url : 'includes/portfolioFilter.php',
			data : 'action=add&search=' + term + '',
			dataType : 'json',
			success : function(data) {
				$('#searchTags').html('<li><a href="#">'+ term +'</a></li>');
				if($('.portfolioItems').length) {
					console.log(data.response);
					$('.portfolioItems').fadeOut(500, function() {
						$('.portfolioItems').empty();

						$('#portfolioItems').html(data.response);
						sortPortfolio();
					});
					$('.portfolioItems').fadeIn(500);
				} else {
					$('.porfolioProjects li:not(.newProject)').remove();
					$('.porfolioProjects').append(data.response);
					$('.porfolioProjects li').each(function() {
						if($('.portfolioImage', this).width() > $('.portfolioImage', this).height()) {
							$(this).addClass('land');
						}
					});
				}
			},
			error : function(data) {
				console.log('error occurred');
			}
		});

		return false;
	});

	$('#searchTags').on('click', 'li a', function() {
		var term = $(this).html();
		$(this).fadeOut(500);

		$.ajax({
			type : 'POST',
			url : 'includes/portfolioFilter.php',
			data : 'action=remove&search=' + term + '',
			dataType : 'json',
			success : function(data) {
				if($('.portfolioItems').length) {
					console.log(data.response);
					$('.portfolioItems').fadeOut(500, function() {
						$('.portfolioItems').empty();

						$('#portfolioItems').html(data.response);
						sortPortfolio();
					});
					$('.portfolioItems').fadeIn(500);
				} else {
					$('.porfolioProjects li:not(.newProject)').remove();
					$('.porfolioProjects').append(data.response);
					$('.porfolioProjects li').each(function() {
						if($('.portfolioImage', this).width() > $('.portfolioImage', this).height()) {
							$(this).addClass('land');
						}
					});
				}
			},
			error : function(data) {
				console.log('error occurred');
			}
		});

		return false;
	});

	// tag filers
	$('#tags li a').click(function() {
		var $this = $(this);
		var filter = $this.html();

		if($this.hasClass('active')) {
			$this.removeClass('active');
			var action = 'remove';
		} else {
			$this.addClass('active');
			var action = 'add';
		}

		$.ajax({
			type : 'POST',
			url : 'includes/portfolioFilter.php',
			data : 'action='+ action + '&filter=' + filter + '',
			dataType : 'json',
			success : function(data) {
				if($('.portfolioItems').length) {
					console.log(data.response);
					$('.portfolioItems').fadeOut(500, function() {
						$('.portfolioItems').empty();

						$('#portfolioItems').html(data.response);
						sortPortfolio();
					});

					$('.portfolioItems').fadeIn(500);
				} else {
					$('.porfolioProjects li:not(.newProject)').remove();
					$('.porfolioProjects').append(data.response);
					$('.porfolioProjects li').each(function() {
						if($('.portfolioImage', this).width() > $('.portfolioImage', this).height()) {
							$(this).addClass('land');
						}
					});
				}
			},
			error : function(data) {
				console.log('error occurred');
			}
		});

		return false;
	});

	$("#getStarted").hover(
		function() {
			$(this).html('Coming Soon');
		}, function() {
			$(this).html('Let\'s get started');
		}
	);

	// var setBounce = setInterval(function(){bounce()},2000);
	// function bounce() {
	// 	$('#moreWork').effect("bounce", { 
	// 		times: 20,
	// 		distance: 50,
	// 	}, 3000);
	// }

	$('#moreWork').click(function() {
		$("html, body").animate({ scrollTop: $('#portfolio').offset().top }, 1000);
	});

	var stickyNavTop = $('#mainNav').offset().top;  
  
	var stickyNav = function(){  
	var scrollTop = $(window).scrollTop();  
	       
	if (scrollTop > stickyNavTop) {   
	    $('#mainNav').addClass('sticky');
	    $('#mainNav').next().css('padding-top', '69px');
	} else {  
	    $('#mainNav').removeClass('sticky');
	    $('#mainNav').next().css('padding-top', '0px');  
	}  
	};  
	  
	stickyNav();  
	  
	$(window).scroll(function() {  
	    stickyNav();  
	});

	$('#searchInput').focus(function() {
		$('#searchInputLabel').html('Press Enter to filter');
	});

	$('#searchInput').blur(function() {
		$('#searchInputLabel').html('&nbsp;');
	});

	// $('#mainNav li:first-child').html($('#mainNav li .active').attr('rel'));
	$('#mainNav li:first-child').html('&nbsp;');
	$("#mainNav li a").hover(
		function() {
			var tag = $(this).attr('rel');
			$('#mainNav li:first-child').html(tag);
		}, function() {
			$('#mainNav li:first-child').html('&nbsp;');
		}
	);

	if($('#portfolio').length) {
		var stickyFilterTop = $('#portfolio').offset().top; 
  
		var stickyFilter = function(){  
			var scrollTop = $(window).scrollTop();  
			       
			if (scrollTop > stickyFilterTop) {
			    $('#filter').addClass('stickyFilter'); 
			} else {  
			    $('#filter').removeClass('stickyFilter');   
			}  
		};  
		  
		stickyFilter();

		$(window).scroll(function() {  
		    stickyFilter();
		});
	}

	$('#extended a').click(function() {
		$(this).html('Coming Soon');

		return false;
	});

	if($('#links').length) {
		$(window).scroll(function() {  
			$('#links').css('top', $(window).scrollTop() + ($(window).height()/2) + 'px');
		});

		$('#links li a').click(function() {
			var target = $(this).attr('href');
			$("html, body").animate({ scrollTop: $(target).offset().top -69}, 1000);
			$('#links li a').removeClass('active');
			$(this).addClass('active');

			$(target + ' .text').fadeOut(500);
			$(target + ' .additional').slideDown(500);

			return false;
		});
	}

	if($('#testimonials').length) {
		$('#testimonials ul').bxSlider({
			mode: 'fade',
			speed: 1000,
			auto: true,
			touchEnabled: true,
			adaptiveHeight: true,
			mode: 'fade',
			pagerSelector: '#testimonialsPager',
			nextSelector: '#slider-next',
			prevSelector: '#slider-prev',
			nextText: 'n',
			prevText: 'r'
		});
	}

	$(window).scroll(function(e){
		var top = $(document).scrollTop();

		//Animate Fish
		$('#development .image').css({
			'background-position-x' : -top + 'px',
			'background-position-y' : top + 'px'
		});
	});


	// Contact form
	if ($('#contactFrom').length > 0) {
		$('#contactFrom form').submit(function() {

			$('#contactFrom em').remove();
			var fields = $(this).serializeArray();

			$.ajax({
				type : 'POST',
				url : 'includes/contactFrom.php',
				data : fields,
				dataType : 'json',
				success : function(data) {
					if(data.error) {
						$.each(data.fields, function(k, v) {

							$('.' + k).append('<em>' + v + '</<em>');

							$('#contactFrom em').fadeIn(500);

						});
					} else {
						$('#contactFrom form').fadeOut(500, function() {
							$('#contactResponse').html(data.response).fadeIn(500);
						});
					}
				},
				error : function(data) {
					console.log('error occurred');
				}
			});

			return false;

		});
	}


	// designers hover
	$("#designers li img").hover(
		function() {
			var orig = $(this).attr('src');
			$(this).attr('src', $(this).attr('rel')).attr('rel', orig);
		}, function() {
			var orig = $(this).attr('src');
			$(this).attr('src', $(this).attr('rel')).attr('rel', orig);
		}
	);

});

 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 ga('create', 'UA-16638779-2', 'lemonplace.com');
 ga('require', 'displayfeatures');
 ga('send', 'pageview');