<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 로그인</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script> -->
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>

<!-- memberList section start -->

<div class="row">
	<div class="col-md-12 mt">
		<div class="content-panel">
			<h4><i class="fa fa-angle-right"></i> 일반회원</h4>
			<hr>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nick Name</th>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>뭐라하지</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list_M}" var="member" varStatus="i">
						<tr>
							<td><c:out value="${member.MB_NUM}"/></td>
							<td><c:out value="${member.MB_NICK}"/></td>
							<td><c:out value="${member.MB_ID}"/></td>
							<td><c:out value="${member.MB_NAME}"/></td>
							<td><c:out value="${member.MB_EMAIL}"/></td>
							<td><c:out value="${member.MB_PHONE}"/></td>
							<td>
								<form action="/skc/adm/deleteMember">
									<input type="hidden" name="Nick" value="${member.MB_NICK}"/>
									<button>탈퇴</button>
								</form>
								<form action="/skc/adm/updateLevel">
									<input type="hidden" name="Nick" value="${member.MB_NICK}">
									<input type="hidden" name="Level" value="2">
									<button>제한</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!--/content-panel -->
	</div><!-- /col-md-12 -->
	
	<div class="col-md-12 mt">
		<div class="content-panel">
			<table class="table table-hover">
				<h4><i class="fa fa-angle-right"></i> 파트너</h4>
				<hr>
				<thead>
					<tr>
						<th>#</th>
						<th>Nick Name</th>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>LicenceNumber</th>
						<th>뭐라하지</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list_P}" var="member" varStatus="i">
						<tr>
							<td><c:out value="${member.MB_NUM}"/></td>
							<td><c:out value="${member.MB_NICK}"/></td>
							<td><c:out value="${member.MB_ID}"/></td>
							<td><c:out value="${member.MB_NAME}"/></td>
							<td><c:out value="${member.MB_EMAIL}"/></td>
							<td><c:out value="${member.MB_PHONE}"/></td>
							<td><c:out value="${member.MB_LICEN}"/></td>
							<td>
								<form action="/skc/adm/deleteMember">
									<input type="hidden" name="Nick" value="${member.MB_NICK}"/>
									<button>탈퇴</button>
								</form>
								<form action="/skc/adm/updateLevel">
									<input type="hidden" name="Nick" value="${member.MB_NICK}">
									<input type="hidden" name="Level" value="5">
									<button>제한</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><! --/content-panel -->
	</div><!-- /col-md-12 -->
	
	<div class="col-md-12">
		<div class="content-panel">
			<h4><i class="fa fa-angle-right"></i> 승인대기</h4>
			<hr>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nick Name</th>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>LicenceNumber</th>
						<th>뭐라하지</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list_Q}" var="member" varStatus="i">
						<tr>
							<td><c:out value="${member.MB_NUM}"/></td>
							<td><c:out value="${member.MB_NICK}"/></td>
							<td><c:out value="${member.MB_ID}"/></td>
							<td><c:out value="${member.MB_NAME}"/></td>
							<td><c:out value="${member.MB_EMAIL}"/></td>
							<td><c:out value="${member.MB_PHONE}"/></td>
							<td><c:out value="${member.MB_LICEN}"/></td>
							<td>
								<form action="/skc/adm/updateLevel">
									<input type="hidden" name="Nick" value="${member.MB_NICK}">
									<input type="hidden" name="Level" value="4">
									<button>허가</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!--/content-panel -->
	</div><!-- /col-md-12 -->
	
	<div class="col-md-12">
		<div class="content-panel">
			<h4><i class="fa fa-angle-right"></i> 제한 회원</h4>
			<hr>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nick Name</th>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>뭐라하지</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list_Bm}" var="member" varStatus="i">
						<tr>
							<td><c:out value="${member.MB_NUM}"/></td>
							<td><c:out value="${member.MB_NICK}"/></td>
							<td><c:out value="${member.MB_ID}"/></td>
							<td><c:out value="${member.MB_NAME}"/></td>
							<td><c:out value="${member.MB_EMAIL}"/></td>
							<td><c:out value="${member.MB_PHONE}"/></td>
							<td>
								<form action="/skc/adm/updateLevel">
									<input type="hidden" name="Nick" value="${member.MB_NICK}">
									<input type="hidden" name="Level" value="1">
									<button>해제</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!--/content-panel -->
	</div><!-- /col-md-12 -->
	
	<div class="col-md-12">
		<div class="content-panel">
			<h4><i class="fa fa-angle-right"></i> 제한 파트너</h4>
			<hr>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Nick Name</th>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>LicenceNumber</th>
						<th>뭐라하지</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list_Bp}" var="member" varStatus="i">
						<tr>
							<td><c:out value="${member.MB_NUM}"/></td>
							<td><c:out value="${member.MB_NICK}"/></td>
							<td><c:out value="${member.MB_ID}"/></td>
							<td><c:out value="${member.MB_NAME}"/></td>
							<td><c:out value="${member.MB_EMAIL}"/></td>
							<td><c:out value="${member.MB_PHONE}"/></td>
							<td><c:out value="${member.MB_LICEN}"/></td>
							<td>
								<form action="/skc/adm/updateLevel">
									<input type="hidden" name="Nick" value="${member.MB_NICK}">
									<input type="hidden" name="Level" value="4">
									<button>해제</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><!--/content-panel -->
	</div><!-- /col-md-12 -->
</div>
<!-- login section End -->

<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>