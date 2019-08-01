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
				<a class="navbar-brand" href="../main/index.jsp"><img
					src="/skc/img/logo.png" class="logo" alt="로고이미지"></a>
			</div>

			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><a href="../main/index.jsp">홈</a></li>
					<li><a href="../join/login.jsp">로그인</a></li>
					<li><a href="../main/map.jsp">지도보기</a></li>
					<li><a href="../main/event.jsp">이벤트</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="../main/board.jsp">자유 게시판</a></li>
							<li><a href="../main/board.jsp">학부모 게시판</a></li>
							<li><a href="../main/board.jsp">학생 게시판</a></li>
							<li><a href="../main/board.jsp">학원 홍보 게시판</a></li>
						</ul></li>
					<li><a href="../main/cs.jsp">고객센터</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation End  -->

	<!-- Script JS Start 야옹 멍멍-->
	<script src="/skc/js/common.js" type="text/javascript"></script>
	<script src="/skc/js/jquery.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootstrap.min.js"></script>
	<script src="/skc/js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootsnav.js"></script>
	<script src="/skc/js/main.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Script JS End -->
</body>
</html>