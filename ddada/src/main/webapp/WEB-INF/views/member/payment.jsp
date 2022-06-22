<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  
<title>결제</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
   
 
<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 



<style>
   
   
   
   
     body{
         font-size :1em;
         color : #555;
         
      }
   
   @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
      *{
         font-family : 'JUA', sans-serif;
      }
   
   
    #container {
        width: 100%;
        margin: 0px auto;
          text-align:center;
        border: 0px solid #bcbcbc;
      }
      #header {
        /* padding: 5px; */
        m
rgin-bottom: 5px;
        border: 0px solid #bcbcbc;
         /* background-color: lightgreen; */
      }
      #sidebar-left {
        width: 15%;
        height:700px; 
        padding: 5px;
        margin-right: 5px;
        margin-bottom: 5px;
        float: left;
         background-color: #FFFFFF;
        border: 0px solid #bcbcbc;
        font-size:20px;
      }
      #content {
        width: 75%;
        padding: 5px;
        margin-right: 5px;
        float: left;
        border: 0px solid #bcbcbc;
      }
      /* #footer {
        clear: both;
        padding: 5px;
        border: 0px solid #bcbcbc;
         background-color: lightblue;
      } */
      
      table, th, td{
         border : 2px solid black;
         border-collapse : collapse; 
      }
   
       body{
         font-size : 0.75em;
         color : #555;
         
      } 
   
   
   
      
      .photoms{
         box-sizing : content-box;               
         width : 170px;
         height : 150px;
         float : left;
         margin : 20px 10px 10px 5px;
      }
      
      .boxms{
         box-sizing : content-box;
         position : relative;
         width : 890px;
         min-height : 200px;
         height : auto;
         overflow : hidden;
         display : block;
         border : 1px solid #d9d9d9;
         vertical-align : top;
         margin : 15px auto;
      
      }
      
      .detail01{
         box-sizing : content-box;
         width : 610px;
         margin : 20px 10px 10px;
         float : left;
      
      }
      
      .detail02{
         box-sizing : centent-box;
         width : 402px;
         position : relative;
         margin : 15px 10px 0px 140px;
         padding-bottom : 10px;
         float : right;
      }
      
      table{
         display : table;
         border-collapse : separate;
         text-indent : initial;
         border-color : grey;
      
      }
      .price{
         width : 43%
         padding : 0px;
         margin : 0px;
         height : 22px;
         overflow : hidden;
         vertical-align : top;
         box-sizing : content-box;
      }
      
      .overline{
         box-sizing : content-box;
         font-family : Verdana, Arial, Helvetica, sans-serif;
         text-align : right;
      }
      
      
      
      
      
      .numbox{
         float : right;
         border : 1px solid #cdcdcd;
         margin : 0 10px 0 0;
         width: 71px;
         display : block;
         height : 50px;
      }
      
      .moniternum{
         float : left;
         text-align : left;
         display : block;
      }
      
      .num3ms{
         border : 0;
         padding : 10px 5px 10px 5px;
         font-size : 16px;
         margin : 0px;
         color : #222;
         width : 36px;
         float : left;
         
      }
      
      .imgbox1ms{
         float: right;
         text-align : center;
         border : 0; 
         margin : 0;
         padding : 1px 0;
         width : 23px;
         background : #f8f8f8;
         border-left : 1px solid #cdcdcd;
         display : block;
      }
      
      .upim{
         width : 13px;
         height : 19px;
         text-align : right;
         border : none; 
         margin : 0;
         padding : 0;
         cursor : pointer;         
      }
      .downim{
         width : 13px;
         height : 19px;
         text-align : right;
         border : none;
         margin : 0;
         padding : 0;
         cursor : pointer;
      }
      
      .booknum{
         width : 20px;
         height : 50px;
      
      }
   
    *{
      margin :0;
      padding : 0; 
   }
    .carousel-inner > .carousel-item > img {
       /* border-color:blue; */
       width : 100%;
       /* height: 100%; */
    }
   body{
      font-size : 14px;
      line-height : 1.5;
      color : #666;
      letter-spacing : 0;
   }
   
   /* .1_order{
      position : relative;      
      height : 88px;
      box-shadow : 0 1px 2px 0 rgb(0 0 0 / 6%), 0 2px 12px 0 rgb(0 0 0 / 3%);
      z-index : 10;
   } */
   .b_order{
      width: 1240px;
         height: 44px; 
        margin: 0 auto;
       /* padding: 22px 0; */
   }
   .c_order_title{
      position : relative;
   }
   .c_order_title_style_1{
      /* float : left; */
   }
   .c_order_header{
      
      float : left;
      position : absolute;
      left : 306px;
   }
   .c_order_step{
      floaa : right;      
   }
   .step{
      overflow: hidden;
         height: 42px;
       border-radius: 25px;
         border: 1px solid #eee;
   }
   dl, ul, ol, menu, li{
      list-style : none;
   }
   .number{
      font-weight : bold;
      font-size : 22px;


   }
     .stamp{
      float : right;
      min-width : 80px;
      padding : 10px 15px 11px 15px;
      font-size : 14px;
      line-height : 21px;
      color : #333;
      letter-spacing : 0;
       text-align : center; 
   } 
    
   /* ul{
      margin-block-start: 1em;
          margin-block-end: 1em;
       margin-inline-start: 0px;
       margin-inline-end: 0px;
         padding-inline-start: 40px;
         width : 200px;   
   } */
   
   .1_order_content_warp{
      
      position: relative;
       width: 1240px;
       margin: 0 auto;
       zoom: 1;            
   }
   .b_order_info{
      position: relative;
       width: 870px;
       margin-bottom: 45px;
       zoom : 1;
   }
   .c_order_title{
      padding : 26px 0 16px 0;
       height : 60px; 
      border-bottom : 1px solid #999;
      position : relative;
      
   }
   
   .c_order_title_under{
      position : absolute;
      left : 10px;
      float : left;
      
      line-height : 10px; 
   }   
   
   .nomember_notice{
      float: left;
       padding-left: 110px;
       margin-top: -15px; 
       font-size: 24px;
       color: #111;
       line-height: 24px;
   }
   .delivery_info{
      display : block;
      margin-top : 25px;
   }
   
   .c_direct_information{
      zoom: 1;
       padding-bottom: 21px;      
    }
    .title, .dil, .order , .pro{
       float: left;
       font-size: 18px;
       font-weight: bold;
       line-height: 27px;
       color: #111;
    }
    
     .notice_sns{
       clear: both;
       width: 100%;
         padding-top: 40px;
       font-size: 14px;
       color: #999;
       line-height: 10px;
       position : absolute;
       left : -228px;
   } 
    
    dl{
       display : block;
       margin-block-start: 1em;
       margin-block-end: 1em;
         margin-inline-start: 0px;
       margin-inline-end: 0px;
    }
    .field{
       margin-bottom: 15px;
       zoom: 1;
    }
    .skip{
       position: absolute;
       overflow: hidden;
       clip: rect(0 0 0 0);
       margin: -1px;
       width: 1px;
       height: 1px;
      
    }
   
   .name{
       
       position : absolute;    
       top : 300px;
       left : 297px;    
         float: left;
       width: 341px;
        height: 20px;        
       padding: 13px 16px;
       border: 1px solid #ccc;
       font-size: 15px;
       font-weight: normal;
       line-height: 20px;
       color: #111;
       letter-spacing: 0;
       
   }
   .form_box{
      float : left;
   }
   .c_order_selectbox{
      display : inline;
      float : left;
      position : absolute;
      top : 330px;
      width : 90%;
      border : 0px solid #ccc;
          margin: 10px auto;
          left : 293px;
      
   }
   
   .select{
      width : 100px;
      height : 25px;
      padding-right : 32px;
   }
   
   .first_phone{
      overflow : visible;
      margin : 0;
      font-size : inherit;
   }
   .zero{
      border: 0px solid red;
       float: left;
       width : 110px;
      height : 25px;
       margin : 0;
       box-sizing: border-box;
   }
   .first{
       border: 0px solid black;
       float: left;
       margin : 0;
       width : 163px;
      height : 25px;
       box-sizing: border-box;
       position : absolute;
       left : 120px;
       
   }
   
   .second{
       border: 0px solid black;
       float: left;
       width : 163px;
      height : 25px;
       margin : 0;
       box-sizing: border-box;
       position : absolute;
       left : 350px;
   }
   
   .field_direct_email{
      display : inline;
      float : left;
      position : absolute;
      top : 370px;
      width : 90%;
      border : 0px solid #ccc;
          margin: 10px auto;
          left : 297px;
   }
   
   .zero0{
      border: 0px solid red;
       float: left;
       width : 153px;
      height : 25px;
       margin : 0;
       box-sizing: border-box;
   }
   
   .first1{
      border: 0px solid black;
       float: left;
       margin : 0;
       width : 35px;
      height : 20px;
       box-sizing: border-box;
       position : absolute;
       left : 230px;
      
   }
   .second2{
      border: 0px solid black;
       float: left;
       width : px;
      height : 18px;
       margin : 0;
       box-sizing: border-box;
       position : absolute;
       left : 280px;
   }
   
   .nextmail{
      width : 153px;
      height : 25px;
   }
    .deliver{
      margin-top: 30px;
       padding-top: 27px;
       border-top: 1px solid #eee;
       display : block; 
       width : 872px;
       height : 427px;
   
       
   }
    .direct{
      zoom : 1;
      padding-bottom : 21px;
      display : block;
      width : 870px;
      height : 48px; 
   
   }
    .c_order_selectbox1{
      display : inline;
      float : left;
      position : absolute;
      top : 630px;
      width : 90%;
      border : 0px solid #ccc;
          margin: 10px auto;
          left : 293px;
   }
   
   .requestselect{
      display : inline;
      float : left;
      position : absolute;
      top : 667px;
      width : 300px;
      height : 25px;
          margin: 10px auto;
          left : 297px;
   }
   .order{
      position: relative;
          width: 870px;
       margin-bottom: 45px;
   } 
   .notice_sns1{
      clear: both;
       width: 100%;
         padding-top: 40px;
       font-size: 14px;
       color: #999;
       line-height: 10px;
       position : absolute;
       left : -225px;
       top : 135px;
   }
   .ordernum{
       position : absolute; 
       left : 520px; 
       top : 850px;
       font-size : 15px;
   }
   .cash{
      font-size : 25px;
      position : absolute; left : 555px; top : 843px;font-size : 25px;"
   }
   
   .tab_container{
      display: block;
       padding-top: 82px;
       padding-left: 1px;
       zoom: 1;
   }
   .tab_table{
      position: relative;
       float: left;   
       width: 175px;
       height: 52px;
       margin: -1px 0 0 -1px
   }
    */ */ */
   .1_order_side{
      position: absolute;
       top: 0;
       left: 50%;
       margin-left: 304px;
       right: 0;
       z-index: 1;
       width: 300px;
       padding-left: 20px;
       background-color: #fff;
   }
   
    .benefit{
      padding-bottom: 27px;
       border-bottom: 1px dashed #ddd;
       width : 300px;
       height : 69px;
   } 
   .amount{
      width : 300px;
      height : 254px;
   } 
    .expected{
      width  : 300px;
      height : 56px;
      padding-top : 35px;
      color : #ADD8E6;
   } 
   .order_cash{
      width : 300px;
      height : 178px;
   }
   
</style>
</head>

<body>
   
   
   

   <div class = "content"> <!-- 전체 틀 -->
      <div class = "1_order"> <!-- 주문결제 박스 시작 -->
         
         
         <div class = "b_order"> <!--블럭 안에 블럭 -->
            <div class = "c_order_title_ c_order_style_1"> <!-- 주문결제 왼쪽 -->
               <h3 class = "c_order_header">
                  >결제 및 배송
               </h3>
            </div>                        
         </div>
         

         <div class = "c_order_title">
            <h4 class = "c_order_title_under">결제정보</h4>
            <p class = "nomember_notice" style = "position : absolute; left : 310px;">
               <span class = "nomember_notice">
                </span>
                      &#10071; 
                      교재의 경우 2만원 이상 구매시 배송비 무료입니다.
            </p>
         
         </div>
         <div class = "order_content">    <!--  전체박스 -->
            <div class = "delivery_info"> <!-- 주문자 정보 박스 -->
               <div class = "c_direct_information">
                  <h3  class = "title">주문자 정보</h3>
                  <p class = "notice_sns">소셜 로그인 회원의 회원정보는 최초 주문자 정보(이름, 휴대폰 번호, 이메일)로 업데이트되며, 본인인증 또는 회원정보 변경을 통해 수정 가능합니다.</p>
               </div>
               <div class = "info">
                  <dl>
                     <div class = "field">
                        <dt class = "skip">주문자명</dt>
                        <div>
                           <input type = "text" class = "name" placeholder = "주문자명" title = "주문자명" style = "width : 153px;">
                        </div>                                                                                                
                     </div>
                     <div class = "form_box">
                        <dd>
                           <div class = "c_order_selectbox">
                              <div class = "zero">
                                    <select name = "ordT1" class = "select">
                                       <option>010</option>
                                       <option>011</option>
                                       <option>016</option>
                                       <option>017</option>
                                       <option>018</option>
                                       <option>019</option>                                                                                          
                                    </select> 
                              </div>
                              <div class="first">
                                 <input type = "text" placeholder = "        핸드폰 앞자리">
                              </div>
                              <div class="second">                                 
                                 <input type = "text" placeholder = "        핸드폰 뒷자리">
                              </div>
                              
                              <span>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style = "position : absolute; left : 640px;">
                                <label class="form-check-label" for="flexCheckDefault" style = "position : absolute; left : 650px;">   
                                   SMS 수신 동의
                                </label>
                              </div>
                              </span>
                              
                           </div>
                        
                        </dd>
                        
                     </div>
                     
                     <div class = "field_direct_email">
                        <dd>
                           <div class = "zero0">                           
                              <input type = "text" placeholder = "이메일주소" class = "email">
                           </div>
                           <div class = "first1" style = "text-align : center;">
                              <span class = "at">@</span>
                           </div>
                           <div class = "second2">
                              <select class = "nextmail">
                                 <option>직접입력</option>
                                 <option>naver.com</option>
                                 <option>hanmail.net</option>
                                 <option>nate.com</option>
                                 <option>gmail.com</option>
                                 <option>yahoo.co.kr</option>
                              </select>
                           </div>
                        </dd>   
                                                               
                     </div>
                     
                     
                        
                  </dl>                                                
               </div>                                                            
            </div> <!-- <!-- 주문자정보 박스 닫기 -->
            <div>
<%--                <c:forEach var = "a" items = "${takeAaList}">
                  <tr>
                     <td>${a.AA_NAME}</td>
                     <td>${a.AA_NUMBER}</td>
                     <td>${a.AA_FOOD}</td>
                     
                  </tr>
               </c:forEach> --%>
            </div>
            <div class = "deliver"><!-- 배송정보 시작 -->
               
               
               
               
               <div class = "direct">
                  <p style = "float : left; position : absolute; top : 440px; " class = "dil">배송지 (교재 구매시 입력) </p>                
               </div> 
               <div class = "addres" style = "width : 870px; height : 351.2;">
                  <dl>
                     <div class = "feild">
                        <dd>                                                      
                           <dt class = "skip">받는사람</dt>
                           <input type = "text" placeholder = "받는사람" style = "position : absolute; top : 480px; left : 297px;" >
                        </dd>
                     </div>
                     <div class = "field">
                        <dd style = "position : absolute; left : 297px; top : 515px;">
                           <button type="button" class="btn btn-primary btn-sm">주소찾기</button>
                           <input type = "text" placeholder = "우편번호">                        
                        </dd>
                     </div>
                     <div>
                        <dd>
                           <input type= "text" placeholder = "기본주소" style = "position : absolute; top : 557px; left : 297px; width : 300px;">   
                        </dd>
                     </div>
                     <div>
                        <dd>
                           <input type = "text" placeholder = "상세 주소 및 상세 건물명" style = "position : absolute; top : 600px; left : 297px; width : 300px;">
                        </dd>
                     </div>
                     
                     
                     <div class = "form_box">
                        <dd>
                           <div class = "c_order_selectbox1">
                              <div class = "zero">
                                    <select name = "ordT1" class = "select">
                                       <option>010</option>
                                       <option>011</option>
                                       <option>016</option>
                                       <option>017</option>
                                       <option>018</option>
                                       <option>019</option>                                                                                          
                                    </select> 
                              </div>
                              <div class="first">
                                 <input type = "text" placeholder = "        핸드폰 앞자리">
                              </div>
                              <div class="second">                                 
                                 <input type = "text" placeholder = "        핸드폰 뒷자리">
                              </div>
                              
                              <span>
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" style = "position : absolute; left : 640px;">
                                <label class="form-check-label" for="flexCheckDefault" style = "position : absolute; left : 650px;">   
                                   SMS 수신 동의
                                </label>
                              </div>
                              </span>
                              
                           </div>                        
                        </dd>                                                                                                
                     </div>
                     <div>
                        <dd>
                           <select name = "request" class = "requestselect">
                              <option>배송시 요청사항 선택하기</option>
                              <option>직접 수령하겠습니다</option>
                              <option>문 앞에 놔주세요</option>
                              <option>경비실에 맡겨주세요</option>
                              <option>배송전 연락 부탁드려요</option>
                              <option>파손 위험이 있으니 조심히 다뤄주세요</option>
                           </select>
                        </dd>
                     </div>                                                                                 
                  </dl>
               </div>                                                
            </div>   <br>                                                         
            
            <!-- <div style = "height : 25px;"> -->
            <h2 style = "font-size: 18px;font-weight: bold; line-height: 27px;  color: #111;    height : 27px; position : absolute; top : 740px; " class = "pro" >주문상품</h2>
            <!-- </div> -->
            <br><br>
                     
            <div class = "order">
               
               <!-- <div class = "title_order"> -->                  
                  <p class = "notice_sns1">상품수량 및 옵션변경은 상품상세 또는 장바구니에서 가능합니다.</p>                              
               <!-- </div> -->   
            </div>
               
               <div style = "border : 3px solid #ADD8E6; width : 730px;";>
                  <ul>
                     <li>                                                
                        <div style = "width : 230px; height : 180px; border-left : 0px;"><!-- 사진 -->
                           <img src = "${contextPath}/resources/Image/${selectTakeList.BOOK_IMAGE}"  style = "width : 135px; height : 145px;   position : absolute; left : 315px; top : 795px;">
                        </div>
                        <div><!-- 담는박스 -->
                           <div style = "width :230px; height : 180px;  display : inline; "><!-- 상세정보 -->
                              
                              <p style = " position : absolute; left : 470px; top : 890px;">${selectTakeList.BOOK_NAME} <br></p>
                           </div>
                           <div style = "width :230px; height : 180px;  display : inline; ">                              
                              <p style = "position : absolute; left : 470px; top : 850px;font-size : 15px;">수량 :</p><span class = "ordernum">1</span>
                           
                           </div> <!-- 개수 -->
                           <div  style = "width :230px; height : 180px;  display : inline; ">
                              <i class = "cash" style = "color : #ADD8E6;">${selectTakeList.BOOK_PRICE}</i> <span style = "position : absolute; left : 640px; top : 845px;font-size : 23px;"> <i>원</i></span>
                           <div>
                              <a href = "" style = "position : absolute; left : 770px; top : 890px;"><p>연관 강의 보러가기</p></a>
                           </div>
                           <div>
                              <input type = "checkbox" style = "position : absolute; left : 740px; top :858px;">
                              <p style = "position : absolute; left : 770px; top : 850px;">연관 강의 함께 구매하기</p>
                           </div>
                           </div> <!-- 가격 -->                                                                        
                        </div>                     
                     </li>                                    
                  </ul>
               
               
               
               </div>                                 
               
               <div class = "right_order" style = "width : 320px; height : 772px; position : absolute; top : 300px; right : 450px;">
                  <div class= "benefit">
                     <h4 style = "text-align : left">적립혜택</h4>
                     <div>
                        <p class = "point" style = "text-align : left;">적립 혜택이 없습니다.</p>
                     </div>
                  </div>
                  <div class = "amount">
                     <div class = "expected">
                        <h4 style = "text-align : left;">
                           결제 예정금액
                        </h4>
                     </div>
                     <div class = "order_cash">
                        <div style = "width : 297px; height : 35px; margin-top : 25px;">
                           <h4 style = "float : left;">상품금액</h4>
                           <h5 style = "float : right; margin-top:5px;" class = "realcash">${selectTakeList.BOOK_PRICE}</h5> 
                        
                           
                        </div>
                        <div style = "width : 300px; height : 35px; margin-top : 15px;">
                           <h4 style = "float : left;">배송금액</h4>
                           <h5 style = "float : right; margin-top:5px;" class = "passport">무료</h5>
                        </div>
                        <div style = "width : 300px; height : 35px; margin-top : 15px;">
                           <h4 style = "float : left;">할인금액</h4>
                           <h5 style = "float : right; margin-top:5px;" class = "discount">0</h5>
                        </div>
                        <div style = "width : 300px; height : 35px; margin-top : 15px;">
                           <h4 style = "float : left; color : red; margin-top : 10px;">합계</h4>
                           <h2 style = "float : right; margin-top:5px; color : red;" class = "realcash">${selectTakeList.BOOK_PRICE}</h2>   
                           
                     
                           <!-- <script type="text/javascript">document.console(sum);</script> -->
                           <!-- <h2 >합계 <span style =  'color : red' class ="totalprice"></span> 원</h2> -->
                        </div>
                        
                        <p style = "margin-top : 15px; width : 300px; font-size : 12px;">
                            약관을 확인하였으며, 결제에 동의합니다.
                        </p>
                        
                        <div>
                           <button type="button" class="btn btn-danger" style = "width : 250px; background-color : #ADD8E6; color : white; border-color : #ADD8E6; "><h2 class= "totalrealcount">${selectTakeList.BOOK_PRICE}</h2>원 구매하기</button>
                        </div>
                     </div>
                     
                  </div>
                  
                  
            
               </div>
               
            
               
               
            </div>         
            <br><br>         
            <div>
               <h2 style = "text-align : left;">결제방법</h2>            
            </div>
            <br><br>
            
            <div class = "tab_container" style = "position : absolute; left : 300px; top : 990px;margin-top : 8px;">                                       
               <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                  <label class="form-check-label" for="inlineRadio1">신용카드(일반)</label>
               </div>
               <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                  <label class="form-check-label" for="inlineRadio2">신용카드(법인)</label>
               </div>         
            </div>
            
            <div>
               <h2 style = "text-align : left;">카드선택</h2>   
            </div>
            <div>
               <select style = "float : left; width : 170px; height : 30px; ">
                  <option>선택해주세요</option>
                  <option>하나</option>
                  <option>농협</option>
                  <option>신한</option>
                  <option>카카오</option>
                  <option>네이버페이</option>
                  <option>국민</option>
                  <option>우체국</option>                                 
               </select>
            </div>                                                                                                                                          
         </div><!-- 왼쪽 전체박스 닫기 -->            
      </div>

</body>
</html>