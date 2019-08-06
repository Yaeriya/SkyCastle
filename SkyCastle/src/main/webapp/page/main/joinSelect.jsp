<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	<jsp:include page="../side/header.jsp" flush="false" />

	<div id="joinSelect-main"
		style="height: 880px; text-align: center; padding-top: 30%;">
		<button type="button" onclick="location.href='join'">일반회원</button>
		<button type="button" onclick="location.href='join_partner'">파트너회원</button>
	</div>
</body>
</html>