<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
		
<!-- All Plugin Css --> 
<link rel="stylesheet" href="../../css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/main.css">
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
			<a class="navbar-brand" href="http://localhost:8080/skc/page/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" class="logo" alt=""></a>
		</div>
		<!-- End Header Navigation -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
				<li><a href="http://localhost:8080/skc/page/index.jsp">Home</a></li> 
				<li><a href="http://localhost:8080/skc/page/join/login.jsp">Login</a></li>
				<li><a href="http://localhost:8080/skc/page/cs.jsp">CSCenter</a></li>
				<li><a href="companies.jsp">Companies</a></li> 
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse</a>
					<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
						<li class="active"><a href="browse-job.jsp">Browse Jobs</a></li>
						<li><a href="company-detail.jsp">Job Detail</a></li>
						<li><a href="resume.jsp">Resume Detail</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
</nav>
<!-- Navigation End  -->
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/owl.carousel.min.js"></script>
<script src="../../js/bootsnav.js"></script>
<script src="../../js/main.js"></script>
</body>
</html>