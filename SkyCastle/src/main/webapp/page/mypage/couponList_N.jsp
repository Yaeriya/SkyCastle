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
					<div class="couponpac">
						<div class="mycoupon">
							<img class="coupon" src="/skc/img/coupon.jpg" alt="" /> 쿠폰 발급/사용
							현황
						</div>

						<div class="tab">
							<button class="tablinks active" onclick="openTab(event, 'tab1')">사용가능
								쿠폰</button>
							<button class="tablinks" onclick="openTab(event, 'tab2')">사용완료
								쿠폰</button>
						</div>
						<div id="tab1" class="tabcontent" style="display: block;">
							<table class="f4">
								<tr align="center" style="font-weight: bold">
									<td class="q1" width="10%" height="47" align="center">번호</td>
									<td class="q2" width="30%" height="47" align="center">쿠폰명</td>
									<td class="q3" width="25%" height="47" align="center">쿠폰발급일</td>
									<td class="q4" width="25%" height="47" align="center">쿠폰유효기간</td>
									<td class="q9" width="5%">사용여부</td>
									<td class="q10" width="5%">쿠폰등록</td>
								</tr>
								<tr align="center">
									<td class="r5">1</td>
									<td class="r6 r11">[1개월] 온라인 전강좌 프리패스</td>
									<td class="r7">2019.07.01</td>
									<td class="r8">2019.08.30</td>
									<td class="r9">미사용</td>
									<td class="r10"><button type="button" class="button"
											onclick="javascript:window.open('./mypage/requestCoupon.jsp','requestCouponPage', 'width=750, height=730')">등록</button></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</section>

			<section class="mpg-content-2 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div id="qnalist">
						<p class="k1">나의 쿠폰신청내역</p>
						<p class="p2" style="line-height: 26px;"></p>
						<table class="ref4">
							<col style="width: 10%" />
							<col style="width: 40%" />
							<col style="width: 25%" />
							<col style="width: 25%" />
							<tr>
								<th class="r1">쿠폰번호</th>
								<th class="r2">학원명</th>
								<th class="r3">작성일</th>
								<th class="r4">승인여부</th>
							</tr>
							<tr class="reonON">
								<td class="r5">11111111</td>
								<td class="r6"><a href="javascript:;"
									onclick="anwerView(1615);">이젠컴퓨터학원강남점</a></td>
								<td class="r7">2019.05.01</td>
								<td class="r8">승인</td>
							</tr>
							<tr id="anwer_1615" class="reon" style="display: none">
								<td class="tdbg" colspan="4">
									<div class="reonBox">
										<div class="qna" style="">
											<b>제목</b>&nbsp;&nbsp;
											1개월&nbsp;프리패스&nbsp;쿠폰이&nbsp;5월달에&nbsp;안들어오네요
										</div>
										<p class="qna3">
											국비지원&nbsp;교육&nbsp;수강시&nbsp;매달&nbsp;들어오는&nbsp;걸로&nbsp;들었는데&nbsp;자동으로&nbsp;안들어와있네요.<br>따로&nbsp;신청해야&nbsp;하는건가요??
										</p>
									</div>
								</td>
							</tr>
						</table>

						<div id="sboxr" style="clear: both; text-align: center;">
							<div class="sbox6 sbxon">
								<a href="javascript:;">1</a>
							</div>
						</div>
					</div>
				</div>
			</section>

		</div>
	</div>

	<script src="/skc/js/mypage.js"></script>
</body>
</html>