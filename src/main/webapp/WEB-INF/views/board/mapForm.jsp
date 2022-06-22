<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<%
  request.setCharacterEncoding("UTF-8");
%>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />



<!DOCTYPE html>
<html>


<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <title> Ddada 지도 </title>
  <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
  <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
  <!-- <script src="bootstrap.min.js"></script> -->
  
</head>
<body>

  <div class="row" style="margin-left:50px; margin-top: 70px;">

   <h4 style = "text-align:left"> 오시는 길 > </h4>
    
  </div>
   
  <div class="rowMap" style="margin-left:50px; margin-top: 70px;">       
   <div id="map" style="width:500px; height:400px;"> </div>
   
   <!-- 실제 지도를 그리는 Javascript API를 불러오기 -->
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=87a294a0b34287392e9ea85b37583818"></script>
   
   <!-- 지도를 띄우는 코드 작성 -->
   <script>
      var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
      var options = { //지도를 생성할 때 필요한 기본 옵션
         center: new kakao.maps.LatLng(37.482024, 127.002974), //지도의 중심좌표.
         level: 3 //지도의 레벨(확대, 축소 정도)
      };

      var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

       // 마커가 표시될 위치입니다 
      var markerPosition  = new kakao.maps.LatLng(37.482024, 127.002974); 

      // 마커를 생성합니다
      var marker = new kakao.maps.Marker({
          position: markerPosition
      });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
      </script>
 </div>      
</body>
</html>