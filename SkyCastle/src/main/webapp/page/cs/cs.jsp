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

	<div class="tab-container">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1"><h3>자주 묻는 질문</h3></li>
			<li class="tab-link" data-tab="tab-2"><h3>1:1 문의하기</h3></li>
			<li class="tab-link tab-color" data-tab="tab-3"><h3>공지사항</h3></li>
		</ul>
		<div id="tab-1" class="tab-content current">
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
		<div id="tab-2" class="tab-content">
			<section class="banner">
				<h1>1:1 문의</h1>
			</section>
			<ul class="qnaq">
				<li>문의제목<input type=text size=69></li>
				<li>문의내용<textarea cols=70 rows=15></textarea></li>
				<li><button onclick="location.href='cs/csQnaResult.jsp'">제출하기</button></li>
			</ul>
		</div>
		<div id="tab-3" class="tab-content">
			<section class="banner">
				<h1>공지사항</h1>
			</section>
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) > 0}">
							<c:forEach items="${list}" var="row">
								<tr>
									<td>${row.NOTICE_NUM}</td>
									<td class="title"><a href="#this" name="NOTICE_TITLE">${row.NOTICE_TITLE}</a>
										<input type="hidden" id="NOTICE_NUM"
										value="${row.NOTICE_NUM}"></td>
									<td>${row.ADM_ID}</td>
									<td>${row.NOTICE_DATE}</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>

			<c:choose>
				<c:when test="${sessionScope.userLevel == 6}">
					<a class="btn btn-default pull-right" href="#this" id="write">공지사항
						등록</a>
				</c:when>
				<c:otherwise>
					<a class="hidden"></a>
				</c:otherwise>
			</c:choose>
			<section class="banner">
				<input type=text><input type="button" value=검색>
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
			comSubmit.addParam("NOTICE_NUM", obj.parent().find("#NOTICE_NUM")
					.val());
			comSubmit.submit();
		}
	</script>
</body>
</html>