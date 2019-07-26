<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>스카이캐슬 | 회원가입 선택</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		
		
        <!-- All Plugin Css --> 
		<link rel="stylesheet" href="../../css/plugins.css">
		
		
		
		
		<!-- Style & Common Css --> 
		<link rel="stylesheet" href="../../css/common.css">
        <link rel="stylesheet" href="../../css/main.css">


	
    <body>		
		
			<style>
			
			nav.navbar.bootsnav {
			 background-color: #000;
			 }
			
			#joinSelect-main {
    		 background-image: url("../../img/joinSelect.png");
    		 height: 100%;
    		 min-height: 100%;
			 background-position: center;
			 background-size: cover;
			 }
			 
			.ddd,
			.ddd:hover,
			.ddd:focus,
			.ddd.focus,
			.ddd:active,
			.ddd.active,
			.open>.dropdown-toggle.ddd
			{
			    color: #fff;
			    background-color: #292929;
			    border-color: #bdbdbd;
			    text-transform: uppercase;
			    border-radius: 2px;
			    box-shadow: none;
			    padding: 10px 25px;
			}

			</style>


    </head>
	
	
	
	
	
		<!-- Navigation Start  -->
		<nav class="navbar navbar-default navbar-sticky bootsnav">

			<div class="container">      
			
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.jsp"><img src="../../img/Navilogo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->





				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
							<li><a href="index.jsp">홈</a></li> 
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li> 
							<li><a href="#">이벤트</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">사이트맵</a>
								<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
									<li class="active"><a href="browse-job.jsp">자유 게시판</a></li>
									<li><a href="company-detail.jsp">학부모 게시판</a></li>
									<li><a href="resume.jsp">학생 게시판</a></li>
								</ul>
							</li>
						</ul>
				</div><!-- /.navbar-collapse -->
			</div>   
		</nav>
		<!-- Navigation End  -->
		
<!-- ----------------------------------------------------------------------------------------------------------------------------------------- -->		
		
		<!-- joinSelect section start -->

		<div id="joinSelect-main" style="height: 880px; text-align: center; padding-top: 30%;">
		
				<!-- <div class="n" style="font-size:100px; text-align:left">
				<a href="joinResult_N.jsp" type="button">
				일반회원
				</a>
				</div> -->
				<div style="margin-right: 50%">
				학원을 구하는 분
				</div>
				
				<button href="joinResult_N" class="btn ddd" style="font-size:20px; text-align:left; margin-right: 50%">일반 회원가입</button>
				
				

				<div style="margin-left: 50%">
				공고를 등록하고, 학원홍보를 하고싶은 분
				</div>
				
				<button href="joinResult_P" class="btn ddd" style="font-size:20px; text-align:right; margin-left: 50%">파트너 회원가입</button>
				
				<!-- <div class="p" style="font-size:100px; text-align:right">
				<a href="joinResult_N.jsp" type="button">
				파트너회원
				</a>
				</div> -->

				
		</div>
		
		<!-- joinSelect section End -->	


<!-- ----------------------------------------------------------------------------------------------------------------------------------------- -->
	
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
					<li>1201, Murakeu Market, QUCH07<br>
					United Kingdon</li>
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
						<input type="text" class="form-control input-lg" placeholder="Your Name">
						<input type="text" class="form-control input-lg" placeholder="Email...">
						<textarea class="form-control" placeholder="Message"></textarea>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
				
				
			</div>
			<div class="copy-right">
			 <p>&copy;Copyright 2018 Jober Desk | Design By <a href="https://themezhub.com/">ThemezHub</a></p>
			</div>
		</footer>
		 
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/owl.carousel.min.js"></script>
		<script src="js/bootsnav.js"></script>
		<script src="js/main.js"></script>
    </body>
</html>