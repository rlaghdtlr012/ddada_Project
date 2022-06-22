<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!-- tiles 기준으로 베이스 레이아웃 -->
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    
    <!-- 부트스트랩, CSS, jQuery, JS : layout에 적용하면, 타일즈에는 다 공통 적용인가..? -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    	  integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    
    <style>
      #container {
        width: 100%;
        margin: 0px auto;
        /* text-align:center; */
        border: 0px solid #bcbcbc;
      }
      #header {
        padding: 5px;
        margin-bottom: 5px;
        border: 0px solid #bcbcbc;
        background-color:rgb(205, 233, 255);
      }
      #sidebar-left {
        width: 12%;
        /* height:700px; */
        height : 100%;
        padding: 5px;
        /* margin-right: 5px; */
        margin-right: 30px;
        /* margin-bottom: 5px; */
        float: left;
        background-color: white;
        border: 0px solid #bcbcbc;
		font-size:10px;
		
		margin-top:40px; /*10px*/
      }
      #content {
        width: 70%;
        height: 150%;
        /* padding: 5px;
        margin-right: 5px; */
        float: left;
        border: 0px solid #bcbcbc;
        /* margin-left: 50px; */       
        margin-right : -20px;
        margin-bottom : 50px;
      }
      #sidebar-right {
        /* background-color: #f1f2f3;
        border : 2px solid #808080; */
        /* font-size:10px; */
        width : 12%;
        /* height : 100%;
        padding-bottom : 50%; */
        float: right;
        /* padding: 1em; */
        /* clear: both; */
      /* width: 15%;
        height:700px;
        padding: 5px; */
        /* margin-right: 30px; */
        /* margin-bottom: 5px; */
        /* display: inline-block; */
        /*display:inline !important;  */
        /* border: 0px solid #bcbcbc; */
        /* position : fixed; */
        margin-right : 10px;
        /* display : flex; */
      }
      #fixedbar {
        clear: both;
        padding: 10px;
        /* border: 0px solid #bcbcbc; */
        background-color: #6ca8d8;
        position : fixed;
        bottom : 0px;
        width : 100%;
      }
      #footer {
        clear: both;
        /* padding: 5px; */
        padding: 10px;
        padding-bottom : 50px;
        /* border: 0px solid #bcbcbc; */
        background-color: #cde9ff;
        margin-top : 100px;
        /* margin-bottom : 40px; */
        /* position:relative;
        top:500px; */
      }
    </style>
    <title><tiles:insertAttribute name="title" /></title>
  </head>
  
    <body>
    <div id="container">
      <div id="header">
         <tiles:insertAttribute name="header"/>
      </div>
      <div id="sidebar-left">
          <tiles:insertAttribute name="sideleft"/>  <!-- side => sideleft -->
      </div>
      <div id="content">
          <tiles:insertAttribute name="body"/>
      </div>
      <div id="sidebar-right">
          <tiles:insertAttribute name="sideright"/>
      </div>
      <div id="fixedbar">
          <tiles:insertAttribute name="fixedbar"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer"/>
      </div>
    </div>
  </body>
</html>