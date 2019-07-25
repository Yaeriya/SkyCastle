<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/skc/css/mypage.css">
</head>
	
<body>

<jsp:include page="../side/header.jsp" flush="false"/>
	
<div id="whole">
<div id="contenttop">
	<img class="ff1" src="/skc/img/edu1.jpg" />
	<a class="a1" href="myPage_N.jsp"> > 마이페이지 </a>
	
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
                           name='nick' maxlength='16' onkeydown="return check_alt_ctrl(event)"
                           autocomplete=off class="form-control" placeholder="게시물 작성시 표시되는 필명" style="width: 230px"><br />
                    
                    <p id="p_error_nick" style="color:#999"></p>

                </div>
            </div>
            <div class="control-group">
            	<label class="control-label" for="join_form_tel">전화번호</label>
                <div class="controls">
                	<input type="text" id='join_form_tel' oncontextmenu="return false"
                           value=""
                           name='nick' maxlength='16' onkeydown="return check_alt_ctrl(event)"
                           autocomplete=off class="form-control"  style="width: 230px"><br />
                    
                    <p id="p_error_nick" style="color:#999"></p>

                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="join_form_email">Email</label>
                <div class="controls">
                    <p><input type="text" id="inputEmail" name="inputEmail" placeholder="가입확인용" style="width:110px"> @
                    <input type="text" id="inputEmail2" name="inputEmail2" style="width:100px;display:none">
                    <select class="email_select" id="inputEmailSelect" >
                        <option value="naver">naver.com</option>
                        <option value="gmail">gmail.com</option>
                        <option value="nate">nate.com</option>
                        <option value="hanmail">hanmail.net</option>
                        <option value="custom">직접입력</option>
                    </select></p>
                </div>
            </div>
            <div class="control-group">
            	<label class="control-label" for="join_form_pwd">비밀번호</label>
                <div class="controls">
                	<p><input type="password" class="form-control" name='pwd1'
                           id="join_form_pwd" placeholder="비밀번호 변경시 입력" maxlength='50'
                           style="width: 230px"></p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="join_form_pwd2">비밀번호 확인</label>
                <div class="controls">
                    <p><input type="password" class="form-control" name='pwd2'
                           id="join_form_pwd2" placeholder="" maxlength='50'
                           style="width: 230px"></p>
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
        
            
 
       

<!-- 쿠폰 -->
<div class="couponpac">
<div class="mycoupon" style="font-size:25px"><img class="coupon" src="/skc/img/coupon.jpg" alt=""/> 
쿠폰 발급/사용 현황
</div>
<br/>		
		
<div class="tab" > 
	<button class="tablinks active" onclick="openTab(event, 'tab1')">사용가능 쿠폰</button> 
	<button class="tablinks" onclick="openTab(event, 'tab2')">사용완료 쿠폰</button> 
</div> 
<div id="tab1" class="tabcontent" style="display: block;"> 
	<table class="f4" border="1" width="795">
		<tr align="center" style="font-weight:bold">
			<td class="q1" width="102" height="47" align="center">번호</td>
			<td class="q2" width="263" height="47" align="center">쿠폰번호</td>
			<td class="q3" width="129" height="47" align="center">쿠폰발급일</td>
			<td class="q4" width="100" height="47" align="center">쿠폰유효기간</td>
			<td class="q9">사용여부</td>
			<td class="q10">쿠폰등록</td>
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
			<td class="q1" width="102" height="47" align="center">번호</td>
			<td class="q2" width="263" height="47" align="center">쿠폰명</td>
			<td class="q3" width="129" height="47" align="center">쿠폰발급일</td>
			<td class="q4" width="100" height="47" align="center">쿠폰유효기간</td>
			<td class="q9">사용여부</td>
			<td class="q10">쿠폰등록</td>
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

<jsp:include page="../side/footer.jsp" flush="false"/>

<script src="/skc/js/mypage.js"></script>	
</body>
</html>