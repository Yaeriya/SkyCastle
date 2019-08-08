<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="mypage_P">정보수정</a>
								</c:when>
								<c:otherwise>
									<a class="menuLink" href="mypage_N">정보수정</a>
								</c:otherwise>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="infoAcademy">학원관리</a>
								</c:when>
								<c:otherwise>
									<a class="hidden"></a>
								</c:otherwise>
							</c:choose></li>
						<li><a class="menuLink" href="history">내 글 관리</a></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 4}">
									<a class="menuLink" href="couponList_P">쿠폰내역</a>
								</c:when>
								<c:otherwise>
									<a class="menuLink" href="couponList_N">쿠폰관리</a>
								</c:otherwise>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${sessionScope.userLevel == 1}">
									<a class="menuLink" href="wishList">즐겨찾기</a>
								</c:when>
								<c:otherwise>
									<a class="hidden"></a>
								</c:otherwise>
							</c:choose></li>
						<li><a class="menuLink" href="qnaList">1:1 문의내역</a></li>
						<li><a class="menuLink" href="goodBye">회원탈퇴</a></li>
					</ul>
				</div>
			</section>

			<section class="pageborder"></section>

			<section class="mpg-content-1 col-md-10">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<div class="contents_wrap">
						<form method="get" name="list" id='frm_list'>
							<input type="hidden" name="page" id='page' value="1" />
							<div class="my_write">
								<p class="table_msg">내가 쓴 글 리스트 ( 총 88 건 )</p>
								<div class="list_style_table">
									<table summary="">
										<colgroup>
											<col width="20%" />
											<col width="45%" />
											<col width="25%" />
											<col width="10%" />
										</colgroup>

										<thead>
											<tr>
												<th scope="col">게시판</th>
												<th scope="col">제목</th>
												<th scope="col">날짜</th>
												<th scope="col">조회</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td class="left"><a href="/zboard/zboard.php?id=watch"
													target="_blank">시계포럼</a></td>
												<td class="left"><a href="">세이코 커플시계 고른건데 괜찮으려나요ㅠ</a></td>
												<td>19.05.25</td>
												<td>1256</td>
											</tr>
										</tbody>
									</table>
								</div>

								<table>
									<tbody>
										<tr>
											<td id="page_list"><font class='han'> <font
													class='page_inert'>1</font> <a href='#none'
													onfocus='blur()' onclick="movePaginate('2');">2</a> <a
													href='#none' onfocus='blur()' onclick="movePaginate('3');">3</a>
													<a href='#none' onfocus='blur()'
													onclick="movePaginate('4');">4</a> <a href='#none'
													onfocus='blur()' onclick="movePaginate('5');">5</a>
											</font></td>
										</tr>
										<tr>
											<td><select name="search_type" id="search_type"
												style="height: 21px;">

													<option value="subject">제목만</option>
													<option value="bbs">게시판</option>
													<option value="subject_memo">제목+본문</option>

											</select></td>
											<td class="search-input"><span class="default"> <input
													name="keyword" id="keyword" value="" size="15"
													class="input" type="text"> <input onfocus="blur()"
													value="" style="background-color: #ffffff" type="submit">
											</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
					</div>
				</div>
			</section>

		</div>
	</div>

	<script src="/skc/js/mypage.js"></script>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>