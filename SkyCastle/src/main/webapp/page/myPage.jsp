<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All Plugin Css --> 
<link rel="stylesheet" href="../css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/mypage.css">
</head>
	
<body>
<script type="text/javascript">
	function openTab(evt, tabName) 
	{
	      var i, tabcontent, tablinks;
	      tabcontent = document.getElementsByClassName("tabcontent"); //컨텐츠 불러옴 
	      for (i = 0; i < tabcontent.length; i++) 
	      {
	        tabcontent[i].style.display = "none"; //컨텐츠 모두 숨김
	      }
	      tablinks = document.getElementsByClassName("tablinks"); //탭을 불러옴
	      for (i = 0; i < tablinks.length; i++) 
	      {
	        tablinks[i].className = tablinks[i].className.replace(" active", ""); //탭을 초기화
	      }
	      document.getElementById(tabName).style.display = "block"; //해당되는 컨텐츠만 보여줌
	      evt.currentTarget.className += " active"; //클릭한 탭을 활성화
	}
	
	
	var email_info = 'heraresq@naver.com';
    var email_info_split = email_info.split('@');
    $(function(){
        inputPlaceholder(document.getElementById('join_form_pwd'),'');
        inputPlaceholder(document.getElementById('join_form_nick'),'');
        inputPlaceholder(document.getElementById('join_form_email'),'');
    });

	 

         //console.debug(email_info_split);

         if(email_info_split != '')
         {
             $('#inputEmail').val(email_info_split[0]);
             $('#inputEmail2').val(email_info_split[1]);

             var is_selected_email = false;
             $("#inputEmailSelect option").each(function() {

                 if($(this).text() == email_info_split[1]) {
                     $("#inputEmailSelect option[text=" + $(this).text() + "]").attr("selected", true);
                     is_selected_email = true;
                     return;
                 }
             });

             if(!is_selected_email) {
                 $('#inputEmail2').show().val(email_info_split[1]);
                 $("#inputEmailSelect").val('custom');
             }
         }

 
	 
	 
	 

        
</script>
	
<!-- Navigation Start  -->
<nav class="navbar navbar-default navbar-sticky bootsnav">

<div class="container">      
<!-- Start Header Navigation -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
		<i class="fa fa-bars"></i>
		</button>
		<a class="navbar-brand" href="index.jsp"><img src="../img/logo.png" class="logo" alt="" ></a>
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
	<img class="ff1" src="../img/edu1.jpg" />
	<a class="a1" href="myPage.jsp"> > 마이페이지 </a>
	
</div>	
<br/><br/>
<!-- 회원정보 -->
<p>
<div class="right_body">
        <div class="area">        
        <form class="form-horizontal" action="https://www.ygosu.com/mypage/myinfo.yg" method="post"
              id='join_form' enctype="multipart/form-data" target='hidden_frame'>
            <div class="heading"></div>
            <div class="control-group">
				 <label class="control-label">아이디</label>
				<div class="controls">
            		<p class="txt">
                	heraresq                    </p>
            	</div>

			</div>
            <div class="control-group">
            	<label class="control-label" for="join_form_nick">닉네임</label>
                <div class="controls">
                	<input type="text" id='join_form_nick' oncontextmenu="return false"
                           value="아시겠어"
                           name='nick'  text maxlength='16' onkeydown="return check_alt_ctrl(event)"
                           autocomplete=off class="form-control" placeholder="게시물 작성시 표시되는 필명" style="width: 230px"><br />
                    
                    <p id="p_error_nick" style="color:#999"></p>

                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="join_form_email">Email</label>
                <div class="controls">
                    <input type="text" id="inputEmail" name="inputEmail" placeholder="가입확인용" style="width:95px"> @
                    <input type="text" id="inputEmail2" name="inputEmail2" style="width:110px;display:none">
                    <select class="email_select" id="inputEmailSelect" >
                        <option value="naver">naver.com</option>
                        <option value="gmail">gmail.com</option>
                        <option value="nate">nate.com</option>
                        <option value="hanmail">hanmail.net</option>
                        <option value="custom">직접입력</option>
                    </select>
                </div>
            </div>
            <div class="control-group">
            	<label class="control-label" for="join_form_pwd">비밀번호</label>
                <div class="controls">
                	<input type="password" class="form-control" name='pwd1'
                           id="join_form_pwd" placeholder="비밀번호 변경시 입력" maxlength='50'
                           style="width: 230px">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="join_form_pwd2">비밀번호 확인</label>
                <div class="controls">
                    <input type="password" class="form-control" name='pwd2'
                           id="join_form_pwd2" placeholder="" maxlength='50'
                           style="width: 230px">
                </div>
            </div>
            <div class="control-group">
            	<div class="controls">
                	<button type="button" class="btn btn-success"
                            onclick="check_progress()">정보수정 완료</button>
                                <button type="button" class="btn btn-default"
                        onclick="window.location.href='/'">정보수정 취소</button>
                <!-- 			<button type="button" class="btn btn-default"
                                onclick="window.location.href='./?m2=out'">회원탈퇴</button> -->
            	</div>
        	</div>
		</form>
		</div>
</div>                 
        
            
 
       
</p>

<!-- 쿠폰 -->
<div class="couponpac">
<div class="mycoupon" style="font-size:25px"><img class="coupon" src="../img/coupon.jpg" alt=""/> 
쿠폰 발급 현황
</div>
<br/>		
		
<div class="tab" > 
	<button class="tablinks active" onclick="openTab(event, 'tab1')">사용가능 쿠폰</button> 
	<button class="tablinks" onclick="openTab(event, 'tab2')">사용완료 쿠폰</button> 
</div> 
<div id="tab1" class="tabcontent" style="display: block;"> 
	<table class="f4" border="1" width="795">
		<tr align="center" style="font-weight:bold">
			<td class="q1" width="102" height="47" align="center">번호</th>
			<td class="q2" width="263" height="47" align="center">쿠폰명</th>
			<td class="q3" width="129" height="47" align="center">쿠폰발급일</th>
			<td class="q4" width="100" height="47" align="center">쿠폰유효기간</th>
			<td class="q9">사용여부</th>
			<td class="q10">쿠폰등록</th>
		</tr>
		<tr align="center">
			<td class="r5">1</td>
			<td class="r6 r11">[1개월] 온라인 전강좌 프리패스</td>
			<td class="r7">2019.07.01</td>
			<td class="r8">2019.08.30</td>
			<td class="r9">미사용</td>
			<td class="r10"><button type="button" class="button" onclick="javascript:window.open('./mypage/requestCoupon.jsp','requestCouponPage', 'width=750, height=730')">등록</button></td>
		</tr>
	</table>
</div>  
<div id="tab2" class="tabcontent" style="display: none;"> 
	<table class="f4" border="1" width="795">
		<tr align="center" style="font-weight:bold">
			<td class="q1" width="102" height="47" align="center">번호</th>
			<td class="q2" width="263" height="47" align="center">쿠폰명</th>
			<td class="q3" width="129" height="47" align="center">쿠폰발급일</th>
			<td class="q4" width="100" height="47" align="center">쿠폰유효기간</th>
			<td class="q9">사용여부</th>
			<td class="q10">쿠폰등록</th>
		</tr>
		<tr align="center">
			<td class="r5">1</td>
			<td class="r6 r11">[1개월] 온라인 전강좌 프리패스</td>
			<td class="r7">2019.07.01</td>
			<td class="r8">2019.08.30</td>
			<td class="r9">사용</td>
			<td class="r10">-</td>
		</tr>
	</table>
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
		 
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/owl.carousel.min.js"></script>
<script src="../js/bootsnav.js"></script>
<script src="../js/main.js"></script>
<script src="../js/mypage.js"></script>	
		
</body>
</html>