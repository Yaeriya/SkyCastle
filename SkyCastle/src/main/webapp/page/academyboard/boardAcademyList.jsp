<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>SkyCastle | 학원 홍보 게시판</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/boardwrite.css">
<link rel="stylesheet" href="/skc/css/board.css">
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<div class="container">
		<div class="row">

			<section class="left-bar col-md-2">
				<div class="left-menu">
					<ul>
						<li><a class="menuLink" href="../freeboard/boardFreeList">자유게시판</a></li>
						<li><a class="menuLink" href="../parentboard/boardParentList">학부모
								게시판</a></li>
						<li><a class="menuLink"
							href="../studentboard/boardStudentList">학생 게시판</a></li>
						<li><a class="menuLink"
							href="../academyboard/boardAcademyList">학원 홍보 게시판</a></li>
					</ul>
				</div>
			</section>

			<section class="pageborder"></section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<table class="table-hover">
						<col style="width: 10%" />
						<col style="width: 40%" />
						<col style="width: 20%" />
						<col style="width: 20%" />
						<col style="width: 10%" />
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
						<tbody>
							<c:choose>
								<c:when test="${fn:length(list) > 0}">
									<c:forEach items="${list }" var="row">
										<tr>
											<td>${row.ACA_NUM }</td>
											<td class="title"><a href="#this" name="ACA_TITLE">${row.ACA_TITLE }</a>
												<input type="hidden" id="ACA_NUM" value="${row.ACA_NUM }"></td>
											<td>${row.MB_NICK}</td>
											<td>${row.ACA_DATE}</td>
											<td>${row.ACA_HIT}</td>
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

					<div>
						<c:choose>
							<c:when
								test="${sessionScope.userLevel == 4 || sessionScope.userLevel == 6}">
								<a class="btn btn-default pull-right" href="#this" id="write">글쓰기</a>
							</c:when>
							<c:otherwise>
								<a class="hidden"></a>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="text-center">
						<ul class="pagination">
							<li><a href="/index.jsp">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>

						</ul>
						<input type="text" name="search" value="${search}" /> <input
							type="submit" value="검색" class="btn" />
					</div>

				</div>
			</section>

		</div>
	</div>

	<%@ include file="/WEB-INF/include/include-body.jspf"%>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) {//글쓰기 버튼
				e.preventDefault();
				fn_openAcademyBoardWrite();
			});

			$("a[name='ACA_TITLE']").on("click", function(e) { //제목
				e.preventDefault();
				fn_openAcademyBoardDetail($(this));
			});
		});
		function fn_openAcademyBoardWrite() {
			var comSubmit = new ComSubmit();
			comSubmit
					.setUrl("<c:url value='/academyboard/openAcademyBoardWrite' />");
			comSubmit.submit();
		}
		function fn_openAcademyBoardDetail(obj) {
			var comSubmit = new ComSubmit();
			comSubmit
					.setUrl("<c:url value='/academyboard/openAcademyBoardDetail' />");
			comSubmit.addParam("ACA_NUM", obj.parent().find("#ACA_NUM").val());
			comSubmit.submit();
		}
	</script>

	<jsp:include page="../side/footer.jsp" flush="false" />

</body>
</html>