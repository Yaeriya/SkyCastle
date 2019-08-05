<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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

	<jsp:include page="../side/header.jsp" flush="false" />
	<section class="newsletter" id="byebye">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
						<div id="gbye">
							<div id="goodbye">
								<p class="login_t1">
									<img src="/skc/img/gbye.jpg" />
								</p>
								<div id="loginBox">
									<p class="t1">비밀번호 재확인</p>
									<p class="t2">
										회원탈퇴를 신청하기 전에 비밀번호를 <br />다시 한 번 입력해주시기 바랍니다!
									</p>
									<form id="fmConfirm" name="fmConfirm"
										action="member_pw_confirm_action.asp" class="__forceUseHttps"
										method="post" onsubmit="return validateFormElement(this);">
										<div id="loginform">
											<ul>
												<li class="inputPw"><input type="password"
													name="user_pw" placeholder="비밀번호" fieldName="비밀번호"
													class=" __required" /></li>
											</ul>
										</div>
									</form>
									<div id="memberIPserc">
										<span>비밀번호를 잊으셨나요?</span>
										<div style="float: right;">
											<a href="../join/findInfo.jsp">비밀번호 찾기</a>
										</div>
									</div>
								</div>
								<p class="btn">
									<!-- a class="t1">취소</a -->
									<a href="javascript:;" class="t2" onclick="alert('탈퇴되었습니다.');">확인</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<jsp:include page="../side/footer.jsp" flush="false" />
	<script src="/skc/js/mypage.js"></script>
</body>
</html>