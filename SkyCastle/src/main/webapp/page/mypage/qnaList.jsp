<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All Plugin Css --> 
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/css/mypage.css">


		
<script type="text/javascript">
		$(".reonON .r6").on("click",function(){
			$(this).parent().next().find(".reonBox").slideToggle( "slow" );
		})
		function anwerView(idx) {
			$(".reon").hide();
			$("#anwer_"+idx).show();
		}
		
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
		<a class="navbar-brand" href="../index.jsp"><img src="/skc/img/logo.png" class="logo" alt="" ></a>
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
	<div id="contenttop">
		<img class="ff1" src="/skc/img/edu1.jpg" />
		<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
		<a class="a2" href="qnaList.jsp"> Q&A 목록</a>
	</div>
<br/><br/>
	<div id="qnalist">
		<p class="k1">나의 Q&A</p>
		<p class="p2" style="line-height:26px;">
		<span style="color:red;">서비스 이용에 대한 문의를 남겨주시면 신속히 답변 드리겠습니다.</span><br/>
		</p>
		<table class="ref4">
			<col style="width:80px"/>
			<col style="width:450px"/>
			<col style="width:160px"/>
			<col style="width:105px"/>
				<tr>
					<th class="r1">번호</th>
					<th class="r2">제목</th>
					<th class="r3">작성일</th>
					<th class="r4">답변여부</th>
				</tr>
				<tr class="reonON">
					<td class="r5">1</td>
					<td class="r6"><a href="javascript:;" onclick="anwerView(1615);">사이트가 ㅈ 같네요ㅗ</a></td>
					<td class="r7">2019.05.01</td>
					<td class="r8">답변완료</td>
				</tr>
				<tr id="anwer_1615" class="reon" style="display:none">
					<td class="tdbg" colspan="4">
						<div class="reonBox">
							<div class="qna" style=""><b>Q.</b>&nbsp;&nbsp; 1개월&nbsp;프리패스&nbsp;쿠폰이&nbsp;5월달에&nbsp;안들어오네요</div>
							<p class="qna3">국비지원&nbsp;교육&nbsp;수강시&nbsp;매달&nbsp;들어오는&nbsp;걸로&nbsp;들었는데&nbsp;자동으로&nbsp;안들어와있네요.<br>따로&nbsp;신청해야&nbsp;하는건가요??</p>
							<div class="n7">
								
								<div class="n6"><a href="javascript:;" onclick="alert('답변이 있는 게시물은 삭제할 수 없습니다.');">삭제</a></div>
							</div>
									
							<div class="qna" style=""><b>A.</b>&nbsp;&nbsp; 수강하시는&nbsp;캠퍼스에&nbsp;따로&nbsp;신청해주셔야&nbsp;합니다.&nbsp;^^</div>
							<p class="qna2">안녕하세요,&nbsp;회원님.<br>프리패스&nbsp;쿠폰은&nbsp;매월&nbsp;자동발송이&nbsp;아닙니다.<br>수강기간이&nbsp;종료되면&nbsp;수강하시는&nbsp;캠퍼스에&nbsp;신청하여&nbsp;다시&nbsp;발급&nbsp;및&nbsp;사용등록을&nbsp;해주셔야&nbsp;합니다.<br>문의&nbsp;주셔서&nbsp;감사&nbsp;드립니다.</p>
									
						</div>
					</td>
				</tr>
						
		</table>
		<div class="qnabox"><a href="../cs.jsp">서비스 이용 문의</a></div>
		<div id="sboxr" style="clear:both;text-align:center;">
		<div class="sbox6 sbxon"><a href="javascript:;">1</a></div>
		</div>
	</div>
</div>


<br/>

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
		 
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script src="/skc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/bootsnav.js"></script>
<script src="/skc/js/main.js"></script>
<script src="/skc/js/mypage.js"></script>
</body>
</html>