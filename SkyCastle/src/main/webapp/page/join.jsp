<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 회원가입</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="../css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/main.css">

<style>
nav.navbar.bootsnav {
	background-color: #000;
}

#wrap {
	background-image: url("../img/join-main.jpg");
	height: 100%;
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

.aaa {
	margin-left: 450px;
	margin-right: 450px;
	padding: 50px;
	font-weight: bold;
	background-color: #ffffff;
	opacity: 0.7;
}

tr {
	height: 40px;
}
</style>

</head>
<body>
	<!-- Navigation Start  -->
	<nav class="navbar navbar-default navbar-sticky bootsnav">

		<div class="container">

			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-menu">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="index.jsp"> <img
					src="../img/Navilogo.png" class="logo" alt=""></a>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><a href="index.jsp">홈</a></li>
					<li><a href="join/login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
					<li><a href="event.jsp">이벤트</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="board.jsp">자유 게시판</a></li>
							<li><a href="board.jsp">학부모 게시판</a></li>
							<li><a href="board.jsp">학생 게시판</a></li>
						</ul></li>
					<li><a href="cs.jsp">고객센터</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Navigation End  -->

		<div id="wrap">
			<br>
			<br> <br>
			<br> <br>
			<br>

			<div class="aaa">

				<b> <font size="6" color="gray">회원가입</font></b> <br>
				<br>
				<br>


				<table>

					<tr>
						<td id="title">아이디</td>
						<td><input type="text" name="id" maxlength="10"> <input
							type="button" value="중복확인"></td>
					</tr>



					<tr>
						<td id="title">별명</td>
						<td><input type="text" name="id" maxlength="10"> <input
							type="button" value="중복확인"></td>
					</tr>



					<tr>
						<td id="title">이름</td>
						<td><input type="text" name="name" maxlength="40"></td>
					</tr>



					<tr>
						<td id="title">비밀번호</td>
						<td><input type="password" name="password" maxlength="15">
						</td>
					</tr>



					<tr>
						<td id="title">비밀번호 확인</td>
						<td><input type="password" name="password" maxlength="15">
						</td>
					</tr>



					<tr>
						<td id="title">이메일</td>
						<td><input type="text" name="email_1" maxlength="30">@
							<select name="email_2">
								<option>naver.com</option>
								<option>daum.net</option>
								<option>gmail.com</option>
								<option>nate.com</option>
						</select></td>
					</tr>



					<tr>
						<td id="title">휴대전화</td>
						<td><input type="text" name="phone" /></td>
					</tr>


					<tr>
						<td id="title">주소</td>
						<td><input type="text" size="50" name="address" /></td>
					</tr>


				</table>
				<br>
				<br> <input type="submit" value="가입" /> <input type="button"
					value="취소">
			</div>




			<br>
			<br> <br>
			<br> <br>
			<br> <br>
			<br> <br>
			<br>



		</div>



		<!-- footer start -->
		<footer>

			<div class="container">
				<div class="col-md-3 col-sm-6">
					<h4>Featured Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>

				<div class="col-md-3 col-sm-6">
					<h4>Latest Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>

				<div class="col-md-3 col-sm-6">
					<h4>Reach Us</h4>
					<address>
						<ul>
							<li>1201, Murakeu Market, QUCH07<br> United Kingdon
							</li>
							<li>Email: Support@job.com</li>
							<li>Call: 044 123 458 65879</li>
							<li>Skype: job@skype</li>
							<li>FAX: 123 456 85</li>
						</ul>
					</address>
				</div>

				<div class="col-md-3 col-sm-6">
					<h4>Drop A Mail</h4>
					<form>
						<input type="text" class="form-control input-lg"
							placeholder="Your Name"> <input type="text"
							class="form-control input-lg" placeholder="Email...">
						<textarea class="form-control" placeholder="Message"></textarea>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>


			</div>
			<div class="copy-right">
				<p>
					&copy;Copyright 2018 Jober Desk | Design By <a
						href="https://themezhub.com/">ThemezHub</a>
				</p>
			</div>
		</footer>

		<script type="text/javascript" src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../js/owl.carousel.min.js"></script>
		<script src="../js/bootsnav.js"></script>
		<script src="../js/main.js"></script>
</body>
</html>