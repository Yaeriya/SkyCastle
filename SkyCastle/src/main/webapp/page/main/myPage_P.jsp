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
	<a class="a1" href="myPage_P.jsp"> > 마이페이지 </a>
	
</div>	
<br/><br/>
<!-- 회원정보 -->

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
            	<label class="control-label" for="join_form_licence">사업자번호</label>
                <div class="controls">
                	<input type="text" id='join_form_licence' oncontextmenu="return false"
                           value=""
                           name='nick' maxlength='16' onkeydown="return check_alt_ctrl(event)"
                           autocomplete=off class="form-control"  style="width: 230px"><br />
                    
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
                   <p> <input type="text" id="inputEmail" name="inputEmail" placeholder="가입확인용" style="width:110px"> @
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
        
            
<!-- 등록한 학원 -->
<div id="right" style="width:795px">
	<p class="p1">나의 학원</p>
</div>
<table width="795" class="cartTable">
						<tr>
							
								
								<th scope="col" width="250">학원명</th>
								<th scope="col" width="260">주소</th>
								<th scope="col" width="150">대표번호</th>
								<th scope="col" width="135">상세보기</th>
						</tr>
						<tr>
							
							
							<td class="academyname">메가스터디(강남)</td><!-- 상세보기로 링크걸기 -->
							<td class="academyadd">서울특별시 강남구 서초동</td>
							
							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;" onclick="delCart(634);">수정</a>
							<a href="javascript:;" onclick="delCart(634);">삭제</a></td>
						</tr>
						
						
					</table>
					

   



</div>
<br/>

<jsp:include page="../side/footer.jsp" flush="false"/>

<script src="../js/mypage.js"></script>	
</body>
</html>