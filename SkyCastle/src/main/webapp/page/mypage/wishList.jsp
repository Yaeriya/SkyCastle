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
				<div class="left-menu">
					<ul>
						<li><a class="menuLink" href="mypage_N">정보수정</a></li>
						<li><a class="menuLink" href="history">내 글 관리</a></li>
						<li><a class="menuLink" href="couponList_N">쿠폰관리</a></li>
						<li><a class="menuLink" href="wishList">즐겨찾기</a></li>
						<li><a class="menuLink" href="qnaList">1:1 문의내역</a></li>
						<li><a class="menuLink" href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="pageborder"></section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<form id="fmDelete" method="post"></form>
					<div id="right" style="width: 795px">
						<p class="p1">찜한 학원</p>
					</div>

					<table class="cartTable">
						<tr>
							<th scope="col" width="35"><input type="checkbox"
								id="checkAll"></th>

							<th scope="col" width="250">학원명</th>
							<th scope="col" width="260">주소</th>
							<th scope="col" width="150">대표번호</th>
							<th scope="col" width="100">삭제</th>
						</tr>
						<tr>
							<td><input type="checkbox" id="course_idx" value="634" /></td>

							<td class="academyname">메가스터디(강남)</td>
							<td class="academyadd">서울특별시 강남구 서초동</td>

							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;"
								onclick="delCart(634);">삭제</a></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="course_idx" value="634" /></td>

							<td class="academyname">메가스터디(강남)</td>
							<td class="academyadd">서울특별시 강남구 서초동</td>

							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;"
								onclick="delCart(634);">삭제</a></td>
						</tr>
					</table>

					<p class="deleteBox">
						<a href="javascript:;" onclick="delCart();">선택삭제</a>
					</p>
				</div>
			</section>
		</div>
	</div>

	<script src="skc/js/mypage.js"></script>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>