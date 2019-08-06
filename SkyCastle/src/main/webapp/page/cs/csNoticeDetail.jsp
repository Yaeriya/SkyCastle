<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script src="/skc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/bootsnav.js"></script>
<script src="/skc/js/main.js"></script>
<script src="/skc/js/detail.js"></script>
<script src="/skc/js/common.js"></script>
<script src="/skc/js/cscenter.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/cscenter.css">
</head>
<body>

<jsp:include page="../side/header.jsp" flush="false"/>

<div class="tab-container">
	<ul class="tabs">
		<li class="tab-link" data-tab="tab-1"><h3>자주 묻는 질문</h3></li>
		<li class="tab-link" data-tab="tab-2"><h3>1:1 문의하기</h3></li>
		<li class="tab-link current" data-tab="tab-3"><h3>공지사항</h3></li>
	</ul>
	<div id="tab-1" class="tab-content">
	<section class="banner">
		<h1>자주 묻는 질문</h1>
		</section>
		<a class="btn01" onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
			제목
		</a>
		<div id="hiddenContent" class="example01" style="display: none;">
			내용
		</div>
	</div>
	<div id="tab-2" class="tab-content">
	<section class="banner">
		<h1>1:1 문의</h1>
		</section>
		<ul>
			<li>제목<input type=text></li>
			<li>내용<input type=text></li>
			<li><input type=submit></li>
		</ul>
	</div>
	<div id="tab-3" class="tab-content current">
		<section class="banner">
		<h1>공지사항</h1>
		</section>
      
      <table class="table" >
      
         <tbody>
         <tr>
            <th scope="row">글 번호</th>
			<td>${map.NOTICE_NUM}</td>
            <th scope="row">작성자</th>
			<td>${map.ADMIN_ID}</td>
         </tr>
         <tr>
         <th scope="row">작성시간</th>
		 <td>${map.NOTICE_DATE }</td>
		 <th scope="row">제목</th>
		 <td>${map.NOTICE_TITLE}</td>
         </tr>
         <tr>
			 <td>
		     ${map.NOTICE_BODY }
		    </td>
							<td></td>
						</tr>
        <tr>
        <td>
         
		<div class="btn_type_03">
			<a href="/skc/cs/cs" class="btn btnC_03 btnP_04 mr10" id="list"> 
			<span>목록으로</span>
			</a> 
			<a href="" class="btn btnC_03 btnP_04 mr10" id="list"> 
			<span>수정하기</span>
			</a> 
			
			<form action="/skc/cs/deleteNotice">
			<input type="hidden" name="NOTICE_NUM" value="${map.NOTICE_NUM}"/>
			<button>삭제하기</button>
			</form>
		</div>
		</td>
         </tr>
         </tbody>   
      </table>
      
	</div>
</div>

	
<script type="text/javascript"> 
$(document).ready(function(){
	$(document).ready(function(){ 
		$("#list").on("click", function(e){ //목록으로 버튼
		e.preventDefault(); 
		fn_csNoticleList(); 
	}); 
		$("#update").on("click", function(e){ //수정하기 버튼 
		e.preventDefault(); fn_updateNotice(); 
	}); 
		$("#delete").on("click", function(e){ //삭제하기 버튼
		e.preventDefault();
	fn_deleteNotice();
	});
})
	
	
	function fn_updateNotice(){
	var comSubmit = new ComSubmit("frm"); 
	comSubmit.setUrl("<c:url value='/cs/updateNotice' />");
	comSubmit.submit();
	} 
	function fn_deleteNotice(){ 
	var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/cs/deleteNotice' />"); 
	comSubmit.addParam("NOTICE_NUM", $("#NOTICE_NUM").val()); 
	comSubmit.submit(); 
	}
	</script> 
	
<jsp:include page="../side/footer.jsp" flush="false"/>

</body>
</html>