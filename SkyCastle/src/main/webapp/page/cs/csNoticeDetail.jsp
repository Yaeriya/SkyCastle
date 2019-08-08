<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<%@ include file="/WEB-INF/include/include-body.jspf"%>
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

	<jsp:include page="../side/header.jsp" flush="false" />

		

		  <div class="container">
		    <div class="row">
	
		    <section class="left-bar col-md-2">
		       <div>
					<u1 class="left-menu">
					<li><a href="cs_main">공지사항</a></li>
					<li><a href="cs_qna">1:1문의</a></li>
					<li><a href="cs_faq">자주묻는질문</a></li>
					</u1>
				</div>
		    </section>


			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<section class="banner">
						<h1>공지사항</h1>
					</section>

					<table class="table">

						<tbody>
							<tr>
								<th scope="row">글 번호</th>
								<td>${map.NOTICE_NUM}</td>

							</tr>
							<tr>
								<th scope="row">작성시간</th>
								<td>${map.NOTICE_DATE }</td>
								<th scope="row">제목</th>
								<td>${map.NOTICE_TITLE}</td>
							</tr>
							<tr>
								<td>${map.NOTICE_BODY }</td>
								<td></td>
							</tr>
							<tr>
								<td><c:choose>
										<c:when test="${sessionScope.userLevel == 6}">
											<a href="/skc/cs/cs_main" class="btn btnC_03 btnP_04 mr10"
												id="list"> <span>목록으로</span>
											</a>


                                            <a href="#this" class="btn" id="update">저장하기</a>

											<!-- <form action="/skc/cs/updateNotice">
												<input type="hidden" name="" />
												<button>수정하기</button>
											</form> -->

											<form action="/skc/cs/deleteNotice">
												<input type="hidden" name="NOTICE_NUM"
													value="${map.NOTICE_NUM}" />
												<button>삭제하기</button>
											</form>
										</c:when>
										<c:otherwise>
											<a class="hidden"></a>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</tbody>
					</table>
</div>
</section>
				</div>
		</div>


	<script type="text/javascript"> 
$(document).ready(function(){
	
		$("#update").on("click", function(e){ //수정하기 버튼 
		e.preventDefault(); fn_updateNotice(); 
	}); 

})
	
	
	function fn_updateNotice(){
	var comSubmit = new ComSubmit("frm"); 
	comSubmit.setUrl("<c:url value='/cs/updateNotice' />");
	comSubmit.submit();
	}

	</script>

	<jsp:include page="../side/footer.jsp" flush="false" />

</body>
</html>