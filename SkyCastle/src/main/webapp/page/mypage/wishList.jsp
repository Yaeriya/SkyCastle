<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All Plugin Css --> 
<link rel="stylesheet" href="../../css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/mypage.css">

<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function(){
			$("#checkAll").click(function(){
				if ($(this).is(':checked')) {
					$(".cartTable #course_idx").each(function() { 
						$(this).prop("checked", true);
					});
				} else {
					 $(".cartTable #course_idx").each(function() { 
						$(this).prop("checked", false);
					}); 
				}
			});
		});


		
</script> 

</head>



<body>
<!-- Navigation Start  -->
<nav class="navbar navbar-default navbar-sticky bootsnav">

<div class="container">      
<!-- Start Header Navigation -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
		<i class="fa fa-bars"></i>
		</button>
		<a class="navbar-brand" href="../index.jsp"><img src="../../img/logo.png" class="logo" alt="" ></a>
	</div>
<!-- End Header Navigation -->

<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="navbar-menu">
		<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
			<li><a href="index.jsp">Home</a></li> 
			<li><a href="./join/login.jsp">Login</a></li>
			<li><a href="companies.jsp">Companies</a></li> 
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티</a>
				<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
					<li class="active"><a href="browse-job.jsp">학생게시판</a></li>
					<li><a href="company-detail.jsp">학부모게시판</a></li>
					<li><a href="resume.jsp">자유게시판</a></li>
					<li><a href="resume.jsp">홍보게시판</a></li>
				</ul>
			</li>
		</ul>
	</div><!-- /.navbar-collapse -->
</div>   
</nav>
<!-- Navigation End  -->

<div id="whole">
<form id="fmDelete" method="post"></form>

<div id="contenttop">
	<img class="ff1" src="../../img/edu1.jpg" />
	<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
	<a class="a2" href="wishList.jsp"> 찜한 학원</a>
</div>
<br/><br/>
<div id="right" style="width:795px">
	<p class="p1">찜한 학원</p>
</div>
<table width="795" class="cartTable">
						<tr>
							<th scope="col" width="35"><input type="checkbox"  id="checkAll"></th>
								
								<th scope="col" width="250">학원명</th>
								<th scope="col" width="260">주소</th>
								<th scope="col" width="150">대표번호</th>
								<th scope="col" width="100">삭제</th>
						</tr>
						<tr>
							<td><input type="checkbox" id="course_idx" value="634" /></td>
							
							<td class="academyname">메가스터디(강남)</td>
							<td class="academyadd">서울특별시 강남구 서초동</td>
							
							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;" onclick="delCart(634);">삭제</a></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="course_idx" value="634" /></td>
							
							<td class="academyname">메가스터디(강남)</td>
							<td class="academyadd">서울특별시 강남구 서초동</td>
							
							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;" onclick="delCart(634);">삭제</a></td>
						</tr>
						
					</table>
					<p class="deleteBox">
						<a href="javascript:;" onclick="delCart();">선택삭제</a>
					</p>

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
		 

<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/owl.carousel.min.js"></script>
<script src="../../js/bootsnav.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/mypage.js"></script>
</body>
</html>