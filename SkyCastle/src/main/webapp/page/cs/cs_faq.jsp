<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 고객센터</title>
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
						<h1>자주 묻는 질문</h1>
					</section>
					<ul class=faq>
						<li><a class="btn01"
							onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
								<i class="fa fa-question-sign"></i>
								<h5>냥냥이</h5>
						</a>
							<div id="hiddenContent" class="example01" style="display: none;">
								<i class="fa fa-question-sign"></i>
								<h5>A. 냥냥이 내용</h5>
							</div></li>

						<li><a class="btn02"
							onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
								<i class="fa fa-question-sign"></i>
								<h5>갸릉이</h5>
						</a>
							<div id="hiddenContent" class="example01" style="display: none;">
								<i class="fa fa-question-sign"></i>
								<h5>A. 갸릉이 내용</h5>
							</div></li>

						<li><a class="btn03"
							onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
								<i class="fa fa-question-sign"></i>
								<h5>미미</h5>
						</a>
							<div id="hiddenContent" class="example01" style="display: none;">
								<i class="fa fa-question-sign"></i>
								<h5>A. 미미 내용</h5>
							</div></li>
					</ul>
				</div>
				</section>
				</div>
		</div>

		<%@ include file="/WEB-INF/include/include-body.jspf"%>
		<script src="/skc/js/common.js"></script>
		<script src="/skc/js/cscenter.js"></script>
		<jsp:include page="../side/footer.jsp" flush="false" />
		<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
		<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				$("a[name='NOTICE_TITLE']").on("click", function(e) { //제목
					e.preventDefault();
					fn_csNoticeDetail($(this));
				});
				$("#write").on("click", function(e) {//글쓰기 버튼
					e.preventDefault();
					fn_openCsWrite();
				});
			});
			function fn_openCsWrite() {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/cs/csNoticeWrite' />");
				comSubmit.submit();
			}
			function fn_csNoticeDetail(obj) {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/cs/csNoticeDetail' />");
				comSubmit.addParam("NOTICE_NUM", obj.parent().find(
						"#NOTICE_NUM").val());
				comSubmit.submit();
			}
		</script>
</body>
</html>