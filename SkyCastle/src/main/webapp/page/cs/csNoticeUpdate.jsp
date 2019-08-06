<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 상세내용</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All Plugin Css -->
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/css/boardwrite.css">
<link rel="stylesheet" href="/skc/css/import.css">
<link rel="stylesheet" href="/skc/css/board.css">
<script src="/skc/js/common.js"></script>
</head>
<body>
	
	<h1>STUDENT</h1>
	<form id = "frm">
	<div id="wrap">
		<div class="container">
			<div class="tbl_type_01">
				<table>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">글 번호</th>
							<td>${map.FREE_NUM } 
							<input type="hidden" id="NOTICE_NUM" name="NOTICE_NUM" value="${map.FREE_NUM }">
							</tr>
							
							<tr>
							<th scope="row">작성시간</th>
							<td>${map.NOTICE_DATE }</td>
							<td></td>
				         </tr>
				         
						<tr>
							<th scope="row">제목</th>
							<td><colspan="3">
			<input type="text" id="NOTICE_TITLE" name="NOTICE_TITLE" class="wdp_90" value="${map.NOTICE_TITLE }"/>

						</tr>
						<tr>
							<td colspan="4" class="view_text"> 
				<textarea rows="20" cols="100" title="내용" id="NOTICE_BODY" name="NOTICE_BODY">${map.NOTICE_BODY }</textarea>

							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="btn_type_03">
			<a href="#this" class="btn btnC_03 btnP_04 mr10" id="list"> 
			<span>목록으로</span>
			</a> 
			<a href="#this" class="btn btnC_03 btnP_04 mr10" id="update"> 
			<span>수정하기</span>
			</a> 
			<a href="#this" class="btn btnC_03 btnP_04 mr10" id="delete"> 
			<span>삭제하기</span>
			</a>


			<c:if test="">
				<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
				<span class="btn btnC_04 btnP_04"> <input type="button"
					onclick="" value="수정" />
				</span>
			</c:if>

			<c:if test="">
				<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
				<span class="btn btnC_04 btnP_04" style="padding-left: 10px;">
					<input type="button" onclick="reviewDelete()" value="삭제" />
				</span>
			</c:if>
		</div>
	</div>
</form>



	<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script src="/skc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/bootsnav.js"></script>
<script src="/skc/js/main.js"></script>
<script src="/skc/js/common.js"></script>
<script type="text/javascript"> 
	$(document).ready(function(){ 
		$("#list").on("click", function(e){ //목록으로 버튼
		e.preventDefault(); 
		fn_cs(); 
	}); 
		$("#update").on("click", function(e){ //저장하기 버튼 
		e.preventDefault(); 
	fn_updateNotice(); 
	}); 
		$("#delete").on("click", function(e){ //삭제하기 버튼
		e.preventDefault();
	fn_deleteNotice();
	});
	
	});
	function fn_cs{
	var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/cs/cs' />");
	comSubmit.submit();
	} 
	function fn_updateNotice(){ var comSubmit = new ComSubmit("frm"); 
	comSubmit.setUrl("<c:url value='/cs/boardNotice' />");
	comSubmit.addParam("NOTICE_num", $("#NOTICE_num").val()); 
	comSubmit.submit();
	} 
	function fn_deleteNotice(){ var comSubmit = new ComSubmit(); 
	comSubmit.setUrl("<c:url value='/board/deleteNotice' />"); 
	comSubmit.addParam("NOTICE_NUM", $("#NOTICE_NUM").val()); 
	comSubmit.submit(); 
	}
	</script>
	<jsp:include page="../side/footer.jsp" flush="false" />


</body>
</html>