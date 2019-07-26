<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 회원가입 선택</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/join.css">		
<link rel="stylesheet" href="/skc/css/plugins.css">
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
</head>

<body>		
<jsp:include page="../side/header.jsp" flush="false"/>

<!-- joinSelect section start -->

		<div id="joinSelect-main" style="height: 880px; text-align: center; padding-top: 30%;">
		
				<!-- <div class="n" style="font-size:100px; text-align:left">
				<a href="joinResult_N.jsp" type="button">
				일반회원
				</a>
				</div> -->
				<div style="margin-right: 50%">
				학원을 구하는 분
				</div>
				
				<button href="joinResult_N" class="btn ddd" style="font-size:20px; text-align:left; margin-right: 50%">일반 회원가입</button>
				
				

				<div style="margin-left: 50%">
				공고를 등록하고, 학원홍보를 하고싶은 분
				</div>
				
				<button href="joinResult_P" class="btn ddd" style="font-size:20px; text-align:right; margin-left: 50%">파트너 회원가입</button>
				
				<!-- <div class="p" style="font-size:100px; text-align:right">
				<a href="joinResult_N.jsp" type="button">
				파트너회원
				</a>
				</div> -->

				
		</div>
		
		<!-- joinSelect section End -->	


<!-- ----------------------------------------------------------------------------------------------------------------------------------------- -->
	
<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>