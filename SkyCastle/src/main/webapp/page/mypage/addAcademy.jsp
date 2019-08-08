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
						<li><a href="mypage_N">정보수정</a></li>
						<li><a href="infoAcademy">학원관리</a></li>
						<li><a href="history">내 글 관리</a></li>
						<li><a href="couponList_P">쿠폰내역</a></li>
						<li><a href="qnaList">1:1 문의내역</a></li>
						<li><a href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div class="content left-content">
						<h4>상세 정보</h4>
						<form id="form">
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
										<td><input type="text" ID="DTL_INFO" name="DTL_INFO"></td>
									</tr>
									<tr>
										<th>홈페이지</th>
										<td><input type="text" id="DTL_URL" name="DTL_URL"></td>
									</tr>
									<tr>
										<th>대표번호</th>
										<td><input type="text" id="DTL_PHONE" name="DTL_PHONE"></td>
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
								</tbody>
							</table>

							<h4 style="display: inline-block">위치정보</h4>

							<table class="add-table">
								<tbody>
									<tr>

										<td><input type="text" id="sample6_postcode"
											name="sample6_postcode" placeholder="우편번호"></td>
										<td><input type="button"
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
										<td>
									</tr>

									<tr>
										<td><input type="text" id="sample6_address"
											name="sample6_address" placeholder="주소"></td>
										<td><input type="text" id="sample6_extraAddress"
											name="sample6_extraAddress" placeholder="참고항목"></td>

									</tr>

									<tr>
										<td><input type="text" id="sample6_detailAddress"
											name="sample6_detailAddress" placeholder="상세주소"></td>
									</tr>

									<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

									<script>
										function sample6_execDaumPostcode() {
											new daum.Postcode(
													{
														oncomplete : function(
																data) {
															// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

															// 각 주소의 노출 규칙에 따라 주소를 조합한다.
															// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
															var addr = ''; // 주소 변수
															var extraAddr = ''; // 참고항목 변수

															//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
															if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
																addr = data.roadAddress;
															} else { // 사용자가 지번 주소를 선택했을 경우(J)
																addr = data.jibunAddress;
															}

															// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
															if (data.userSelectedType === 'R') {
																// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																if (data.bname !== ''
																		&& /[동|로|가]$/g
																				.test(data.bname)) {
																	extraAddr += data.bname;
																}
																// 건물명이 있고, 공동주택일 경우 추가한다.
																if (data.buildingName !== ''
																		&& data.apartment === 'Y') {
																	extraAddr += (extraAddr !== '' ? ', '
																			+ data.buildingName
																			: data.buildingName);
																}
																// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																if (extraAddr !== '') {
																	extraAddr = ' ('
																			+ extraAddr
																			+ ')';
																}
																// 조합된 참고항목을 해당 필드에 넣는다.
																document
																		.getElementById("sample6_extraAddress").value = extraAddr;

															} else {
																document
																		.getElementById("sample6_extraAddress").value = '';
															}

															// 우편번호와 주소 정보를 해당 필드에 넣는다.
															document
																	.getElementById('sample6_postcode').value = data.zonecode;
															document
																	.getElementById("sample6_address").value = addr;
															// 커서를 상세주소 필드로 이동한다.
															document
																	.getElementById(
																			"sample6_detailAddress")
																	.focus();
														}
													}).open();
										}
									</script>
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
						</form>

						<div class="add-container">
							<div class="add-btn">
								<button type="button" class="btn btn-orange" id="btnSignup">
									<span>등록하기</span>
								</button>
							</div>
						</div>

					</div>
				</div>
			</section>

		</div>
	</div>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>