<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>SKYCASTLE 프리미엄 학원입시정보</title>

<link rel="stylesheet" href="/skc/css/join.css">

</head>
<body class="wrap">
<jsp:include page="../side/header.jsp" flush="false"/>


		<div class="aaa">

			<b> <font size="6" color="gray">회원가입</font></b> <br> <br> <br>
			<table>
				<tr>
					<td id="title">아이디</td>
					<td><input type="text" name="id" maxlength="10"> <input
						type="button" value="중복확인"></td>
				</tr>



				<tr>
					<td id="title">별명</td>
					<td><input type="text" name="id" maxlength="10"> <input
						type="button" value="중복확인"></td>
				</tr>



				<tr>
					<td id="title">이름</td>
					<td><input type="text" name="name" maxlength="40"></td>
				</tr>



				<tr>
					<td id="title">비밀번호</td>
					<td><input type="password" name="password" maxlength="15">
					</td>
				</tr>



				<tr>
					<td id="title">비밀번호 확인</td>
					<td><input type="password" name="password" maxlength="15">
					</td>
				</tr>



				<tr>
					<td id="title">이메일</td>
					<td><input type="text" name="email_1" maxlength="30">@
						<select name="email_2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
					</select></td>
				</tr>



				<tr>
					<td id="title">휴대전화</td>
					<td><input type="text" name="phone" /></td>
				</tr>


				<tr>
					<td id="title">주소</td>
					<td><input type="text" size="50" name="address" /></td>
				</tr>


			</table>
			<br> <br> <input type="submit" value="가입" /> <input
				type="button" value="취소">
		</div>


<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>