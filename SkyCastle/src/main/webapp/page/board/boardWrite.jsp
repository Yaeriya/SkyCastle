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
        <link rel="stylesheet" href="../../css/boardwrite.css">

    </head>
	
    
		<!-- Navigation Start  -->
		<nav class="navbar navbar-default navbar-sticky bootsnav">

			<div class="container">      
				<!-- Start Header Navigation -->
				<div class="navbar-header">
				
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<position=fixed>
					<a class="navbar-brand" href="index.jsp"><img src="../../img/logo.png" class="logo" alt=""></a>
					</position>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
							<li><a href="index.jsp">Home</a></li> 
							<li><a href="login.jsp">Login</a></li>
							<li><a href="companies.jsp">Companies</a></li> 
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Community</a>
								<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
									<li class="active"><a href="boardList.jsp">학생 게시판</a></li>
									<li><a href="boardList.jsp">학부모 게시판</a></li>
									<li><a href="#">학원 홍보 게시판</a></li>
								</ul>
							</li>
						</ul>
				</div><!-- /.navbar-collapse -->
			</div>   
		</nav>
		<!-- Navigation End  -->
		
		
		<section>
		<center><h1>STUDENT</h1></center>
		</section>
      
  <div id="content">
			<form id="fmPaging" name="fmPaging">
			<input name="pg" value="" type="hidden" />
			</form>
			<div id="epilogueWrite">
			<form id="fmInsertContent" name="fmInsertContent" confirmMessage="게시글을 등록을 하시겠습니까?" action="epilogue_create_action.asp" target="_iFrmForAction" class="__forceUseHttps" method="post" onsubmit="return validateFormElement(this);">
			
				<div class="epiWBox">
					<dl class="eptt cf">
						<dt class="req">구분</dt>
						<dd>
							<div class="select-wrap categorySelectBox">
								<label for="category_idx" class="fa fa-angle-down"></label>
								<select name="category_idx" fieldName="구분" class="select_box noto __required" id="category_idx">
								<option value="1">자유</option><option value="2">질문</option><option value="3">자랑</option><option value="4">자격증</option><option value="5">정보</option>
								</select>
							</div>
						</dd>
					</dl>
					
					<dl class="eptt cf">
						<dt class="req">제목</dt>
						<dd><input name="subject" value="" type="text" fieldName="과목명" maxlength="100" restrictBytes="100" class="__required" /></dd>
					</dl>
					<dl class="eptt cf">
						<dt class="req">아이디</dt>
						<dd><input name="name" value="" type="text" fieldName="수강생명" maxlength="20" restrictBytes="20" class="__required" /></dd>
					</dl>
					<dl class="warea cf">
						<dt class="req">내용</dt>
						<dd><textarea name="contents" fieldName="내용" class="__required"></textarea></dd>
					</dl>
					<dl class="eptt eppw cf">
						<dt class="req">비밀번호</dt>
						<dd>
							<input name="pw" value="" type="password" fieldName="비밀번호" maxlength="20" restrictBytes="20" class="__required" />
							<span>* 등록하신 글을 수정 또는 삭제 하시려면 입력하신 비밀번호를 반드시 기억하시기 바랍니다.</span>
						</dd>
					</dl>
					
					<tr>
                        <th scope="row"/>
                        <td><input Class="txt" type="file" name="img1"  accept="image/*"/></td>
                     </tr>
                     <tr>
                        <th scope="row"/>
                        <td><input Class="txt" type="file" name="img2" accept="image/*" /></td>
                     </tr>
                     <tr>
                        <th scope="row"/>
                        <td><input Class="txt" type="file" name="img3"  accept="image/*"/></td>
                     </tr>
	
	
		
	</div>
</div>
	</div>
				
				
				<div class="epWBtn anim-btn">
					<a href="javascript:;" onclick="$('#fmInsertContent').submit();" class="epOk btn g">등록</a>
					<a href="boardList.jsp" onclick="goBackList('epilogue_list_all.asp');" class="epNo btn gray">취소</a>
				</div>
				
			</form>
			</div>
			
			<section></section>
  
  
  

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
		 
		<script type="text/javascript" src="../../js/jquery.min.js"></script>
		<script src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/owl.carousel.min.js"></script>
		<script src="../../js/bootsnav.js"></script>
		<script src="../../js/main.js"></script>
    </body>
</html>