<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/mypage.css">
<script type="text/javascript" src="/skc/js/jquery.min.js"></script>
<script type="text/javascript" src="/skc/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/skc/js/mypage.js"></script>
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>
<div id="whole">
	<div id="contenttop">
		<img class="ff1" src="/skc/img/edu1.jpg" />
		<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
		<a class="a2" href="qnaList.jsp"> Q&A 목록</a>
	</div>
<br/><br/>
	<div id="qnalist">
		<p class="k1">나의 Q&A</p>
		<p class="p2" style="line-height:26px;">
		<span style="color:red;">서비스 이용에 대한 문의를 남겨주시면 신속히 답변 드리겠습니다.</span><br/>
		</p>
		<table class="ref4">
			<col style="width:80px"/>
			<col style="width:450px"/>
			<col style="width:160px"/>
			<col style="width:105px"/>
				<tr>
					<th class="r1">번호</th>
					<th class="r2">제목</th>
					<th class="r3">작성일</th>
					<th class="r4">답변여부</th>
				</tr>
				<c:choose>
					
					<c:when test="${fn:length(list) >0 }">
					<!-- <input type="hidden" name="MB_NICK"
										value="ad" /> -->
						<c:forEach items="${list}" var="qna" varStatus="i">
				<tr class="reonON">
					<td class="r5">${qna.Q_NUM}</td>
					<td class="r6"><a href="javascript:;" onclick="anwerView(${qna.Q_NUM});" name="Q_TITLE">${qna.Q_TITLE}</a></td>
					<td class="r7">${qna.Q_DATE }</td>
					<td class="r8">${qna.Q_CHECK }</td>
				</tr>
				<tr id="anwer_${qna.Q_NUM }" class="reon" style="display:none">
					<td class="tdbg" colspan="4">
						<div class="reonBox">
							<div class="qna" style=""><b>Q.</b>&nbsp;&nbsp;${qna.Q_TITLE }</div>
							<p class="qna3">${qna.Q_BODY}</p>
							<div class="n7">
								
								<div class="n6"><a href="javascript:;" onclick="alert('답변이 있는 게시물은 삭제할 수 없습니다.');">삭제</a></div>
							</div>
							
								<%-- <input type="hidden" id="Q_NUM"
										value="${list_Q.Q_NUM}"> --%>
							<div class="qna" style=""><b>A.</b>&nbsp;&nbsp; ${qna.A_TITLE}</div>
							<p class="qna2">${qna.A_BODY }</p>
								
						</div>
						
					</td>
				</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
			</c:choose>		
		</table>
		<div class="qnabox"><a href="../cs.jsp">서비스 이용 문의</a></div>
		<div id="sboxr" style="clear:both;text-align:center;">
		<div class="sbox6 sbxon"><a href="javascript:;">1</a></div>
		</div>
	</div>
</div>


<br/>
<jsp:include page="../side/footer.jsp" flush="false"/>
<!-- <script src="/skc/js/mypage.js"></script> -->
</body>
</html>