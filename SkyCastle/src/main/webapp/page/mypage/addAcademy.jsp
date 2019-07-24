<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 로그인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/css/add.css">
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

				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<a class="navbar-brand" href="../index.jsp"><img
						src="/skc/img/Navilogo.png" class="logo" alt=""></a>
				</div>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><a href="../index.jsp">홈</a></li>
					<li><a href="../join/login.jsp">로그인</a></li>
					<li><a href="../join.jsp">회원가입</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">사이트맵</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="../browse-job.jsp">자유 게시판</a></li>
							<li><a href="../company-detail.jsp">학부모 게시판</a></li>
							<li><a href="../resume.jsp">학생 게시판</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>
	<!-- Navigation End  -->

	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div class="content left-content">
						<h4>상세 정보</h4>
						<table class="add-table">
							<tbody>
								<tr>
									<th>학원이름</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>한줄소개</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>상세설명</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>홈페이지</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>대표번호</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>학원분류</th>
									<td><select>
											<option value="">선택하세요</option>
											<option value="01">입시학원</option>
											<option value="02">음악학원</option>
											<option value="02">미술학원</option>
									</select></td>
								</tr>
								<tr>
									<th>쿠폰종류</th>
									<td><label><input type="radio" name="pets"
											value="yes"> 수강권</label> <label><input type="radio"
											name="pets" value="no"> 할인권</label> <label><input
											type="radio" name="pets" value="catonly"> 방문선물</label></td>
								</tr>
							</tbody>
						</table>
						<h4 style="display: inline-block">위치정보</h4>
						<table class="add-table">
							<tbody>
								<tr>
									<th>주소검색</th>
									<td colspan="3"><input type="button" value="우편번호 검색하기"></td>
								</tr>
								<tr>
									<th>기본주소</th>
									<td colspan="3"><input type="text"></td>
								</tr>
								<tr>
									<th>나머지주소</th>
									<td colspan="3"><input type="text"></td>
								</tr>
							</tbody>
						</table>

						<h4>사진 등록</h4>
						<div class="add-photo">
							<div class="item-photo">
								<ul>
									<li><span class="i-count">1</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">2</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">3</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">4</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">5</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">6</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">7</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">8</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">9</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">10</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">11</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">12</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">13</span>
										<button class="i-btn" type="button">+등록</button></li>
									<li><span class="i-count">14</span>
										<button class="i-btn" type="button">+등록</button></li>
								</ul>
							</div>

						</div>


						<div class="add-container">
							<div class="add-btn">
								<button type="button" class="btn btn-orange">
									<span>등록하기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


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

	<script type="text/javascript" src="/skc//js/jquery.min.js"></script>
	<script src="/skc/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/skc//js/owl.carousel.min.js"></script>
	<script src="/skc/js/bootsnav.js"></script>
	<script src="/skc/js/main.js"></script>
</body>
</html>