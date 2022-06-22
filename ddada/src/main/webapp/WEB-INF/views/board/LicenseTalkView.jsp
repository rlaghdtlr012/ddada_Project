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
   <title>자격증TalkView</title>
   <link rel="stylesheet" href="css/bootstrap.css">
   <script>
      $(document).ready(function(){
         $("#btnDelete").click(function(){
            if(confirm("삭제하시겠습니까?")){
               document.form1.action = "${path}/board/delete.do";
               document.form1.submit();
            }
         });
         
         $("#btnUpdate").click(function(){
            //var title = document.form1.title.value; --> name 속성으로 처리할 경우
            //var content = document.form1.content.value;
            //var writer = document.form1.writer.value;
            var title = $("#title").val();
            var content = $("#content").val();
            var writer = $("#writer").val();
            if(title == ""){
               alert("제목을 입력하세요");
               document.form1.title.focus();
               return;
            }
            if(content == ""){
               alert("내용을 입력하세요");
               document.form1.content.focus();
               return;
            }
            if(writer == ""){
               alert("이름을 입력하세요");
               document.form1.writer.focus();
               return;
            }
            document.form1.action="${path}/board/update.do"
            //폼에 입력한 데이터를 서버로 전송
            document.form1.submit();
         }
      }
      })
   })
   </script>
</head>
<body>


   <h2>자격증Talk 게시글보기</h2>
   <form name="form1" method="post">
      <div>      <!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
         작성일자 : <fmt:formatDate value="${LicenseTalk.REGDATE}" pattern="yyyy-MM-dd a HH:mm:ss"/>
               <!-- 날짜 형식 -> yyyy 4자리 연도, MM 월, dd 일, a 오전/오후, HH 24시간제, hh 12시간제, mm 분, ss초  -->   
      
      </div>
      <div>
         조회수: ${LicenseTalk.VIEWCNT}
      </div>
      <div>
         제목
         <input name="title" id="title" size="80" value="${LicenseTalk.TITLE}" placeholder="제목을 입력해주세요">
      </div>
      <div>
         내용
         <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력해주세요">${LicenseTalk.CONTENT}</textarea>
      </div>
      <div>
         이름
         <input name="writer" id="writer" value="${LicenseTalk.WRITER}" placeholder="이름을 입력해주세요">
      </div>
      <div style="width:650px; text-align: center;">
         <!--  게시물 번호를 hidden으로 처리 -->
         <input type="hidden" name="LICENSETALKNO" value="${LicenseTalk.LICENSETALKNO}">
         <button type="button" id="btnUpdate">수정</button>
         <button type="button" id="btnDelete">삭제</button>
      </div>
   </form>
</body>
</html>