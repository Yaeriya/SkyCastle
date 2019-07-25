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
<form id="fmDelete" method="post"></form>

<div id="contenttop">
	<img class="ff1" src="/skc/img/edu1.jpg" />
	<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
	<a class="a2" href="wishList.jsp"> 찜한 학원</a>
</div>
<br/><br/>
<div id="right" style="width:795px">
	<p class="p1">찜한 학원</p>
</div>
<table width="795" class="cartTable">
						<tr>
							<th scope="col" width="35"><input type="checkbox"  id="checkAll"></th>
								
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
							<td class="btnBox"><a href="javascript:;" onclick="delCart(634);">삭제</a></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="course_idx" value="634" /></td>
							
							<td class="academyname">메가스터디(강남)</td>
							<td class="academyadd">서울특별시 강남구 서초동</td>
							
							<td class="academytel">02)750-3333</td>
							<td class="btnBox"><a href="javascript:;" onclick="delCart(634);">삭제</a></td>
						</tr>
						
					</table>
					<p class="deleteBox">
						<a href="javascript:;" onclick="delCart();">선택삭제</a>
					</p>

</div>

<jsp:include page="../side/footer.jsp" flush="false"/>		 

<script src="skc/js/mypage.js"></script>
</body>
</html>