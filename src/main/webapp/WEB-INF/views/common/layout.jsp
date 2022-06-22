<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"
 %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"  %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
      *{
      	font-family: 'Jua', sans-serif;
      }
	  input[type=password] {
	   font-family: 'serif';
	  }
      #container {
        width: 100%;
        margin: 2px auto;
        text-align:left;
        border: 1px solid #bcbcbc;
        float : relative;
        border-radius : 10px 10px 10px 10px;
      }
      #content {
        width: 100%;
        padding: 5px;
        margin-right: 5px;
        border: 0px solid #bcbcbc;
        float : relative;
        text-align:left;
      }
      #header {
        padding: 0px;
        margin-bottom: 5px;
        border: 0px solid #cde9ff;
        background-color: #cde9ff;
      }
      #sidebar-left {
        width: 15%;
        height:2300px;
        padding: 5px;
        margin-right: 5px;
        margin-bottom: 5px;
        float: left;
        background-color: white;
        border: 0px solid #FFFFFF;
        font-size:20px;
      }
      #footer {
        clear: both;
        padding: 5px;
        border: 0px solid #bcbcbc;
        background-color: #cde9ff;
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
          <tiles:insertAttribute name="side"/> 
      </div>
      <div id="content">
          <tiles:insertAttribute name="body"/>
      </div>
      <div id="footer">
          <tiles:insertAttribute name="footer"/>
      </div>
    </div>
  </body>
</html>