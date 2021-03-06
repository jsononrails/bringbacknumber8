// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery.ui.all
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function() {
	var petitionPage = {
		init: function() {
			var $notice = $(".notice");
			
			if($notice !== 'undefined')
				$notice.delay(3000).fadeOut('slow', function() {
					window.location.href = "#hero";
				});
		},
	};
	
	$(function() {
		petitionPage.init();
		$("#user-comments").vTicker({
		speed: 500,
		pause: 5000,
		showItems: 1,
		animation: 'fade',
		mousePause: false,
		height: 0,
		direction: 'up',
		position: 'absolute'
		});
		
		$("#user-comments ul li").delay(800).show();
	});
}());

/* google tracking */
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-51758806-1', 'bringbacknumber8.com');
  ga('send', 'pageview');
