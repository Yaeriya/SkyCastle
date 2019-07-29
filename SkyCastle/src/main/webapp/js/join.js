$(document).on('click', '#btnSignup', function(e){
	e.preventDefault();
	$("#form").submit();
});
$(document).on('click', '#btnCancle', function(e){
	e.preventDefault();
	$('#uid').val('');
	$('#name').val('');
	$('#pwd1').val('');
	$('#pwd2').val('');
	$('#email').val('');
	//location.href="${pageContext.request.contextPath}/home";
});