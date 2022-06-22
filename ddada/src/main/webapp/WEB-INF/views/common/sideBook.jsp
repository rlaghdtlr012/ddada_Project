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
		.category-icon{
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
 		.category {
			font-size:23px;
			color: #6ca8d8;
			display:inline-block;
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
		    color: #6ca8d8;
		    text-decoration: none;
		}
		a.child-category:hover {
		    color: #6ca8d8;
		    text-decoration: none;
		}
		#category-home > a{
			font-size:23px;
			display:inline-block;
			color: #6ca8d8;
		}
    </style>
</head>
<body>
<!-- 	<div class="row" style="margin-top: 70px;"> -->

      <div class="col-3" style="margin-left: 10px; max-width: 230px;">   
        <div class="nav flex-column" style="display:inline;">
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category">강좌 Ddada</a>
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
	          <a class="category" id="#category-home">도서 Ddada</a>
          </div>
          
          <br>
          
          <div class="parent-category">
	          <img class="category-icon" src="${contextPath}/resources/Image/category_icon.png" style="width:16px; height:16px; margin-right:5px;">
	          <a class="parent-category" href="${contextPath}/board/notice.do">커뮤니티 Ddada</a>
          </div>
          
        </div>
      </div>
<script>

	$('#category-home').css('color', '#6ca8d8');
	$('#category-home').parent().css('color', '#6ca8d8');

$(function ()
{
    var url = window.location.pathname;
    
    console.log(url); // /myapp/board/takeClassList.do
    
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");  
    $('.parent-category').each(function ()
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