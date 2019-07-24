<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Jober Desk | Responsive Job Portal Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
		
<!-- All Plugin Css --> 
<link rel="stylesheet" href="../../css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="../../css/main.css">
<link rel="stylesheet" href="../../css/cscenter.css">
</head>
<body>

<jsp:include page="../side/header.jsp" flush="false"/>

<div class="tab-container">
	<ul class="tabs">
		<li class="tab-link" data-tab="tab-1"><h3>자주 묻는 질문</h3></li>
		<li class="tab-link" data-tab="tab-2"><h3>1:1 문의하기</h3></li>
		<li class="tab-link current" data-tab="tab-3"><h3>공지사항</h3></li>
	</ul>
	<div id="tab-1" class="tab-content">
	<section class="banner">
		<h1>자주 묻는 질문</h1>
		</section>
		<a class="btn01" onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
			제목
		</a>
		<div id="hiddenContent" class="example01" style="display: none;">
			내용
		</div>
	</div>
	<div id="tab-2" class="tab-content">
	<section class="banner">
		<h1>1:1 문의</h1>
		</section>
		<ul>
			<li>제목<input type=text></li>
			<li>내용<input type=text></li>
			<li><input type=submit></li>
		</ul>
	</div>
	<div id="tab-3" class="tab-content current">
		<section class="banner">
		<h1>공지사항</h1>
		</section>
      
      <table class="table" >
         <thead>
         <tr>
            <th width=70>13234</th>
            <th width=90>[공지사항]</th>
            <th>CUPS</th>
            <th width=100>2019.07.19</th>
         </tr>
         </thead>
         <tbody>
         <tr>
         	<td></td>
         	<td colspan=3>
         		I got my ticket for the long way 'round<br>
         		Two bottle 'a whiskey for the way<br>
         		And I sure would like some sweet company<br>
         		And I'm leaving tomorrow, wha-do-ya say?<br>
         		When I'm gone<br>
         		When I'm gone<br>
         		You're gonna miss me when I'm gone<br>
         		You're gonna miss me by my hair<br>
         		You're gonna miss me everywhere, oh<br>
         		You're gonna miss me when I'm gone<br>
         		I've got my ticket for the long way 'round<br>
         		The one with the prettiest of views<br>
         		It's got mountains, it's got rivers, it's got sights to give you shivers<br>
         		But it sure would be prettier with you<br>
         		When I'm gone<br>
         		When I'm gone<br>
         		You're gonna miss me when I'm gone<br>
         		You're gonna miss me by my walk<br>
         		You're gonna miss me by my talk, oh<br>
         		You're gonna miss me when I'm gone<br>
         	</td>
         </tr>
         <tr>
         	<td colspan=4>
         		<input type="button" value="뒤로가기" align=left onclick="history.back(-1);">
         	</td>
         </tr>
         </tbody>   
      </table>
	</div>
</div>

<jsp:include page="../side/footer.jsp" flush="false"/>

<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/owl.carousel.min.js"></script>
<script src="../../js/bootsnav.js"></script>
<script src="../../js/main.js"></script>
<script src="../../js/cscenter.js"></script>
</body>
</html>