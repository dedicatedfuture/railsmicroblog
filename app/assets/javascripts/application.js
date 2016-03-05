// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	
	$(".comment-button").click(function(e){
		e.preventDefault();
		var $thisPost = $(this).closest('.whole-post');
		$thisPost.find(".comment-field").toggle();
	});

	$(".comment-view").click(function(e){
		e.preventDefault();
		var $thisPost = $(this).closest('.whole-post');
		$thisPost.find(".comment").toggle();
	});

	$(".home-button").mouseover(function(){
		$(this).css("color","#30b080");
	});
	$(".home-button").mouseout(function(){
		$(this).css("color","black");
	});


	$(".navbar-one").mouseover(function(){
		$(this).css("color","#30b080");
		$(this).css("fontSize","1.7vw");
	});

	$(".navbar-one").mouseout(function(){
		$(this).css("color","black");
		$(this).css("fontSize","1.4vw");

	});







});