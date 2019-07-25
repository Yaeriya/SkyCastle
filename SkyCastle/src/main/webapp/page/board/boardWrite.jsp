<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 글쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/skc/css/boardwrite.css">

</head>
<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<h1>STUDENT</h1>
	<div id="content">
		<form id="fmPaging" name="fmPaging">
			<input name="pg" value="" type="hidden" />
		</form>
		<div id="epilogueWrite">
			<form id="fmInsertContent" name="fmInsertContent"
				confirmMessage="게시글을 등록을 하시겠습니까?"
				action="epilogue_create_action.asp" target="_iFrmForAction"
				class="__forceUseHttps" method="post"
				onsubmit="return validateFormElement(this);">

				<div class="epiWBox">
					<dl class="eptt cf">
						<dt class="req">구분</dt>
						<dd>
							<div class="select-wrap categorySelectBox">
								<label for="category_idx" class="fa fa-angle-down"></label> <select
									name="category_idx" fieldName="구분"
									class="select_box noto __required" id="category_idx">
									<option value="1">자유</option>
									<option value="2">질문</option>
									<option value="3">자랑</option>
									<option value="4">자격증</option>
									<option value="5">정보</option>
								</select>
							</div>
						</dd>
					</dl>
					<dl class="eptt cf">
						<dt class="req">제목</dt>
						<dd>
							<input name="subject" value="" type="text" fieldName="과목명"
								maxlength="100" restrictBytes="100" class="__required" />
						</dd>
					</dl>
					<dl class="eptt cf">
						<dt class="req">아이디</dt>
						<dd>
							<input name="name" value="" type="text" fieldName="수강생명"
								maxlength="20" restrictBytes="20" class="__required" />
						</dd>
					</dl>
					<dl class="warea cf">
						<dt class="req">내용</dt>
						<dd>
							<textarea name="contents" fieldName="내용" class="__required"></textarea>
						</dd>
					</dl>
					<dl class="eptt eppw cf">
						<dt class="req">비밀번호</dt>
						<dd>
							<input name="pw" value="" type="password" fieldName="비밀번호"
								maxlength="20" restrictBytes="20" class="__required" /> <span>*
								등록하신 글을 수정 또는 삭제 하시려면 입력하신 비밀번호를 반드시 기억하시기 바랍니다.</span>
						</dd>
					</dl>
					<table>
						<tr>
							<th scope="row" />
							<td><input Class="txt" type="file" name="img1"
								accept="image/*" /></td>
						</tr>
						<tr>
							<th scope="row" />
							<td><input Class="txt" type="file" name="img2"
								accept="image/*" /></td>
						</tr>
						<tr>
							<th scope="row" />
							<td><input Class="txt" type="file" name="img3"
								accept="image/*" /></td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

	<div class="epWBtn anim-btn">
		<a href="javascript:;" onclick="$('#fmInsertContent').submit();"
			class="epOk btn g">등록</a> <a href="boardList.jsp"
			onclick="goBackList('epilogue_list_all.asp');" class="epNo btn gray">취소</a>
	</div>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>