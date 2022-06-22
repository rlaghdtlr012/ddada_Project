<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
  request.setCharacterEncoding("UTF-8");
%>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!doctype html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>IT 자격증은 Ddada 에서!</title>
   <!-- banner CSS -->
   <style>
	    .carousel-inner > .carousel-item > img {
	       /* border-color:blue; */
	       width : 100%;
	       /* height: 100%; */
	    }
	    
	    .container {
	        width: 250px;
	        margin: 30px;
	        text-align:center;
	        border: 5px solid #6ca8d8;
	        /* float : relative; */
	        border-radius : 15px 15px 15px 15px;
	    } 
   </style>
   
   <script>
    $(function(){
        var responseMessage = "<c:out value="${message}" />";
        if(responseMessage != ""){
            alert(responseMessage)
        }
    }) 
    </script>
</head>
<div id="demo" class="carousel slide" data-ride="carousel" data-interval="4000" >

    <div class="carousel-inner">
      <!-- 슬라이드 쇼 -->
      <div class="carousel-item active">
        <!--가로-->
        <a href = "#" >
          <img class="d-block w-100" 
                src="${contextPath}/resources/Image/banner1.png"
                alt="First slide">
        </a>  
<!--           <div class="carousel-caption d-none d-md-block">
        </div> -->
      </div>
      <div class="carousel-item">
        <a href = "${contextPath}/board/informationProcessing.do" >
          <img class="d-block w-100" 
                src="${contextPath}/resources/Image/banner2.png"
                alt="Second slide">
        </a>  
      </div>
      <div class="carousel-item">
        <a href = "${contextPath}/board/networkManagement.do" >
          <img class="d-block w-100" 
                src="${contextPath}/resources/Image/banner3.png"
                alt="Third slide">
        </a>  
      </div>
      
      <div class="carousel-item">
        <a href = "${contextPath}/board/sqld.do" >
          <img class="d-block w-100" 
                src="${contextPath}/resources/Image/banner4.png"
                alt="Fourth slide">
        </a>  
      </div>
    
    <!-- / 슬라이드 쇼 끝 -->
    
    <!-- 왼쪽 오른쪽 화살표 버튼 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <!-- <span>Previous</span> -->
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <!-- <span>Next</span> -->
    </a>
    <!-- / 화살표 버튼 끝 -->
    
    <!-- 인디케이터 -->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"> </li> <!--0번부터시작-->
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
      <li data-target="#dem" data-slide-to="3"></li>
    </ul>
    <!-- 인디케이터 끝 -->
  </div>
  </div>

  <!-- 강좌 선택 부분 -->
  
  <div class = "select_lecture" >
     <br>
     <br>
     <br>
     <h3 class="myDD_category" style="text-align:left; color:black;"> 강좌 선택 ></h3>
     <br>
  </div>

  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style="width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420015" class="card-link"> <br> 운영체제</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : 리눅스마스터 </h6>
           </td>
        </tr>
      </table>
    </div>
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420011" class="card-link"> <br> DataBase</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : SQLD / SQLP </h6>
           </td>
        </tr>
      </table>
    </div>
    
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420007" class="card-link"> <br> 네트워크</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : 네트워크관리사 </h6>
           </td>
        </tr>
      </table>
    </div>
    
    
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420019" class="card-link"> <br> 해킹 및 정보보안 </a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : 정보보안기사 </h6>
           </td>
        </tr>
      </table>
    </div>
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420014" class="card-link"> <br> 클라우드 </a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : Azure </h6>
           </td>
        </tr>
      </table>
    </div>
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420001" class="card-link"> <br> 정보기술</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : 정보처리기사</h6>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
           </td>
        </tr>
      </table>
    </div>
    
    
    
  <div class="container" id = "sqld" style = "float : left; margin:10px; width : 250px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 250px;">
            <h2 style = "font-size : 25px; font-weight : 1000"><a href="http://localhost:8086/myapp/Information1.do?lec_num=441420021" class="card-link"> <br> 기타 </a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6> 대표 자격증 : 컴퓨터할용능력 </h6>
           </td>
        </tr>
      </table>
    </div>
</body>
</html>