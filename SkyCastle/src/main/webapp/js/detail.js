/*$(document).on('click', '#btnSignup', function(e){
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
});*/
$(document).ready(function() {
	$("#btnSignup").click(function(e) {
		e.preventDefault();
		fn_signUp();
	});
});

function gfn_isNull(str) {
	if (str == null) return true;
	if (str == "NaN") return true;
	if (new String(str).valueOf() == "undefined") return true;    
    var chkStr = new String(str);
    if( chkStr.valueOf() == "undefined" ) return true;
    if (chkStr == null) return true;    
    if (chkStr.toString().length == 0 ) return true;   
    return false; 
}

function ComSubmit(opt_formId) {
	this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
	this.url = "";
	
	if(this.formId == "commonForm"){
		$("#commonForm")[0].reset();
	}
	
	this.setUrl = function setUrl(url){
		this.url = url;
	};
	
	this.addParam = function addParam(key, value){
		$("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"' >"));
	};
	
	this.submit = function submit(){
		var frm = $("#"+this.formId)[0];
		frm.action = this.url;
		frm.method = "post";
		frm.submit();	
	};
}

function fn_signUp() {
	var comSubmit = new ComSubmit("form");
	comSubmit.setUrl("/skc/detail/insertDetail");
	comSubmit.submit();
}