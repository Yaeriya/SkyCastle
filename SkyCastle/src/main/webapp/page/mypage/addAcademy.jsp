<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
						<table class="add-table">
							<tbody>
								<tr>
									<th>학원이름</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>한줄소개</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>상세설명</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>홈페이지</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>대표번호</th>
									<td><input type="text"></td>
								</tr>
								<tr>
									<th>학원분류</th>
									<td><select>
											<option value="">선택하세요</option>
											<option value="01">입시학원</option>
											<option value="02">음악학원</option>
											<option value="02">미술학원</option>
									</select></td>
								</tr>
								<tr>
									<th>쿠폰종류</th>
									<td><label><input type="radio" name="pets"
											value="yes"> 수강권</label> <label><input type="radio"
											name="pets" value="no"> 할인권</label> <label><input
											type="radio" name="pets" value="catonly"> 방문선물</label></td>
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
							<div class="add-btn">
								<button type="button" class="btn btn-orange">
									<span>등록하기</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../side/footer.jsp" flush="false" />
</html>