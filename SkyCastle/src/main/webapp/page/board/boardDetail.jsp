<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 상세내용</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/skc/css/import.css">
<link rel="stylesheet" href="/skc/css/board.css">
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<h1>STUDENT</h1>
	
	<div id="wrap">

		<div class="container">
			<div class="tbl_type_01">
				<table>
					<colgroup>
						<col style="width: 120px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">작성자</th>
							<td></td>
						</tr>

						<tr>
							<th scope="row">글제목</th>
							<td></td>
						</tr>
						<tr>
							<th scope="row">작성일</th>
							<td><fmt:formatDate value="" pattern="yyyy.MM.dd" /></td>
						</tr>
						<tr>
							<th scope="row">글내용</th>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="btn_type_03">
			<c:if test="">
				<span class="btn btnC_03 btnP_04 mr10"> <input type="hidden"
					name="no" value="" /> <input type="button" onclick="#" value="이전" />
				</span>
			</c:if>

			<a href="#none" class="btn btnC_03 btnP_04 mr10"
				onclick="location.href = 'boardList.jsp'"> <span>목록</span>
			</a>

			<c:if test="">
				<span class="btn btnC_03 btnP_04 mr10"> <input type="hidden"
					name="no" value="" /> <input type="button"
					onclick="location.href=" value="다음" />
				</span>
			</c:if>

			<c:if test="">
				<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
				<span class="btn btnC_04 btnP_04"> <input type="button"
					onclick="" value="수정" />
				</span>
			</c:if>

			<c:if test="">
				<!-- 리뷰작성자가 로그인 했을 경우만 생성 -->
				<span class="btn btnC_04 btnP_04" style="padding-left: 10px;">
					<input type="button" onclick="reviewDelete()" value="삭제" />
				</span>
			</c:if>
		</div>
	</div>
	
	<!-- 댓글작성 -->
	<div class="cmtlog">
		<c:if test="">

			<!-- 로그인 안했을 경우 -->
			<c:url var="viewURL" value="../join/login.jsp"></c:url>
			<a href="../join/login.jsp"><font style="float: center"
				size="4px">*로그인 후에 댓글 작성이 가능합니다</font></a>
		</c:if>
	</div>
	<c:if test="">

		<!-- 로그인 했을 경우 -->
		<form action="" method="post" onsubmit="return validateForm()"
			name="commentForm">
			<br />
			<div class="reply_grp">

				<div class="container">
					<div class="reply_form">
						<div class="reply_inp">
							<b>작성자 </b> &nbsp;
							<c:if test="">
							${session_name}
							</c:if>
							<input type="hidden" name="name" value=""> <input
								type="hidden" name="id" value="${session_id }"> <input
								type="hidden" name="no" value="${reviewCoModel.no}" />
						</div>
						
						<div class="reply_write">
							<div class="textarea_grp">
								<textarea name="contents" id="contents"></textarea>
							</div>
							<span class="btn btnC_05 reply_btn"> <input type="submit"
								value="댓글작성" />
							</span>
						</div>
					</div>
				</div>
			</div>
		</form>
	</c:if>
	<!-- 코멘트 페이징 -->
	<div class="paging">${pagingHtml}</div>

	<jsp:include page="../side/footer.jsp" flush="false" />

</body>
</html>