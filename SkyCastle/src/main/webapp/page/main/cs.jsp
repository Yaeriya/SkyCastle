<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<title>고객센터</title>
<link rel="stylesheet" href="/skc/css/cscenter.css">
</head>
<body>

<jsp:include page="../side/header.jsp" flush="false"/>

<div class="tab-container">
	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1"><h3>자주 묻는 질문</h3></li>
		<li class="tab-link" data-tab="tab-2"><h3>1:1 문의하기</h3></li>
		<li class="tab-link" data-tab="tab-3"><h3>공지사항</h3></li>
	</ul>
	<div id="tab-1" class="tab-content current">
		<section class="banner">
			<h1>자주 묻는 질문</h1>
		</section>
		<ul class=faq>
			<li>
				<a class="btn01" onclick="document.getElementById('hiddenContent').style.display=(document.getElementById('hiddenContent').style.display=='block') ? 'none' : 'block';">
					<i class="fa fa-question-sign"></i><h5>제목</h5>
				</a>
				<div id="hiddenContent" class="example01" style="display: none;">
					<i class="fa fa-question-sign"></i><h5>A. 내용</h5>
				</div>
			</li>
		</ul>
	</div>
	<div id="tab-2" class="tab-content">
	<section class="banner">
		<h1>1:1 문의</h1>
	</section>
	<ul class="qnaq">
		<li>문의제목<input type=text size=69></li>
		<li>문의내용<textarea cols=70 rows=15></textarea></li>
		<li><button onclick="location.href='cs/csQnaResult.jsp'">제출하기</button></li>
	</ul>
	</div>
	<div id="tab-3" class="tab-content">
		<section class="banner">
		<h1>공지사항</h1>
		</section>
      
      <table class="table" >
         <thead>
         <tr>
            <th>no</th>
            <th>title</th>
            <th>writer</th>
            <th>date</th>
            <th>hitcount</th>
         </tr>
         </thead>
         <tbody>
         <tr>
              <td>1</td>
              <td><a href="./cs/csNoticeDetail.jsp">I'm 25years old</a></td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>2</td>
         </tr><tr>
              <td>2</td>
              <td>hi i from korea</td>
              <td>what the</td>
              <td>2019.07.18</td>
              <td>4</td>
         </tr>   <tr>
              <td>3</td>
              <td>ABCDEFGHIJKLMN</td>
              <td>ezenAcademy</td>
              <td>2019.07.18</td>
              <td>3</td>
         </tr>   <tr>
              <td>4</td>
              <td>I'm 25years old</td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>2</td>
         </tr>   <tr>
              <td>5</td>
              <td>I'm 25years old</td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>2</td>
         </tr>   <tr>
              <td>6</td>
              <td>POIJUFLKJSDF</td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>2</td>
         </tr>   <tr>
              <td>7</td>
              <td>LET IT GO LET IT GO</td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>55</td>
         </tr>   <tr>
              <td>8</td>
              <td>BEAUTY AND BEAST</td>
              <td>BELLE</td>
              <td>2019.07.18</td>
              <td>2</td>
         </tr>   <tr>
              <td>9</td>
              <td>DO YOU WANNA BUILD A SNOWMAN</td>
              <td>WHATTHE</td>
              <td>2019.07.18</td>
              <td>4</td>
         </tr>   <tr>
              <td>10</td>
              <td>hihihihihihihihihi</td>
              <td>khj</td>
              <td>2019.07.18</td>
              <td>4</td>
         </tr>      
         </tbody>   
      </table>
		

   <section class="banner">
		<input type=text><input type ="button" value=검색>
   </section>
	</div>
</div>

<jsp:include page="../side/footer.jsp" flush="false"/>
<script src="/skc/js/cscenter.js"></script>
</body>
</html>