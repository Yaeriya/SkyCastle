<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 학원등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/skc/js/detail.js"></script>
<link rel="stylesheet" href="/skc/css/mypage.css">
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<div class="container">
		<div class="row">

			<section class="left-bar col-md-2">
				<div>
					<ul class="letf-menu">
						<li><a href="mypage_P">정보수정</a></li>
						<li><a href="infoAcademy">학원관리</a></li>
						<li><a href="history">내 글 관리</a></li>
						<li><a href="couponList_P">쿠폰관리</a></li>
						<li><a href="qnaList">1:1 문의내역</a></li>
						<li><a href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="mpg-content-1 col-md-10">
				<div id="right">
					<p class="p1">나의 학원</p>
				</div>
				<table class="cartTable">
					<tr>
						<th scope="col" width="250">학원명</th>
						<th scope="col" width="260">주소</th>
						<th scope="col" width="150">대표번호</th>
						<th scope="col" width="135">상세보기</th>
					</tr>
					<tr>
						<td class="academyname">메가스터디(강남)</td>
						<td class="academyadd">서울특별시 강남구 서초동</td>
						<td class="academytel">02)750-3333</td>
						<td class="btnBox"><a href="javascript:;"
							onclick="delCart(634);">수정</a> <a href="javascript:;"
							onclick="delCart(634);">삭제</a></td>
					</tr>
				</table>
				<div style="text-align: center; padding-top: 20px;">
					<button type="button" onclick="location.href='addAcademy'">학원등록</button>
					<button type="button" onclick="location.href='selectDetail'">학원보기</button>
				</div>
			</section>

		</div>
	</div>

</body>
</html>