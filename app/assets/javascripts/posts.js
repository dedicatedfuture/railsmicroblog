$(document).ready(function(){
	
	$(".comment-button").click(function(e){
		e.preventDefault();
		var $thisPost = $(this).closest('.whole-post');
		$thisPost.find(".comment-field").toggle();
	})

	$(".comment-view").click(function(e){
		e.preventDefault();
		var $thisPost = $(this).closest('.whole-post');
		$thisPost.find(".comment").toggle();
	})




});