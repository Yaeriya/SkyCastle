<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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

<jsp:include page="../side/header.jsp" flush="false"/>

<div id="whole">
	<div id="contenttop">
		<img class="ff1" src="/skc/img/edu1.jpg" />
		<a class="a1" href="../myPage_P.jsp"> > 마이페이지 > </a>
		<a class="a2" href="couponList_P.jsp"> 신청받은 쿠폰 관리</a>
	</div>
<br/><br/>
	<div id="qnalist">
		<p class="k1">나의 쿠폰신청내역</p>
		<p class="p2" style="line-height:26px;">
		
		</p>
		<table class="ref4">
			<col style="width:200px"/>
			<col style="width:330px"/>
			<col style="width:160px"/>
			<col style="width:105px"/>
				<tr>
					<th class="r1">쿠폰번호</th>	
					<th class="r2">학원명</th>
					<th class="r3">작성일</th>
					<th class="r4">승인여부</th>
				</tr>
				<tr class="reonON">
					<td class="r5">11111111</td>
					<td class="r6"><a href="javascript:;" onclick="anwerView(1615);">이젠컴퓨터학원강남점</a></td>
					<td class="r7">2019.05.01</td>
					<!-- 승인,거절 처리 완료시 -->
					<td class="r8">승인</td>
				</tr>
				<tr id="anwer_1615" class="reon" style="display:none">
					<td class="tdbg" colspan="4">
						<div class="reonBox">
							<div class="qna" style=""><b>제목</b>&nbsp;&nbsp; 1개월&nbsp;프리패스&nbsp;쿠폰이&nbsp;5월달에&nbsp;안들어오네요</div>
							<p class="qna3">국비지원&nbsp;교육&nbsp;수강시&nbsp;매달&nbsp;들어오는&nbsp;걸로&nbsp;들었는데&nbsp;자동으로&nbsp;안들어와있네요.<br>따로&nbsp;신청해야&nbsp;하는건가요??</p>
							
									
							
									
						</div>
					</td>
				</tr>
				<tr class="reonON">
					<td class="r5">11111111</td>
					<td class="r6"><a href="javascript:;" onclick="anwerView(1616);">이젠컴퓨터학원강남점</a></td>
					<td class="r7">2019.05.01</td>
					<td class="r8"><a href="javascript:;" onclick="delCart(634);">승인</a>
							<a href="javascript:;" onclick="delCart(634);">거절</a></td>
				</tr>
				<tr id="anwer_1616" class="reon" style="display:none">
					<td class="tdbg" colspan="4">
						<div class="reonBox">
							<div class="qna" style=""><b>제목</b>&nbsp;&nbsp; 1개월&nbsp;프리패스&nbsp;쿠폰이&nbsp;5월달에&nbsp;안들어오네요</div>
							<p class="qna3">국비지원&nbsp;교육&nbsp;수강시&nbsp;매달&nbsp;들어오는&nbsp;걸로&nbsp;들었는데&nbsp;자동으로&nbsp;안들어와있네요.<br>따로&nbsp;신청해야&nbsp;하는건가요??</p>
							
									
							
									
						</div>
					</td>
				</tr>
						
		</table>
		
		<div id="sboxr" style="clear:both;text-align:center;">
		<div class="sbox6 sbxon"><a href="javascript:;">1</a></div>
		</div>
	</div>
</div>


<br/>

<jsp:include page="../side/footer.jsp" flush="false"/>
<script src="/skc/js/mypage.js"></script>
</body>
</html>