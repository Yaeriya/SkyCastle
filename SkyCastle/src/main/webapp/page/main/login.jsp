<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>SKYCASTLE 프리미엄 학원입시정보</title>

<link rel="stylesheet" href="/skc/css/join.css">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/skc/js/join.js"></script>
</head>


<body class="join-main">
<jsp:include page="../side/header.jsp" flush="false" />

<!-- login section start -->

<div id="login-main">

		<br>
		<br> <br>
		<br> <br>
		<br> <br>
		<br>
		<section class="login-wrapper">
			<div class="container">
				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<form name="form" id="form" class="form-signup" role="form"
				method="post">
						<img class="img-responsive" alt="logo" src="/skc/img/korlogo.png">
						
						<input type="text" name="Id" id="uId" class="form-control input-lg" placeholder="User Name">
						<input type="password" name="Pwd" id="uPwd" class="form-control input-lg" placeholder="Password">
						<label><a href="findid.jsp">아이디/비밀번호 찾기</a></label>
						<button type="button" class="btn btn-primary" id="btnLogin">로그인</button>
						<p>
							아이디가 없으십니까? <a href="">회원가입</a>
						</p>
					</form>
				</div>
			</div>
		</section>

		<br>
		<br> <br>
		<br> <br>
		<br>

</div>
<!-- login section End -->

<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>