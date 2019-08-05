$(document).ready(function(){
	$("#testimonial-slider").owlCarousel({
		items:1,
		itemsDesktop:[1000,1],
		itemsDesktopSmall:[979,1],
		itemsTablet:[768,1],
		pagination: true,
		autoPlay:false
	});
	
	/*로그아웃*/
	$("#btnLogout").click(function(e) {
		e.preventDefault();
		fn_logOut();
	});
	
	/*파트너회원은 이벤트 페이지에 들어가지 못한다*/
	$(".event_limit").click(function(e) {
		e.preventDefault();
		fn_event_limit();
	});
});

function fn_logOut() {
	if(window.confirm("갈거야? 냥냥"))
		{
		window.location.href="../main/logout";
		}
}

function fn_event_limit() {
	if(window.confirm("권한이 없다냥"))
		{
		window.location.href="../main/index";
		}
}



