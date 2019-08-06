<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
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

	<div class="container">
		<div class="row">

			<section class="left-bar col-md-2">
				<div>
					<ul class="letf-menu">
						<li><a href="mypage_N">정보수정</a></li>
						<li><a href="history">내 글 관리</a></li>
						<li><a href="couponList_N">쿠폰관리</a></li>
						<li><a href="wishList">즐겨찾기</a></li>
						<li><a href="qnaList">1:1 문의내역</a></li>
						<li><a href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div class="content left-content">

						<!-- 회원정보 -->
						<div class="area">
							<form>
								<div class="heading"></div>
								<div class="control-group">
									<label class="control-label">아이디</label>
									<div class="controls">
										<p class="txt">heraresq</p>
									</div>

								</div>
								<div class="control-group">
									<label class="control-label" for="join_form_nick">닉네임</label>
									<div class="controls">
										<input type="text" id='join_form_nick'
											oncontextmenu="return false" value="아시겠어" name='nick'
											maxlength='16' onkeydown="return check_alt_ctrl(event)"
											autocomplete=off class="form-control"
											placeholder="게시물 작성시 표시되는 필명" style="width: 230px"><br />

										<p id="p_error_nick" style="color: #999"></p>

									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="join_form_tel">전화번호</label>
									<div class="controls">
										<input type="text" id='join_form_tel'
											oncontextmenu="return false" value="" name='nick'
											maxlength='16' onkeydown="return check_alt_ctrl(event)"
											autocomplete=off class="form-control" style="width: 230px"><br />

										<p id="p_error_nick" style="color: #999"></p>

									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="join_form_email">Email</label>
									<div class="controls">
										<p>
											<input type="text" id="inputEmail" name="inputEmail"
												placeholder="가입확인용" style="width: 110px"> @ <input
												type="text" id="inputEmail2" name="inputEmail2"
												style="width: 100px; display: none"> <select
												class="email_select" id="inputEmailSelect">
												<option value="naver">naver.com</option>
												<option value="gmail">gmail.com</option>
												<option value="nate">nate.com</option>
												<option value="hanmail">hanmail.net</option>
												<option value="custom">직접입력</option>
											</select>
										</p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="join_form_pwd">비밀번호</label>
									<div class="controls">
										<p>
											<input type="password" class="form-control" name='pwd1'
												id="join_form_pwd" placeholder="비밀번호 변경시 입력" maxlength='50'
												style="width: 230px">
										</p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label" for="join_form_pwd2">비밀번호
										확인</label>
									<div class="controls">
										<p>
											<input type="password" class="form-control" name='pwd2'
												id="join_form_pwd2" placeholder="" maxlength='50'
												style="width: 230px">
										</p>
									</div>
								</div>
								<div class="control-group">
									<div class="controls">
										<button type="button" class="btn btn-success"
											onclick="check_progress()">정보수정 완료</button>
										<button type="button" class="btn btn-default"
											onclick="window.location.href='/'">정보수정 취소</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
			
		</div>
	</div>

	<script src="/skc/js/mypage.js"></script>
</body>
</html>