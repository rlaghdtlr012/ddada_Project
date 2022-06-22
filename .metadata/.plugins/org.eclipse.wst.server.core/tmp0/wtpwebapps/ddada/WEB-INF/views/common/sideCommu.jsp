<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>사이드 바</title>
    <style>
    	.flex-column {
			text-align:left;
			margin-left:10px;
		}
		.category-icon {
			display:inline;
			vertical-align:middle;
			position:relative;
			top:-4px;
		}
		a.parent-category{
			font-size:23px;
			color: black;
			display:inline-block;
		}
		.category{
			font-size:20px;
			color: rgb(192, 192, 192);
			display:block;
			position:relative;
			left:24px;
		}
		a.child-category{
			font-size:19px;
			color: rgb(192, 192, 192);
		/* 	display:inline-block; */
			display:block;
			position:relative;
			left:15px;
		}
		a.parent-category:hover {
		    color: #6ca8d8;
		    text-decoration: none;
		}
		.category:hover {
		    color: black;
		    text-decoration: none;
		}
		a.child-category:hover {
		    color: #6ca8d8;
		    text-decoration: none;
		}
		a.test-category {
			font-size:23px;
			display:inline-block;
			color: #6ca8d8;
			text-decoration: none;
		}
		#category-home > a{
			font-size:23px;
			display:inline-block;
			color: #6ca8d8;
		}
    </style>
<!--     <script>
    	$('#category-home').css('color', 'black');
    	$('#category-home').parent().css('color', '#black');
    </script> -->
</head>
<body>
      <div class="col-3" style="margin-left: 10px; max-width: 230px;">
        
        <div class="nav flex-column" style="display:inline;">
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category" href="${contextPath}/lecture.do">강좌 Ddada</a>
          </div>
          <br>
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category" href="${contextPath}/board/certificateInfo.do">자격증 Ddada</a>
          </div>
          <br>
          
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category" href="${contextPath}/board/takeClassList.do">나의 Ddada</a>
          </div>
          
          <br>
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category" href="${contextPath}/member/mainPractice2.do">도서 Ddada</a>
          </div>
          <br>
          
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="test-category" id="category-home">커뮤니티 Ddada</a>
          </div>
          <div class="category">커뮤니티
	          <a class="child-category" href="${contextPath}/board/notice.do">- 공지사항</a>
          </div>
          <div class="category">고객 센터
	          <a class="child-category" href="${contextPath}/board/faq.do">- FAQ</a>
          	  <a class="child-category" href="${contextPath}/board/ask.do">- 1:1 문의</a>
          </div>
          <div class="category">따다 TALK
	          <a class="child-category" href="${contextPath}/board/LicenseTalkList.do">- 자격증 TALK</a>
          	  <a class="child-category" href="${contextPath}/board/FreeTalkList.do">- 쉬어가는 TALK</a>
          </div>
        </div>
      </div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<script>
$(function ()
{
    var url = window.location.pathname;
    
    console.log(url);
    
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
    $('.child-category').each(function ()
    {
    	if (urlRegExp.test(this.href.replace(/\/$/, '')))
    	{
    		$(this).parent().css('color', 'black');
        	$(this).css('color', 'black');
        }
     });
});
</script>
</body>
</html>