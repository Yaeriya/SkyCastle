<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 글쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/skc/css/boardwrite.css">

</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />



	<h1>STUDENT</h1>
	<div id="content">
		<form id="fmPaging" name="fmPaging">
			<input name="pg" value="" type="hidden" />
		</form>
		<div id="epilogueWrite">
			<form id="fmInsertContent" name="fmInsertContent" enctype="multipart/form-data" method="post">

				<div class="epiWBox">

					<dl class="eptt cf">
						<dt class="req">제목</dt>
						<dd>
							<input type="text" id="FREE_TITLE" name="FREE_TITLE" fieldName="제목" maxlength="100"
								restrictBytes="100" class="__required" />
						</dd>
					</dl>
					<dl class="warea cf">
						<dt class="req">내용</dt>
						<dd>
							<textarea fieldName="내용" class="__required" id="FREE_BODY" name="FREE_BODY"></textarea>
						</dd>
					</dl>
			<table>
						<tr>
							<th scope="row" />
							<td><input Class="txt" type="file" name="file"/></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

	<div class="epWBtn anim-btn">
		<a href="#this" id="write" class="epOk btn g">등록하기</a> <a href="#this"
			id="list" class="epOk btn g">목록가기</a> <a href="boardList.jsp"
			onclick="goBackList('epilogue_list_all.asp');" class="epNo btn gray">취소하기</a>
	</div>

	<script>
$(document).ready(function(){
	$("#list").on("click", function(e){ 
		e.preventDefault();
		fn_openFreeBoardList(); 
	});
	
	$("#write").on("click", function(e){ //작성하기 버튼 
		e.preventDefault(); 
		fn_insertFreeBoard(); 
	});
});
	
function fn_openFreeBoardList(){
	var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/freeboard/boardFreeList' />"); 
	comSubmit.submit();
}
function fn_insertFreeBoard(){ 
	var comSubmit = new ComSubmit("fmInsertContent");  
	comSubmit.setUrl("<c:url value='/freeboard/insertFreeBoard' />" ); 
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

</script>
	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>