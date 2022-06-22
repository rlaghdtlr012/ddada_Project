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
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4b9f6bbb7b2180bdd9f9213854677c0e"></script>
   
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
      
      
       <%--         
       
       
       
             <div class="col-9" style="margin-top: -35px;">
           <ul class="nav nav-tabs" id="myTab" role="tablist">
             <li class="nav-item" role="presentation">
               <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="truee">수강 중인 강좌 클릭 시</a>
             </li>
             
             <li class="nav-item" role="presentation">
               <a class="nav-link" id="exam-tab" data-toggle="tab" href="#exam" role="tab" aria-controls="exam" aria-selected="false">내역 관리 클릭 시</a>
             </li>
             
             <li class="nav-item" role="presentation">
               <a class="nav-link" id="refunds-tab" data-toggle="tab" href="#refunds" role="tab" aria-controls="refunds" aria-selected="false">담아두기 관리 클릭 시</a>
             </li>
             
             <li class="nav-item" role="presentation">
               <a class="nav-link" id="teacher-tab" data-toggle="tab" href="#teacher" role="tab" aria-controls="teacher" aria-selected="false">내 설정 클릭 시</a>
             </li>
           </ul>
           
           
             
           <div class="tab-content" id="myTabContent">
           
           
             <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <br>
                <h4 class="myDD_category" style="text-align:left;">수강 중인 강좌 ></h4>
                <br>
               <div class="card text-center" style="width: 500px;">
                    <div class="card-body">
                       <img src="${contextPath}/resources/Image/hh.jpg"
                          style="width:150px; height:200px; margin-right:10px; float:left;">
                      <h5 class="card-title">SQLD 강좌 이름</h5>
                      <p class="card-text" style="font-size: 16px;">기간 : 2022.03.10 ~ 2022.04.12</p>
                      <p class="card-text" style="font-size: 16px;">강사 : ______</p>
                      <div class="progress" style="width:190px; height: 8px;">
                            <div class="progress-bar" role="progressbar" style="width: 30%;" aria-valuemin="0" aria-valuemax="40"></div>
                           </div>
                           <p class="card-text" style="font-size: 10px; margin-left: 3px;">진도율 | 출석 : ____ </p>
                        
                           <div class="progress" style="width:190px; height: 8px;">
                            <div class="average-progress-bar" role="progressbar" style="width: 50%;" aria-valuemin="0" aria-valuemax="40"></div>
                           </div>
                           <p class="card-text" style="font-size: 10px; margin-left: 3px;">수강생의 평균 진도율</p>
                        
                           <p class="card-text" style="font-size: 16px;">교재 : ____</p>
                           <p class="card-text" style="font-size: 16px;">성적 : ____</p>
                      <br>
                  </div>
                  <a href="${contextPath}/error/error404.do" class="btn btn-primary" style="width:480px; margin:10px;">수강하기</a>
               </div>
             </div> 
   
             <div class="tab-pane fade" id="exam" role="tabpanel" aria-labelledby="exam-tab">
                * 자격증 취득 내역 => api로 개인 정보가 아닌 공공 정보를 갖고 오는거라 개인적으로 자기가 자격증을 추가하는 식으로 해야할 듯<br>
                그 때 예시로 지하철 api 보여주신 것처럼.. 공공기관 데이터로 취득할 수 있는 자격증들에는 어떤 종류가 있는지 이런거는 ddada 자격증 쪽에~~<br>
             </div>
           
                
             <div class="tab-pane fade show" id="refunds" role="tabpanel" aria-labelledby="refunds-tab">
              1. 내가 담아둔 강좌 (리스트, 간단 정보 표시, 수강하기 버튼)
              2. 내가 담아둔 자격증 (리스트, 간단 정보 표시, 접수하기 버튼)
              <p style="color: rgb(0, 0, 0); line-height: 8mm; font-size:13pt; text-align: left; line-height:10px;">담아둔 강좌</p>
             </div>
   
   
             <div class="tab-pane fade show" id="teacher" role="tabpanel" aria-labelledby="teacher-tab" style="margin-top :10px;">
                <br>
                <h4 class="myDD_category" style="text-align:left;">프로필 설정 ></h4>
                <br>
                <div class="card text-center" style="width: 600px;">
                 <div class="card-body" style="margin-top:20px; margin-left:20px;">
                   <h5 class="card-title">000님</h5>
                   <br>
                   <p class="card-text" style="font-size: 16px;">아이디 :</p>
                   <br>
                   <p class="card-text" style="font-size: 16px;">비밀번호 : ______
                      <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
                              position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
                   <br>
                   <p class="card-text" style="font-size: 16px;">휴대전화 : ____
                      <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
                                    position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
                   <br>
                   <p class="card-text" style="font-size: 16px;">이메일 주소 : ____
                      <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
                                    position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
                   <br>
                   <p class="card-text" style="font-size: 16px;">주소 : ____
                      <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
                                    position:relative; right: 200px; width:50px; height: 30px; font-size:14px;display:inline; float:right;">수정</a></p>
                   <br>
                 </div>
                 <a href="#" class="btn btn-primary" style="background-color: white; color:black; border:1px; border-color: #6ca8d8; border-style:solid; 
                        position:relative; right: -450px; width:100px; margin:10px;">회원 탈퇴</a>
                </div>
             </div>
          </div>
         
         </div>
          --%>

      
      
</body>

</html>
