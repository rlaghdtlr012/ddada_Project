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
      <iframe width="560" height="315" src="https://www.youtube.com/embed/7AK3RoN_DNA" title="YouTube video player" frameborder="0"
 allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   <c:when test="${membervo.lec_num eq '441420001' }">
       <iframe width="560" height="315" src="https://www.youtube.com/embed/srQ3IlpYm28?start=107" title="YouTube video player" frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </c:when>
   <c:otherwise>
      <video width="560px" height="315px" src="Blossoms - 113004.mp4" controls autoplay muted></video>
   </c:otherwise>
</c:choose>


</body>
</html>