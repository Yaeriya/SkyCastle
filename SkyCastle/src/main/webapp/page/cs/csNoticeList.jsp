<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Notice List</title>
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

<table class="table">
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
              <td><a href="?noticePage=cs/csNoticeDetail.jsp">I'm 25years old</a></td>
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
   
<jsp:include page="../side/footer.jsp" flush="false"/>

</body>
</html>