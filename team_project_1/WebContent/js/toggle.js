/**
 * 
 */

$(function() {
	$(".list").each(function() {
		$(this).find("a").click(function() {
			$(this).next().slideToggle();
		});
	});
});