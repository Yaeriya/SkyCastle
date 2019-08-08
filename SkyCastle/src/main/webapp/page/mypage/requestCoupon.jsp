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
<link rel="stylesheet" href="/skc/css/rqcoupon.css">
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
						<li><a class="menuLink" href="couponList_N">쿠폰</a></li>
						<li><a class="menuLink" href="wishList">즐겨찾기</a></li>
						<li><a class="menuLink" href="qnaList">1:1 문의내역</a></li>
						<li><a class="menuLink" href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="pageborder"></section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<form id="fmInsertContent" name="fmInsertContent"
						action="myqna_create_action.asp" target="_iFrmForAction"
						method="post" onsubmit="return validateFormElement(this);">

						<p class="k1">쿠폰 사용 신청</p>
						<p class="p2" style="margin-bottom: 39px; line-height: 26px;">
							쿠폰 사용 신청을 남겨주시면 신속히 답변 드리겠습니다.<br /> <span style="color: red;">※
								수강 중일 때만 교안 다운로드 서비스가 지원됩니다.</span><br /> (수강 종료 직전 또는 종료 후에 교안 다운로드
							요청은 지원 불가)<br /> <span style="color: red;">※ 1개월 프리패스 수강
								시 교안을 요청하실 경우, 수강하시는 세부 과목명을 정확하게 적어주세요.</span>
						</p>
						<table>
							<tr>
								<td class="z1 z0">학원</td>
								<td class="z2 z0 z2">
									<div id="select_box">
										<label for="color">신청할 학원 선택</label> <select
											name="course_name" id="color" title="select color">
											<option value="">신청할 학원 선택</option>

											<option value="1개월 무료">1개월 무료</option>
										</select>
									</div>
								</td>
							</tr>

							<tr>
								<td class="z1">작 성 자</td>
								<td class="z2">heraresq</td>
							</tr>
							<tr>
								<td class="z1">제목</td>
								<td class="z2"><input name="title" value="" type="text"
									fieldName="제목" maxlength="100" restrictBytes="100"
									class="z5 __required" /></td>
							</tr>
							<tr>
								<td class="z1">내용</td>
								<td class="z2 z3"><textarea id="contents" name="contents"
										fieldName="내용" class="__required" cols="30" rows="10"></textarea>
								</td>
							</tr>
						</table>

						<div class="z13">
							<div class="n4">
								<a href="javascript:;" onclick="$('#fmInsertContent').submit();">등록</a>
							</div>

							<div class="n3">
								<a href="javascript:;" onclick="javascript:window.close()">취소</a>
							</div>
						</div>
					</form>
				</div>
			</section>

		</div>
	</div>

</body>
</html>