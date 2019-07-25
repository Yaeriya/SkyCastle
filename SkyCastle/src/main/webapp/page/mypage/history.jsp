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
	<div id="contenttop">
		<img class="ff1" src="../../img/edu1.jpg" />
		<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
		<a class="a2" href="history.jsp"> 내가 쓴 글</a>
	</div>
<br/><br/>
	<div class="contents_wrap" style="position:relative;">
		<form method="get" name="list" id='frm_list' >
		<input type="hidden" name="page" id='page' value="1" />
		<!-- my_write -->
		<div class="my_write">
			<!-- list_style_table -->
			<p class="table_msg">내가 쓴 글 리스트 ( 총 88 건 )</p>
			<div class="list_style_table">
				<table summary="">
					<colgroup>
						<col width="130px" />
						<col width="3px" />
						<col width="400px" />
						<col width="3px" />
						<col width="130px" />
						<col width="3px" />
						<col width="123px" />
						<col width="3px" />
						
					</colgroup>
					<thead>
						<tr>
							<th scope="col">게시판</th>
							<th></th>
							<th scope="col">제목</th>
							<th></th>
							<th scope="col">날짜</th>
							<th></th>
							<th scope="col">조회</th>
							<th></th>
							
						</tr>
					</thead>
					<tbody>
		                    <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=watch" target="_blank">시계포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108477">세이코 커플시계 고른건데 괜찮으려나요ㅠ</a> <img src="/images/main/201111/search_ico_img.gif" alt="" /> <span class="point_num">7</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108477" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2018.05.25 </td>
                        <td></td>
                        <td>1256</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=watch" target="_blank">시계포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108393">시알못이 회원님들의 추천을 구하옵니다ㅠ</a>  <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108393" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2018.05.23 </td>
                        <td></td>
                        <td>294</td>
                        <td></td>
                       
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=675443">휠밸런스 관련 여쭤봅니다....</a>  <span class="point_num">5</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=675443" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.12.19 </td>
                        <td></td>
                        <td>722</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=669268">중고차 카히스토리 처음봐서 질문드립니다ㅠ</a> <img src="/images/main/201111/search_ico_img.gif" alt="" /> <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=669268" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.11.14 </td>
                        <td></td>
                        <td>322</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=668159">임시번호판은 무조건 영맨이 받아서 주는건가요?</a>  <span class="point_num">5</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=668159" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.11.08 </td>
                        <td></td>
                        <td>928</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car_service" target="_blank">신차견적상담</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car_service&no=88509">i30 1.4터보 견적부탁드립니다</a>  <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car_service&no=88509" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.09.28 </td>
                        <td></td>
                        <td>93</td>
                        <td></td>
                        
                    </tr>
		                        
		    		    
		    					</tbody>
				</table>
			</div>
			<!-- //list_style_table -->

<!-- paging_box -->

<table border="0" cellpadding="0" cellspacing="0" width="769px" class="info_bg">
<tbody>
 <tr>
  <td id="page_list">
	
	
<script>
function movePaginate(p){
    $('#page').val(p); 
    $('#frm_list').submit();
}
</script>
<font class='han'>
 <font class='page_inert'>1</font>  <a href='#none' onfocus='blur()' onclick="movePaginate('2');">2</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('3');">3</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('4');">4</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('5');">5</a> </font>
    
  </td>
 </tr>
 <tr>
 	<td style='text-align: right'>
 		
 		<table border="0" cellpadding="0" cellspacing="0" style='width:310px; float:right'>
        <tbody><tr>
        <td style="width:150px;text-align:right;">
            <select name="search_type" id="search_type" style="height:21px;">
        		
        		<option value="subject"  >제목만</option>
        		<option value="bbs"  >게시판</option>
        		<option value="subject_memo"  > 제목+본문</option>
        		
            </select>
   		</td>
        <td class="search-input">
            <span class="default">
                <input name="keyword" id="keyword" value="" size="15" class="input" type="text">
                <input onfocus="blur()" value="" style="background-color:#ffffff" type="submit">
           </span>
           </td>
        </tr>
        </tbody>
        </table>
        
 	</td>
 </tr>
</tbody>
</table>




<!-- //paging_box -->

</div>
</form>
</div>
</div>
</br>


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
<script src="../../js/mypage.js"></script>
</body>
</html>