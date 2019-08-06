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
<link rel="stylesheet" href="/skc/css/plugins.css">

<!-- Style & Common Css --> 
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<link rel="stylesheet" href="/skc/ss/cscenter.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<body>

<jsp:include page="../side/header.jsp" flush="false"/>

<table class="table">
         <thead>
         <tr>
           <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>날짜</th>
         </tr>
         </thead>
         <tbody>
                  <c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach items="${list }" var="row">
						<tr>
							<td>${row.NOTICE_NUM }</td>
							<td class="title"> <a href="#this" name="NOTICE_TITLE">${row.NOTICE_TITLE }</a> 
								<input type="hidden" id="NOTICE_NUM" value="${row.NOTICE_NUM }"></td> 
							<td>${row.ADM_ID}</td> 
							<td>${row.NOTICE_DATE}</td> 
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
         </tbody>   
      </table>
   <section class="banner">
		<input type=text><input type ="button" value=검색>
   </section>
   
<jsp:include page="../side/footer.jsp" flush="false"/>

</body>
</html>