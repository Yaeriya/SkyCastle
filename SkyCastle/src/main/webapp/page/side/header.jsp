<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Script CSS Start -->
<link rel="stylesheet" href="/skc/css/plugins.css">
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<!-- Script CSS End -->
</head>
<body>
	<!-- Navigation Start  -->
	<nav class="navbar navbar-default navbar-sticky bootsnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-menu">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="../main/index"><img
					src="/skc/img/logo.png" class="logo" alt="로고이미지"></a>
			</div>

			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><c:choose>
							<c:when test="${sessionScope.loginInfo != null}">
								<a id="btnLogout">로그아웃</a>
								<%-- <a>${sessionScope.userNick}(${sessionScope.userId})님 환영합니다.</a> --%>
							</c:when>
							<c:otherwise>
								<a href="../main/login">로그인</a>
							</c:otherwise>
						</c:choose></li>
					<li><c:choose>
							<c:when test="${sessionScope.userLevel == 1}">
								<a href="../mypage/mypage_N">마이페이지</a>
							</c:when>
							<c:when test="${sessionScope.userLevel == 4}">
								<a href="../mypage/mypage_P">마이페이지</a>
							</c:when>
							<c:otherwise>
								<a class="hidden"></a>
							</c:otherwise>

						</c:choose></li>
					<li><a href="../main/mapview">지도보기</a></li>

					<li><c:choose>
							<c:when test="${sessionScope.userLevel == 1 || sessionScope.userLevel == 6}">
								<a href="../main/event">쿠폰발급</a>
							</c:when>
							<c:otherwise>
								<a class="event_limit">쿠폰발급</a>
							</c:otherwise>
						</c:choose></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="../main/board">자유 게시판</a></li>
							<li><a href="../main/board">학부모 게시판</a></li>
							<li><a href="../main/board">학생 게시판</a></li>
							<li><a href="../main/board">학원 홍보 게시판</a></li>
						</ul></li>
					<li><a href="../cs/cs">고객센터</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation End  -->

	<!-- Script JS Start 야옹 멍멍-->
	<script src="/skc/js/jquery.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootstrap.min.js"></script>
	<script src="/skc/js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootsnav.js"></script>
	<script src="/skc/js/main.js"></script>
	<!-- Script JS End -->

</body>
</html>