<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>SKYCASTLE 프리미엄 학원입시정보</title>

<link rel="stylesheet" href="/skc/css/join.css">
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/skc/js/join.js"></script>
</head>


<body class="join-main">
	<jsp:include page="../side/header.jsp" flush="false" />
	<div class="join-back">
		<b> <font size="6" color="gray">회원가입</font></b>
		<div class="join-body">
			<form name="form" id="form" class="form-signup" role="form"
				method="post">
				<table>
					<tr>
						<td id="title">아이디</td>
						<td><input type="text" id="uId" name="Id" maxlength="10">
							<input type="button" onclick="id_check()" value="중복확인"></td>
					</tr>
					<tr>
						<td id="title">별명</td>
						<td><input type="text" id="uNick" name="Nick" maxlength="10">
							<input type="button" onclick="nick_check1()" value="중복확인"></td>
					</tr>
					<tr>
						<td id="title">이름</td>
						<td><input type="text" id="uName" name="Name" maxlength="40"></td>
					</tr>
					<tr>
						<td id="title">비밀번호</td>
						<td><input type="password" id="uPwd" name="Pwd"
							maxlength="15"></td>
					</tr>
					<tr>
						<td id="title">비밀번호 확인</td>
						<td><input type="password" id="Pwd2" name="Pwd2" maxlength="15">
						</td>
					</tr>

					<tr>
						<td id="title">이메일</td>
						<td><input type="email" id="uEmail" name="Email"
							maxlength="30"></td>
					</tr>
					<tr>
						<td id="title">휴대전화</td>
						<td><input type="tel" id="uPhone" name="Phone" /></td>
					</tr>
					<tr>
						<td id="title">사업자번호</td>
						<td><input type="text" id="uLicen" name="Licen" /></td>
					</tr>
					<tr class="hidden">
						<td id="title">레벨</td>
						<td><input type="text" id="uLevel" name="Level" value="2" /></td>
					</tr>
					<tr class="hidden">
						<td id="title">승인</td>
						<td><input type="text" id="uLimit" name="Limit" value="0" /></td>
					</tr>
				</table>
			</form>
		</div>

		<div>
			<button type="button" class="btn btn-sm btn-primary" id="btnSignup_P">회원가입</button>
			<button type="button" class="btn btn-sm btn-primary" id="btnCancel_P">취소</button>
		</div>
	</div>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>