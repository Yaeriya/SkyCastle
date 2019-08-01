<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/css/boardwrite.css">

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
			<position =fixed> <a class="navbar-brand" href="index.jsp"><img
				src="../../img/logo.png" class="logo" alt=""></a> </position>
		</div>
		<!-- End Header Navigation -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
				data-out="fadeOutUp">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="login.jsp">Login</a></li>
				<li><a href="companies.jsp">Companies</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Community</a>
					<ul class="dropdown-menu animated fadeOutUp"
						style="display: none; opacity: 1;">
						<li class="active"><a href="boardList.jsp">학생 게시판</a></li>
						<li><a href="boardList.jsp">학부모 게시판</a></li>
						<li><a href="#">학원 홍보 게시판</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
</nav>
<!-- Navigation End  -->


<section class="banner">
	<center>
		<h1>STUDENT</h1>
	</center>
</section>



<div class="container">
	<table class="table-hover" width="1100">
		<thead>
			<tr>
				<th>번호</th>
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
							<td>${row.FREE_NUM }</td>
							<td class="title"> <a href="#this" name="FREE_TITLE">${row.FREE_TITLE }</a>
								<input type="hidden" id="FREE_NUM" value="${row.FREE_NUM }"></td>
							<td>${row.MB_NICK}</td> 
							<td>${row.FREE_DATE}</td> 
         					<td>${row.FREE_HIT}</td>  

	<%-- <td>${row.FREE_NUM }</td> 
         <td>${row.FREE_TITLE }</td> 
         <td>${row.MB_NICK}</td> 
         <td>${row.FREE_DATE}</td> 
         <td>${row.FREE_HIT}</td>  --%>

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
	<a class="btn btn-default pull-right" href="#this" id="write">글쓰기</a>
	
	<div class="text-center">
		<ul class="pagination">
			<li><a href="/index.jsp">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>

		</ul>
		<center>
			<input type="text" name="search" value="${search}" /> <input
				type="submit" value="검색" class="btn" />
		</center>
	</div>
</div>



<section class="banner"></section>

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
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script src="/skc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/bootsnav.js"></script>
<script src="/skc/js/main.js"></script>
<script src="/skc/js/common.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
	$("#write").on("click", function(e){//글쓰기 버튼
		e.preventDefault(); 
		fn_openBoardWrite(); 
	});

	$("a[name='FREE_TITLE']").on("click", function(e){ //제목
		e.preventDefault();
		fn_openBoardDetail($(this)); 
	});
	});
	function fn_openBoardWrite(){ 
		var comSubmit = new ComSubmit(); 
		comSubmit.setUrl("<c:url value='/board/openBoardWrite' />"); 
		comSubmit.submit(); 
		} 
	function fn_openBoardDetail(obj){
		var comSubmit = new ComSubmit(); 
		comSubmit.setUrl("<c:url value='/board/openBoardDetail' />"); 
		comSubmit.addParam("FREE_NUM", obj.parent().find("#FREE_NUM").val()); 
		comSubmit.submit();
		}
</script>

</body>
</html>