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
	<jsp:include page="../side/header.jsp" flush="false" />
<script src="/skc/js/common.js"></script>
</head>
<body>




	<h1>STUDENT</h1>
	<div id="content">
		<form id="fmPaging" name="fmPaging">
			<input name="pg" value="" type="hidden" />
		</form>
		<div id="epilogueWrite">
			<form id="fmInsertContent" name="fmInsertContent">

				<div class="epiWBox">

					<dl class="eptt cf">
						<dt class="req">제목</dt>
						<dd>
							<input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" fieldName="제목" maxlength="100"
								restrictBytes="100" class="__required" />
						</dd>
					</dl>
					<dl class="warea cf">
						<dt class="req">내용</dt>
						<dd>
							<textarea fieldName="내용" class="__required" id="NOTICE_BODY" name="NOTICE_BODY"></textarea>
						</dd>
					</dl>
				<!-- 	<table>
						<tr>
							<th scope="row" />
							<td><input Class="txt" type="file" name="img1"
								accept="image/*" /></td>
						</tr>
					</table> -->
				</div>
			</form>
		</div>
	</div>

	<div class="epWBtn anim-btn">
		<a href="#this"  id="write" class="epOk btn g">등록하기</a> 
		<a href="/skc/cs/cs" onclick="goBackList('epilogue_list_all.asp');" class="epNo btn gray">취소하기</a>
	</div>

	<script>
$(document).ready(function(){
	$("#list").on("click", function(e){ 
		e.preventDefault();
		fn_cs(); 
	});
	
	$("#write").on("click", function(e){ //작성하기 버튼 
		e.preventDefault(); 
		fn_insertNotice(); 
	});
});
	
function fn_cs(){
	var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/cs/cs' />"); 
	comSubmit.submit();
}
function fn_insertNotice(){ 
	var comSubmit = new ComSubmit("fmInsertContent");  
	comSubmit.setUrl("<c:url value='/cs/insertNotice'/>"); 
	comSubmit.submit();
}


</script>
	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>