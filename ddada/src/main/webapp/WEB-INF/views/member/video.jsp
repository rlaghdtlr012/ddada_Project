<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
   <c:when test="${membervo.lec_num eq '441420015' }">
     <iframe width="1150" height="850" src="https://www.youtube.com/embed/tPWBF13JIVk" title="YouTube video player" frameborder="0"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420001' }">
       <iframe width="1150" height="850" src="https://www.youtube.com/embed/L-x1c4PAUOY" title="YouTube video player" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420011' }">
       <iframe width="1150" height="850" src="https://www.youtube.com/embed/8uP_E6SyiuM" title="YouTube video player" frameborder="0" 
       allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420007' }">
      <iframe width="1150" height="850" src="https://www.youtube.com/embed/Av9UFzl_wis" title="YouTube video player" frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420019' }">
      <iframe width="1150" height="850" src="https://www.youtube.com/embed/p_sbvqe7htg" title="YouTube video player" frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420014' }">
     <iframe width="1150" height="850" src="https://www.youtube.com/embed/aagsTCiQhyo" title="YouTube video player" frameborder="0"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   
   <c:when test="${membervo.lec_num eq '441420021' }">
      <iframe width="1150" height="850" src="https://www.youtube.com/embed/cyLdWgM5cwo" title="YouTube video player" frameborder="0"
       allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   <c:otherwise>
      <video width="1150px" height="850px" src="Blossoms - 113004.mp4" controls autoplay muted></video>
   </c:otherwise>
</c:choose>


</body>
</html>