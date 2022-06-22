<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ASK success</title>
<link rel="stylesheet" href="css/bootstrap.css">

</head>



<body>

      <br>
      <br>

            <h1 style="text-align:center;">상담 내용이 성공적으로 보내졌습니다.</h1>
            
            <br>
            <br>
            
            <div align = "center">
                                <a href="${contextPath}/board/ask.do" class="qna_btn" v-on:click.stop.prevent="save()" >
						          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
						                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
						                  돌아가기</button>
                                </a>
            </div>

</body>

</html>