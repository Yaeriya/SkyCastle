<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 게시판</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<div class="banner">
		<h1>STUDENT</h1>
	</div>

	<div class="container">
		<table class="table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>구분</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${list }" var="row">
							<tr>
								<td>${row.IDX }</td>
								<td>${row.TITLE }</td>
								<td>${row.HIT_CNT }</td>
								<td>${row.CREA_DTM }</td>
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

		<hr />
		<a class="btn btn-default pull-right" href="boardWrite.jsp">글쓰기</a>

		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
			<input type="text" name="search" value="${search}" /> <input
				type="submit" value="검색" class="btn" />
		</div>
	</div>
	<jsp:include page="../side/footer.jsp" flush="false" />

</body>
</html>