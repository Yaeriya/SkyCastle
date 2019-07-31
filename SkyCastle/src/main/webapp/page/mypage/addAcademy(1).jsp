<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 학원등록</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/skc/css/add.css">
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div class="content left-content">
						<h4>상세 정보</h4>
						<form id="frm" name="frm" enctype="multipart/form-data">
							<table class="add-table">
								<tbody>
									<tr>
										<th>학원이름</th>
										<td><input type="text" id="MB_NICK" name="MB_NICK"></td>
									</tr>
									<tr>
										<th>한줄소개</th>
										<td><input type="text" id="DTL_SUMM" name="DTL_SUMM"></td>
									</tr>
									<tr>
										<th>상세설명</th>
										<td><input type="text" id="DTL_INFO" name="DTL_INFO"></td>
									</tr>
									<tr>
										<th>홈페이지</th>
										<td><input type="text" id="DTL_URL" name="DTL_URL"></td>
									</tr>
									<tr>
										<th>대표번호</th>
										<td><input type="text" id="DTL_PHONE" name="DTL_PHONE"></td>
									</tr>
								</tbody>
							</table>
							<h4 style="display: inline-block">위치정보</h4>
							<table class="add-table">
								<tbody>
									<tr>
										<th>주소검색</th>
										<td colspan="3"><input type="button" value="우편번호 검색하기"></td>
									</tr>
									<tr>
										<th>기본주소</th>
										<td colspan="3"><input type="text"></td>
									</tr>
									<tr>
										<th>나머지주소</th>
										<td colspan="3"><input type="text"></td>
									</tr>
								</tbody>
							</table>

							<h4>사진 등록</h4>
							<div class="add-photo">
								<div class="item-photo">
									<ul>
										<li><span class="i-count">1</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">2</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">3</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">4</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">5</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">6</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">7</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">8</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">9</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">10</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">11</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">12</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">13</span>
											<button class="i-btn" type="button">+등록</button></li>
										<li><span class="i-count">14</span>
											<button class="i-btn" type="button">+등록</button></li>
									</ul>
								</div>
							</div>

							<div class="add-container">
								<a href="#this" class="btn" id="write">작성하기</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#write").on("click", function(e) {
				e.preventDefault();
				if ($('#MB_NICK').val() == "") {
					alert("학원명을 입력해 주세요.");
					return false;
				} else if ($('#MB_SUMM').val() == "") {
					alert("상품가격을 입력해 주세요.");
					return false;
				} else if ($('#DTL_INFO').val() == '') {
					alert("상품 대분류를 선택해 주세요.");
					return false;
				} else if ($('#DTL_URL').val() == '') {
					alert("상품 소분류를 선택해 주세요.");
					return false;
				} else {
					fn_insertGood();
				}
			});
		});

		function fn_insertGood() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/page/mypage/addAcademy' />");
			comSubmit.submit();
		}
	</script>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>