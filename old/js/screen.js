jQuery(document).ready(function($) {
	$('.hover-on').hover(function() {
	  var src= this.src;
	  this.src= src.replace(/\.(gif|png|jpe?g)$/, '-on.$1');
	}, function() {
	  var src= this.src;
	  this.src= src.replace(/-on\.(gif|png|jpe?g)$/, '.$1');
	});
	
	$('.hover-on').each(function() {
		var src= this.src;
		$('<img/>').attr('src', src.replace(/\.(gif|png|jpe?g)$/, '-on.$1'));
	});
	
	$('a.external').click(function() {
		var href= this.href;
		window.open(href);
		return false;
	});
	
	$('.facebook a').click(function() {
		u = location.href;
		t = document.title;
		window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(u)
		+ '&t=' + encodeURIComponent(t), 'sharer',
		'toolbar=0,status=0,width=626,height=436');
		return false;
	} );
	
//	IE fix.
	$('#projects-list .project:nth-child(3n)').css('margin-right', '0px');
	$('.project-display .project:nth-child(even)').css({float:'left',clear:'left'});
	$('.project-display .project:nth-child(odd)').css({float:'right',clear:'right'});
	$('.project-display .project:first-child').css({float:'none',clear:'both'});
});

function sendContact(form) {
  $('input[name=email_verification]').val('');
}