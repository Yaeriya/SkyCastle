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
<link rel="stylesheet" href="/skc/css/boardwrite.css">
<link rel="stylesheet" href="/skc/css/import.css">
<link rel="stylesheet" href="/skc/css/board.css">
<%@ include file="/WEB-INF/include/include-body.jspf"%>
<script src="/skc/js/common.js"></script>
</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<h1>STUDENT</h1>
	<form id="frm">
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
								<th scope="row">글 번호</th>
								<td>${map.ACA_NUM }</td>
								<th scope="row">글 제목</th>
								<td>${map.ACA_TITLE }</td>
								<th scope="row">조회수</th>
								<td>${map.ACA_HIT }</td>
							</tr>
							<tr>
								<th scope="row">작성자</th>
								<td>${map.MB_NICK }</td>
								<th scope="row">작성시간</th>
								<td>${map.ACA_DATE }</td>
								<td></td>
							</tr>
							<tr>
								<th scope="row">제목</th> ${map.ACA_TITLE }/>
							</tr>


							<tr>
								<td colspan="4" class="view_text"><textarea rows="20"
										cols="100" title="내용" id="ACA_BODY" name="ACA_BODY">${map.ACA_BODY }</textarea>
								<td></td>
							</tr>
							<tr>
								<th scope="row">첨부파일</th>
								<td colspan="3"><c:forEach var="row" items="${list }">
										<input type="hidden" id="ACA_NUM" value="${row.ACA_NUM }">
										<a href="#this" name="file">${row.ORIGINAL_FILE_NAME }</a> 
						(${row.FILE_SIZE }kb) 
						</c:forEach></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="btn_type_03">

				<a href="#this" class="btn btnC_03 btnP_04 mr10" id="list"> <span>Back
						To List</span>
				</a> <a href="#this" class="btn btnC_03 btnP_04 mr10" id="update"> <span>Update
						My Board</span>
				</a>

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
	</form>
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

	<script type="text/javascript">
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_openAcademyBoardList();
			});
			$("#update").on("click", function(e) {
				e.preventDefault();
				fn_openAcademyBoardUpdate();
			});

			$("a[name='file']").on("click", function(e) { //파일 이름 
				e.preventDefault();
				fn_downloadAcademyFile($(this));
			});

		});
		function fn_openAcademyBoardList() {
			var comSubmit = new ComSubmit();
			comSubmit
					.setUrl("<c:url value='/academyboard/boardAcademyList' />");
			comSubmit.submit();
		}
		function fn_openAcademyBoardUpdate() {
			var ACA_NUM = "${map.ACA_NUM}";
			var comSubmit = new ComSubmit("frm");
			comSubmit
					.setUrl("<c:url value='/academyboard/openAcademyBoardUpdate' />");
			comSubmit.addParam("ACA_NUM", ACA_NUM);
			comSubmit.submit();
		}
		function fn_downloadAcademyFile(obj) {
			var ACA_NUM = obj.parent().find("#ACA_NUM").val();
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/common/downloadAcademyFile' />");
			comSubmit.addParam("ACA_NUM", ACA_NUM);
			comSubmit.submit();
		}
	</script>

</body>
</html>