$(document).ready(function() {
	$("#btnSignup").click(function(e) {
		e.preventDefault();
		fn_signUp();
	});

	$("#btnLogin").click(function(e) {
		e.preventDefault();
		fn_logIn();
	});

	$("#btnSignup_P").click(function(e) {
		e.preventDefault();
		fn_signUp_P();
	});


});

function fn_signUp() {
	var comSubmit = new ComSubmit("form");
	comSubmit.setUrl("/skc/member/insertMember");
	comSubmit.submit();
}

function fn_signUp_P() {
	var comSubmit = new ComSubmit("form");
	comSubmit.setUrl("/skc/member/insertMember_P");
	comSubmit.submit();
}

function fn_logIn() {
	var comSubmit = new ComSubmit("form");
	comSubmit.setUrl("/skc/member/memberLogin");
	comSubmit.submit();
}

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

/*아이디중복확인*/
function id_check(){
	var mb_id = $("#uId").val();
	var mb_data = {"Id":mb_id}


	if(mb_id.length<1)
	{
		alert("아이디를 입력해주시기 바랍니다.");
	}
	else
	{
		$.ajax({
			type: "POST",
			url: "/skc/member/checkId",
			data: mb_data,
			dataType : "json",
			error : function(error){
				alert("서버가 응답하지 않습니다.\n다시 시도해주시기 바랍니다.");
			},
			success: function(result){
				if(result == 0)
				{
					$("#uId").attr("disabled",false);
					alert("사용이 가능한 아이디입니다.");
				} else if(result == 1)
				{
					alert("이미 존재하는 아이디입니다.\n다른 아이디를 사용해주세요.");
				}else
				{
					alert("에러가 발생하였습니다.");
				}
			}
		});
	}
}

/*닉네임 중복확인(일반)*/
function nick_check1(){
	var mb_nick = $("#uNick").val();
	var mb_data = {"Nick":mb_nick}


	if(mb_nick.length<1)
	{
		alert("별명을 입력해주시기 바랍니다.");
	}
	else
	{
		$.ajax({
			type: "POST",
			url: "/skc/member/checkNick",
			data: mb_data,
			dataType : "json",
			error : function(error){
				alert("서버가 응답하지 않습니다.\n다시 시도해주시기 바랍니다.");
			},
			success: function(result){
				if(result == 0)
				{
					$("#uNick").attr("disabled",false);
					alert("사용이 가능한 별명입니다.");
				} else if(result == 1)
				{
					alert("이미 존재하는 별명입니다.\n다른 별명을 사용해주세요.");
				}else
				{
					alert("에러가 발생하였습니다.");
				}
			}
		});
	}
}


/*닉네임 중복확인(파트너)*/
function nick_check2(){
	var mb_nick = $("#uNick").val();
	var mb_data = {"Nick":mb_nick}


	if(mb_nick.length<1)
	{
		alert("학원명을 입력해주시기 바랍니다.");
	}
	else
	{
		$.ajax({
			type: "POST",
			url: "/skc/member/checkNick",
			data: mb_data,
			dataType : "json",
			error : function(error){
				alert("서버가 응답하지 않습니다.\n다시 시도해주시기 바랍니다.");
			},
			success: function(result){
				if(result == 0)
				{
					$("#uNick").attr("disabled",false);
					alert("사용이 가능한 학원명입니다.");
				} else if(result == 1)
				{
					alert("이미 존재하는 학원명입니다.\n다른 학원명을 사용해주세요.");
				}else
				{
					alert("에러가 발생하였습니다.");
				}
			}
		});
	}
}

/*submit시 유효성 검사*/
$(document).ready(function() {
	$("#btnSignup").click(function() {



		if(!$('#uId').val()){
			alert(" 아이디를 입력해주세요");
			$('#uId').focus();
			return false;
		}
		if(!$('#uNick').val()){
			alert("별명 또는 학원명을 입력해주세요");
			$('#uNick').focus();
			return false;
		}

		if(!$('#uName').val()){
			alert("이름을 입력해주세요");
			$('#uName').focus();
			return false;
		}


		if(!$('#uEmail').val()){
			alert("이메일을 입력해주세요");
			$('#uEmail').focus();
			return false;
		}



		if(!$('#uPhone').val()){
			alert("휴대전화번호를 입력해주세요");
			$('#uPhone').focus();
			return false;
		}else{
			$("#uPhone").on('keydown', function(e){
				// 숫자만 입력받기
				var trans_num = $(this).val().replace(/-/gi,'');
				var k = e.keyCode;

				if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
				{
					e.preventDefault();
				}
			}).on('blur', function(){ // 포커스를 잃었을때 실행합니다.
				if($(this).val() == '') return;

				// 기존 번호에서 - 를 삭제합니다.
				var trans_num = $(this).val().replace(/-/gi,'');

				// 입력값이 있을때만 실행합니다.
				if(trans_num != null && trans_num != '')
				{
					// 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
					if(trans_num.length==11 || trans_num.length==10) 
					{   
						// 유효성 체크
						var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
						if(regExp_ctn.test(trans_num))
						{
							// 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
							trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
							$(this).val(trans_num);
						}
						else
						{
							alert("유효하지 않은 전화번호 입니다.");
							$(this).val("");
							$(this).focus();
						}
					}
					else 
					{
						alert("유효하지 않은 전화번호 입니다.");
						$(this).val("");
						$(this).focus();
					}
				}
				return false;
			});  

		}
	});
});