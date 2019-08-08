<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<div class="left-menu">
					<ul>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="mypage_P">정보수정</a>
								</c:when>
								<c:otherwise>
									<a class="menuLink" href="mypage_N">정보수정</a>
								</c:otherwise>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="infoAcademy">학원관리</a>
								</c:when>
								<c:otherwise>
									<a class="hidden"></a>
								</c:otherwise>
							</c:choose></li>
						<li><a class="menuLink" href="history">내 글 관리</a></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="couponList_P">쿠폰내역</a>
								</c:when>
								<c:otherwise>
									<a class="menuLink" href="couponList_N">쿠폰관리</a>
								</c:otherwise>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 1}">
									<a class="menuLink" href="wishList">즐겨찾기</a>
								</c:when>
								<c:otherwise>
									<a class="hidden"></a>
								</c:otherwise>
							</c:choose></li>
						<li><a class="menuLink" href="qnaList">1:1 문의내역</a></li>
						<li><a class="menuLink" href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="pageborder"></section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div id="gbye">
						<div id="goodbye">
							<div id="loginBox">
								<p class="t1">비밀번호 재확인</p>
								<p class="t2">
									회원탈퇴를 진행하기 전에 비밀번호를 <br />다시 한 번 입력해주시기 바랍니다!
								</p>
								<form action="/skc/mypage/CUagain" id="fmConfirm"
									name="fmConfirm" action="member_pw_confirm_action.asp"
									class="__forceUseHttps" method="post">
									<div id="loginform">
										<ul>
											<li class="inputPw"><input type="password"
												name="user_pw" id="user_pw" placeholder="비밀번호"
												class=" __required"> <input type="hidden"
												id="user_nick" value="<%=session.getAttribute("userNick")%>">
											</li>
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
								<a href="/skc/mypage/CUagain" class="t2" id="byebtn"
									onclick="return check_member_out();">확인</a>
							</p>
						</div>
					</div>
				</div>
			</section>

		</div>
	</div>

	<script src="/skc/js/mypage.js"></script>
</body>
</html>