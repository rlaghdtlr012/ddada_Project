<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- contextPath이지만, 준혁이는 path  -->
<c:set var="path"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>LicenseTalk</title>
   
   <link rel="stylesheet" href="css/bootstrap.css">
   <script>
      $(document).ready(function(){
         $("#btnWrite").click(function(){
            // 페이지 주소 변경(이동)
            // location.href = "${contextpath}/board/LicenseTalkWrite.do";
            location.href = "${path}/board/LicenseTalkWrite.do";
         });
      });
   </script>
</head>
<body>
   <br>
   <h3 class="myDD_category" style="text-align:left;"> 커뮤니티 ></h3>
   <br>
   <h4>자격증 TALK</h4>
   <form name="form1" method="post" action="${path}/board/LicenseTalkList.do">
      <select name="searchOption">
         <!-- 검색조건을 검색처리 후 결과화면에 보여주기위해 c:out 출력태그 -->
         <option value="all" <c:out value="${map.searchOption == 'all'?'selected':''}"/> >제목+이름+내용</option>
         <option value="writer" <c:out value="${map.searchOption == 'writer'?'selected':''}"/> >이름</option>
         <option value="content" <c:out value="${map.searchOption == 'content'?'selected':''}"/> >내용</option>
         <option value="title" <c:out value="${map.searchOption == 'title'?'selected':''}"/> >제목</option>
      </select>
      <input name="keyword" value="${map.keyword}">
      <input type="submit" value="조회">
      <button type="button"  id="btnWrite">글쓰기</button>
   </form> 
   <!-- 레코드의 갯수를 출력 -->
   ${map.count}개의 게시물이 있습니다.
   <table border="1"  align="center"  width="80%">
          <tr align="center" style="background-color:rgb(205, 233, 255)">
               <th>번호</th>
               <th>제목</th>
               <th>작성자</th>
               <th>작성일</th>
               <th>조회수</th>
            </tr>
   
     <!-- map에서 LicenseTalkList를 꺼내서 사용해야 함!! -->
     <c:forEach var="row" items="${map.LicenseTalkList}">     
            <tr align="center">
               <td>${row.LICENSETALKNO}</td>
               <%-- <td><a href="${path}/board/LicenseTalkView.do?LICENSETALKNO=${row.LICENSETALKNO}">${row.TITLE}</a></td> --%>
               <td><a href="${path}/board/LicenseTalkView.do?LicenseTalkNO=${row.LICENSETALKNO}">${row.TITLE}</a></td>
               <td>${row.WRITER}</td>
               <td>
                     <!-- 원하는 날짜 형식으로 출력하기 위해 fmt태그 사용 -->
                     <fmt:formatDate value="${row.REGDATE}" pattern="yyyy-MM-dd HH:mm:ss"/>
               </td>
               <td>${row.VIEWCNT}</td>
            </tr>
      </c:forEach>
   </table>
<script src="js/jquery-3.1.1.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>