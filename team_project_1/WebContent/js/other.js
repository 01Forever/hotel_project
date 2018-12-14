
$(document).ready(function() {
	/*
	$("#other > li").hover(function() {
		if($(window ).width() > 600){
			//alert($(this).find());
			if($(this).find("ul").is(':visible') == false){
				$(this).find("ul").slideDown(200);
			}
		} else {
			$(this).find("ul").css("display" , "none");
		}
	}, function() {
		if($(window).width() > 600 ){
			if($(this).find("ul.sub_menu").is(':visible') == true){
				$(this).find("ul").slideUp(200);
			}
		} else {
			$(this).find("ul").css("display" , "none");
		}
	});
	*/
	
	$("#other > li > ul").css("display","none");
	$("#other > li").click(function() {
		if($(window).width() > 600 ){
			if($(this).find("ul").is(':visible') == false){
				$(this).find("ul").slideDown(200);
			} else {
				$(this).find("ul").slideUp(200);
			}
		} else {
			$(this).next("nav").find("ul").css("display","none");
		}
	});
	
	$("button.m_menu_btn").click(function() {
		if($(window).width() <= 600 ){
			if($(this).next("nav").find("ul").is(':visible') == false){
				$(this).next("nav").find("ul").slideDown(200);
			} else {
				$(this).next("nav").find("ul").slideUp(200);
			}
		} else {
			$(this).next("nav").find("ul").css("display","none");
		}
	});
});