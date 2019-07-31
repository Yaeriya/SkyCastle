$(document).ready(function() {
	$("#btnSignup").click(function(e) {
		e.preventDefault();
		fn_signUp();
	});
});

$(document).ready(function() {
	$("#btnLogin").click(function(e) {
		e.preventDefault();
		fn_logIn();
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
	comSubmit.setUrl("/skc/member/insertMember");
	comSubmit.submit();
}

function fn_logIn() {
	var comSubmit = new ComSubmit("form");
	comSubmit.setUrl("/skc/member/memberLogin");
	comSubmit.submit();
}

function password_confirm_check(){	
	if(!$("#mb_password_confirm").val()){
		$("#mb_password_confirm_msg").html("비밀번호확인을 입력해주세요").css("color", "red");
		result = "비밀번호확인을 입력해주세요";
	} else if($("#uPwd").val() != $("#cPwd").val()){
		$("#mb_password_confirm_msg").html("먼저 입력하신 패스워드와 일치하지 않습니다").css("color", "red");
		result = "먼저 입력하신 패스워드와 일치하지 않습니다";
	} else{
		$("#mb_password_confirm_msg").html("");
		result = "";
	}
	return result;
}
