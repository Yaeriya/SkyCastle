<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- All Plugin Css -->
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css -->
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/css/import.css">
<link rel="stylesheet" href="/skc/css/board.css">
</head>


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
				src="/skc/img/logo.png" class="logo" alt=""></a></position>
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
						<li class="active"><a href="browse-job.jsp">학생 게시판</a></li>
						<li><a href="company-detail.jsp">학부모 게시판</a></li>
						<li><a href="resume.jsp">학원 홍보 게시판</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
</nav>
<!-- Navigation End  -->


<section>
	<center>
		<h1>STUDENT</h1>
	</center>
</section>

<body>
	<div id="wrap">
		<br> <br> <br> <br>
		<div class="container">
			<div class="tbl_type_01" width="1100">
				<table>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">작성자</th>
							<td></td>
						</tr>

						<tr>
							<th scope="row">구분</th>
							<td></td>
						</tr>

						<tr>
							<th scope="row">글제목</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">작성일</th>
							<td><fmt:formatDate value="" pattern="yyyy.MM.dd" /></td>
						</tr>
						<tr>
							<th scope="row">글내용</th>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="container">
			<div class="btn_type_03" width="1100">
				<c:if test="">
					<span class="btn btnC_03 btnP_04 mr10"> <input type="hidden"
						name="no" value="" /> <input type="button" onclick="#" value="이전" />
					</span>
				</c:if>

				<a href="#none" class="btn btnC_03 btnP_04 mr10"
					onclick="location.href="> <span>목록</span>
				</a>

				<c:if test="">
					<span class="btn btnC_03 btnP_04 mr10"> <input type="hidden"
						name="no" value="" /> <input type="button"
						onclick="location.href=" value="다음" />
					</span>
				</c:if>

				<c:if test="">
					<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
					<span class="btn btnC_04 btnP_04"> <input type="button"
						onclick="" value="수정" />
					</span>
				</c:if>

				<c:if test="">
					<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
					<span class="btn btnC_04 btnP_04" style="padding-left: 10px;">
						<input type="button" onclick="reviewDelete()" value="삭제" />
					</span>
				</c:if>
			</div>
		</div>

		<br /> <br />

		<hr text-align="center"
			style="display: block; width: 1140px; margin: auto;" />
		<br /> <br /> <br />

		<!-- 댓글작성 -->
		<div class="cmtlog">
			<c:if test="">

				<!-- 로그인 안했을 경우 -->

				<c:url var="viewURL" value="../join/login.jsp"></c:url>
				<a href="../join/login.jsp"><font style="float: center"
					size="4px">*로그인 후에 댓글 작성이 가능합니다</font></a>
			</c:if>
		</div>
		<c:if test="">


			<!-- 로그인 했을 경우 -->
			<form action="" method="post" onsubmit="return validateForm()"
				name="commentForm">
				<br />
				<div class="reply_grp">

					<div class="container">
						<div class="reply_form">
							<div class="reply_inp">
								<b>작성자 </b> &nbsp;
								<c:if test="">
							${session_name}
							</c:if>
								<input type="hidden" name="name" value=""> <input
									type="hidden" name="id" value="${session_id }"> <input
									type="hidden" name="no" value="${reviewCoModel.no}" />
							</div>
							<div class="reply_write">
								<div class="textarea_grp">
									<textarea name="contents" id="contents"></textarea>
								</div>
								<span class="btn btnC_05 reply_btn"> <input type="submit"
									value="댓글작성" />
								</span>
							</div>
						</div>
					</div>
			</form>
		</c:if>
		<hr />

		<!-- 코멘트 페이징 -->
		<div class="paging">${pagingHtml}</div>
</body>

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

<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script src="/skc/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script src="/skc/js/bootsnav.js"></script>
<script src="/skc/js/main.js"></script>
</body>
</html>