<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 로그인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/join.css">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/join.js"></script>
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>

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
					<form name=form id=form>
						<img class="img-responsive" alt="logo" src="/skc/img/korlogo.png">
						<input type="text" name="Id" id="uId" class="form-control input-lg" placeholder="User Name">
						<input type="password" name="Pwd" id="uPwd" class="form-control input-lg" placeholder="Password">
						<label><a href="findid.jsp">아이디/비밀번호 찾기</a></label>
						<button type="button" class="btn btn-primary" id="btnLogin">로그인</button>
						<p>
							아이디가 없으십니까? <a href="">회원가입</a>
						</p>
						<c:if test= "${msg == 'failure'}">
							<div>아이디 또는 비밀번호가 일치하지 않습니다.</div>
						</c:if>
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