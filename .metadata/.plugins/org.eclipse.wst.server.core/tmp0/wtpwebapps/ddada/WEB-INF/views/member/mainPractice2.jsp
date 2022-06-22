



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<%
// tiles를 쓰고 있어서 main.jsp에 '메인 페이지입니다!!' 외의 많은 jsp들이 없는 것. 
  request.setCharacterEncoding("UTF-8");
%>    

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>나의 Ddada</title>
    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <!-- <script src="bootstrap.min.js"></script> -->
  	
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
      
      table, th, td{
      	border : 1px solid black;
      	border-collapse : collapse; 
      }
	
	   body{
			font-size :1em;
			color : #555;
			
		}
	  
	   span{
	  	font-weight : 10px;
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
		  







  		
  	</style>
  	
  </head>
  <body>
   
    <br>
  	<h3 style = "text-align:left">
  		도서 >
  	</h3>

      <div class="col-9" style="margin-top: 25px;"> <!-- 전체 블럭 -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="license-tab" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">정보처리기사(입문)</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">정보처리기사(실전/심화)
            </a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">네트워크 관리사 1급(입문/심화)</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">SQLD/P</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="temp-tab" data-toggle="tab" href="#temp" role="tab" aria-controls="temp" aria-selected="false">AZURE</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="exam-tab" data-toggle="tab" href="#exam" role="tab" aria-controls="exam" aria-selected="false">리눅스</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="refunds-tab" data-toggle="tab" href="#refunds" role="tab" aria-controls="refunds" aria-selected="false">정보처리 산업기사</a>
          </li>
          <li class="nav-item" role="presentation"> <!-- 기술사 -->
            <a class="nav-link" id="teacher-tab" data-toggle="tab" href="#teacher" role="tab" aria-controls="teacher" aria-selected="false">정보처리기술사</a>
          </li>
          <li class="nav-item" role="presentation"> <!-- 컴활 -->
            <a class="nav-link" id="teacher-tab" data-toggle="tab" href="#technic" role="tab" aria-controls="teacher" aria-selected="false">컴퓨터 활용능력</a>
          </li>      
          <li class="nav-item" role="presentation"> <!-- 워드프로세서 -->
            <a class="nav-link" id="teacher-tab" data-toggle="tab" href="#word" role="tab" aria-controls="teacher" aria-selected="false">워드프로세서</a>
          </li>
        </ul>
     
     
      <form method = "post" name = "frm" action = "${contextPath}/member/payment.do">  
        <div class="row" style="margin-top: 40px;">
			&nbsp;&nbsp;&nbsp;&nbsp;<h2 >합계 <span style =  'color : red' class="totalprice" id = "totalprice">0</span> 원</h2>
		</div>
		<div class = "btn-a" role="group" aria-label="Basic example" style="text-align:left;">
			
			  	 <button type="button" class="btn btn-primary" onclick = 'return submit2(this.form)'>장바구니</button>
			
			   <button type="submit" class="btn btn-primary">바로구매</button>			  		 
			</div>
		<div id = "p1" style = "background-color : rgb(205,233,255); border-radius : 10px;   margin-top:10px;float:clear;  text-align : right;  " >
			<p>
				<strong>교재의 경우, 5만원 이상 구매시 배송비가 무료입니다.</strong>
			<p>
		</div>
		
        
        
	 
        <div class="tab-content" id="myTabContent">  <!-- 컨텐츠박스 -->
          <div class="tab-pane fade show active" id="license" role="tabpanel" aria-labelledby="license-tab"> <!-- 입문 탭 -->
            <div class="card-deck">
			<div class = "boxms" style =  "margin-top :50px" >
			<c:forEach items = "${takeBookList}" var = "takeBookList">
			<c:if test="${takeBookList.BOOK_NAME == '정보처리기사 필기(입문서)'}">
				<!-- 이미지 박스 -->
				
		
				<div class = "photoms">
				 <!-- a href = "${contextpath}/member/payment.do?BOOK_NUM=${takeBookList.BOOK_NUM}"> -->
				
				 
					<a href = "">
						<img src ="${contextPath}/resources/Image/${takeBookList.BOOK_IMAGE}"   width = "135px" height = "155px" >
					</a>		
				</div>
				 
				<div class = "detail01ms">				
					<h4>[${takeBookList.BOOK_NAME}]</h4>
					<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
						<colgroup>
							<col width = "15%">
							<col width = "35%">
							<col width = "15%">
							<col width = "35%">
						</colgroup>
						<tbody>
							<tr>
								<th>강사</th>
								<td>이상연</td>
								<td>페이지수</td>
								<td>P.${takeBookList.BOOK_PAGE}</td>		
							</tr>
							<tr>
								<th>출판사</th>
								<td>${takeBookList.BOOK_COMPANY}</td>
								<td>교재금액</td>
								<td>${takeBookList.BOOK_PRICE}원</td>
							</tr>
							<tr>
								<th>강의</th>
								<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
									<span style = "color:#8977ad">
										[2022개정] 정보처리기사 필기 같이 따자						
									</span><br>
									<span style = "color:#8977ad">
										[2022개정] 정보처리기사 필기 같이 따자2
									</span><br>
									<span style = "color:#8977ad">
										[2022개정] 최종 모의고사	
									</span> 
									
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href = "">
										<button type="button" class="btn btn-info">강사님 생플강의1</button>
									</a>
									<a href = "">
										<button type="button" class="btn btn-info">강사님 생플강의2</button>
									</a>
								</td>
							</tr>
					
					
					
					</tbody>		
				</table>
			</div>
				<!-- 가격체크  박스-->
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>	
									<input type = "checkbox" class = "bookcheckdatapro1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" class = "bookcheckdatapro1" id="pricepass"  value = ${takeBookList.BOOK_NUM}    name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>
			</c:if>		
			</c:forEach>
			</div>
				
				<div class = "boxms"> <!-- 두번쨰테이블 -->
				<c:forEach items="${takeBookList}" var = "takeBookList">
				<c:if test="${takeBookList.BOOK_NAME=='정보처리기사 실기(입문서)'}">
				<div class = "photoms">
					<a href = "">
						<img src ="${contextPath}/resources/Image/${takeBookList.BOOK_IMAGE}"   width = "135px" height = "155px" >
					</a>		
				</div> 
				<!-- 이미지 박스 -->
				<div class = "detail01ms">
					<h4>[${takeBookList.BOOK_NAME}]</h4>
					<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
						<colgroup>
							<col width = "15%">
							<col width = "35%">
							<col width = "15%">
							<col width = "35%">
						</colgroup>
						<tbody>
							<tr>
								<th>강사</th>
								<td>이상연</td>
								<td>페이지수</td>
								<td>P.${takeBookList.BOOK_PAGE}</td>		
							</tr>
							
							<tr>
								<th>출판사</th>
								<td>${takeBookList.BOOK_COMPANY}</td>
								<td>교재금액</td>
								<td>${takeBookList.BOOK_PRICE}원</td>
							</tr>
							<tr>
								<th>강의</th>
								<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
									<span style = "color:#8977ad">
										[2022개정] 정보처리기사 실기 같이 따자							
									</span><br>
									<span style = "color:#8977ad">
										[2022개정] 정보처리기사 실기 같이 따자2
									</span><br>
									<span style = "color:#8977ad">
										[2022개정] 최종모의고사			
									</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<a href = "">
										<button type="button" class="btn btn-info">강사님 생플강의1</button>
									</a>
									<a href = "">
										<button type="button" class="btn btn-info">강사님 생플강의2</button>
									</a>
								</td>
							</tr>
					</tbody>		
				</table>
			</div>
		<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>                      
								<input type = "checkbox" class = "bookcheckdatapro2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" class = "bookcheckdatapro2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>
			
				</c:if>
				</c:forEach>
			</div>
            </div>
          </div>
          <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab"> <!-- 실전/심화 탭 -->
	           <div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='정보처리기사 필기(실전편)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>조미연</td>
									<td>페이지수</td>
									<td>P.${takeBookList.BOOK_PAGE}</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] IT 자격증의 기본! 정처기 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] IT 자격증의 기본! 정처기 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckdatapro3" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" class = "bookcheckdatapro3" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
			
			</c:if>
			</c:forEach>
			</div>
					<div class = "boxms"> <!-- 두번쨰테이블 -->
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='정보처리기사 실기(실전편)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>조미연</td>
									<td>페이지수</td>
									<td>P.311</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] IT 자격증의 기본! 정처기 - 실기편						
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] IT 자격증의 기본! 정처기 - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>
										<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckdatapro4" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" class = "bookcheckdatapro4" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>					
				</c:if>
				</c:forEach>
				</div>
            </div>
            	<div class="card-deck">
					<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='정보처리기사 필기(심화편)'}">
						<div class = "photoms">
							<a href = "">
								<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
							</a>		
						</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김영훈</td>
									<td>페이지수</td>
									<td>P.411</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 정처기 만점으로 합격하자(필기)							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 정처기 만점으로 합격하자(필기)2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckdatapro5" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckdatapro5">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
					</c:if>
					</c:forEach>
				</div>
					<div class = "boxms"> <!-- 두번쨰테이블 -->
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='정보처리기사 실기(심화편)'}">
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김영훈</td>
									<td>페이지수</td>
									<td>P.441</td>		
								</tr>
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 정처기 만점으로 합격하자(실기)							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 정처기 만점으로 합격하자(실기)2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckdatapro6" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" class = "bookcheckdatapro6" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
				</div>         
            </div>
          </div> 

          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"> <!-- 네트워크 관리사 탭 -->
            	           <div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='네트워크관리사 1급 필기(입문서)'}">			
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>최리사</td>
									<td>페이지수</td>
									<td>P.411</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 쉽게 접근하는 네트워크관리사 1급 필기							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 쉽게 접근하는 네트워크관리사 1급 필기2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecknet1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookchecknet1">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>		
				</c:if>
				</c:forEach>
			</div>
					<div class = "boxms"> <!-- 두번쨰테이블 -->
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='네트워크관리사 1급 실기(입문서)'}">		
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>최리사</td>
									<td>페이지수</td>
									<td>P.421</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 쉽게 접근하는 네트워크관리사 1급 실기							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 쉽게 접근하는 네트워크관리사 1급 실기2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecknet2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class=  "bookchecknet2">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>						
				</c:if>
				</c:forEach>
				</div>
            </div>
            	<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='네트워크관리사 1급 필기(심화)'}">	
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김비판</td>
									<td>페이지수</td>
									<td>P.311</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>28,500원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] network 수업 (1급) - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] network 수업 (1급) - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecknet3" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookchecknet3">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
			</div>
					<div class = "boxms"> <!-- 두번쨰테이블 -->
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='네트워크관리사 1급 실기(심화)'}">	
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김비판</td>
									<td>페이지수</td>
									<td>P.411</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] network 수업 (1급) - 실기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] network 수업 (1급) - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecknet4" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookchecknet4">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>					
				</c:if>
				</c:forEach>
				</div>
            </div>
          </div>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            	<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >					
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='SQL자격 검정시험 (입문편)'}">	
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>안유진</td>
									<td>페이지수</td>
									<td>P.221</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] SQLD 노랑이 책 파헤치기							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] SQLD 노랑이 책 파헤치기2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
									<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecksqld1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookchecksqld1">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
			</div>
					<div class = "boxms"> <!-- 두번쨰테이블 -->
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='SQL자격 검정시험 (실전편)'}">	
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>이재현</td>
									<td>페이지수</td>
									<td>P.221</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] SQLD로 DB 정복							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] SQLD로 DB 정복2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecksqld2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookchecksqld2">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				
				</c:if>
				</c:forEach>
				</div>
            </div>
            	<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='SQL 전문가 가이드'}">	
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김준면</td>
									<td>페이지수</td>
									<td>P.199</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>24,000원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 준면쌤과 SQLP 합격의 길 찾기							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 준면쌤과 SQLP 합격의 길 찾기2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
									<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecksqlp" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM"  class= "bookchecksqlp">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	

			</c:if>
			</c:forEach>
			</div>
			</div>		
          </div>
          <div class="tab-pane fade show" id="temp" role="tabpanel" aria-labelledby="temp-tab"> <!-- 애저 -->
			<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='처음배우는애저'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>신류진</td>
									<td>페이지수</td>
									<td>P.749</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 간단한 애저입문							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 간단한 애저입문2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckazure" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckazure">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
				</div>
            </div>
          </div>
          <div class="tab-pane fade show" id="exam" role="tabpanel" aria-labelledby="exam-tab"> <!-- 리눅스 -->
			<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='리눅스 마스터 1급 정복하기 (1차)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>도경수</td>
									<td>페이지수</td>
									<td>P.349</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스 마스터 1급 1차							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스 마스터 1급 2차
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookchecklinux1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class ="bookchecklinux1">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	

			</c:if>
			</c:forEach>
			</div>
            </div>
            	<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='리눅스 마스터 1급 정복하기 (2차)'}">
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>도경수</td>
									<td>페이지수</td>
									<td>P.379</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스 마스터 1급 1차							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스 마스터 1급 2차
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookchecklinux2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookchecklinux2">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
									
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	

				</c:if>
				</c:forEach>
			</div>

            </div>
            			<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='리눅스 마스터 2급 정복하기 (1차)'}">
					
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김종인</td>
									<td>페이지수</td>
									<td>P.579</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스마스터 2급1차							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스마스터 2급2차	
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookchecklinux3" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookchecklinux3">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	

				</c:if>
				</c:forEach>
			</div>

            </div>
            	<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='리눅스 마스터 2급 정복하기 (2차)'}">
					
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김종인</td>
									<td>페이지수</td>
									<td>P.579</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스마스터 2급1차								
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 한번에 합격하는 리눅스마스터 2급2차	
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookchecklinux4" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookchecklinux4">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
          </div>

          <div class="tab-pane fade" id="refunds" role="tabpanel" aria-labelledby="refunds-tab">
							<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='정보처리 산업기사 (필기)'}">	
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>최지수</td>
									<td>페이지수</td>
									<td>P.456</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 정말 쉬운 정보산기 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 정말 쉬운 정보산기 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookcheckindustry1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM}  name = "BOOK_NUM" class ="bookcheckindustry1">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
									
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
			</c:if>
			</c:forEach>
			</div>

            </div>
            			<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='정보처리 산업기사 (실기)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>최지수</td>
									<td>페이지수</td>
									<td>P.356</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 정말 쉬운 정보산기 - 실기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 정말 쉬운 정보산기 - 실기편2	
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckindustry2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckindustry2">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
			</c:if>
			</c:forEach>
			</div>

            </div>
          </div>   <!-- 정보처리 산업기사 컷 -->

          <div class="tab-pane fade" id="teacher" role="tabpanel" aria-labelledby="teacher-tab" style="margin-top :10px;"><!-- 기술사 -->
				<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='핵심 토픽 91개로 끝내는 정보관리기술사 (필기) '}">
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김지원</td>
									<td>페이지수</td>
									<td>P.986</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 알면쉽다 정보처리 기술사 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 알면쉽다 정보처리 기술사 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookchecktech1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookchecktech1">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
			</c:if>
			</c:forEach>
			</div>
            </div>
				<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
				<c:forEach items = "${takeBookList}" var = "takeBookList">
				<c:if test = "${takeBookList.BOOK_NAME=='핵심 토픽 91개로 끝내는 정보관리기술사 (실기) '}">
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김지원</td>
									<td>페이지수</td>
									<td>P.476</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 알면쉽다 정보처리 기술사 - 실기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 알면쉽다 정보처리 기술사 - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookchecktech2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookchecktech2">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
			</c:if>
			</c:forEach>
			</div>

            </div>
			
          </div>
        
        
         <div class="tab-pane fade" id="technic" role="tabpanel" aria-labelledby="teacher-tab" style="margin-top :10px;"> <!-- 컴활 -->
         				<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >				
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='이기적 컴퓨터 활용능력 1급 (필기)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px"s>
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김가을</td>
									<td>페이지수</td>
									<td>P.256</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력1급 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력1급 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookcheckcom1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class= "bookcheckcom1">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
            			<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='이기적 컴퓨터 활용능력 1급 (실기)'}">
					<div class = "photoms">
						<a href = "">
							<img src ="/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>김가을</td>
									<td>페이지수</td>
									<td>P.316</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력1급 - 실기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력1급 - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사		
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookcheckcom2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckcom2">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
         		<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='이기적 컴퓨터 활용능력 2급 (필기)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>박찬열</td>
									<td>페이지수</td>
									<td>P.216</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력2급 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력2급 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookcheckdatapro3" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckcom3">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckcom3">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
         				<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='이기적 컴퓨터 활용능력 2급 (실기)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>박찬열</td>
									<td>페이지수</td>
									<td>P.216</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력2급 - 실기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 요즘 다 있는 컴퓨터활용능력2급 - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckcom4" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckcom4">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
         	
         	
         </div>
         <div class="tab-pane fade" id="word" role="tabpanel" aria-labelledby="teacher-tab" style="margin-top :10px;">
         		<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='시나공 워드프로세서 (필기)'}">
					<div class = "photoms">
						<a href = "">
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>강대성</td>
									<td>페이지수</td>
									<td>P.116</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정] 대성쌤의 워드프로세서 - 필기편							
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 대성쌤의 워드프로세서 - 필기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사			
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
					<div class = "detail02">
						<dl class = "bookSelectms">
							<dt>
								<dd>
									<input type = "checkbox" class = "bookcheckword1" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
									<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
									<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class ="bookcheckword1">&nbsp;&nbsp;&nbsp;
									<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
								</dd> <!-- 타입충돌 -->
							</dt>		
						</dl>
					</div>	

				</c:if>
				</c:forEach>
			</div>

            </div>
         		<div class="card-deck">
				<div class = "boxms" style =  "margin-top :50px" >
					<c:forEach items = "${takeBookList}" var = "takeBookList">
					<c:if test = "${takeBookList.BOOK_NAME=='시나공 워드프로세서 (실기)'}">
					<div class = "photoms">
						<a href = "">	
							<img src = "/resources/Image/${takeBookList.BOOK_IMAGE}" width = "135px" height = "155px">
						</a>		
					</div> 
					<!-- 이미지 박스 -->
					
					<div class = "detail01ms">
						<h4>[${takeBookList.BOOK_NAME}]</h4>
						<table cellpadding = "0" cellspacing = "0" border = "0" width = "610">
							<colgroup>
								<col width = "15%">
								<col width = "35%">
								<col width = "15%">
								<col width = "35%">
							</colgroup>
							<tbody>
								<tr>
									<th>강사</th>
									<td>강대성</td>
									<td>페이지수</td>
									<td>P.176</td>		
								</tr>
								
								<tr>
									<th>출판사</th>
									<td>Ddada</td>
									<td>교재금액</td>
									<td>${takeBookList.BOOK_PRICE}원</td>
								</tr>
								<tr>
									<th>강의</th>
									<td colspan = "3" style = "text-align:left; padding-left:10px; line-height:26px;">
										<span style = "color:#8977ad">
											[2022개정]  대성쌤의 워드프로세서 - 실기편						
										</span><br>
										<span style = "color:#8977ad">
											[2022개정]  대성쌤의 워드프로세서 - 실기편2
										</span><br>
										<span style = "color:#8977ad">
											[2022개정] 최종모의고사	
										</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의1</button>
										</a>
										<a href = "">
											<button type="button" class="btn btn-info">강사님 생플강의2</button>
										</a>
									</td>
								</tr>
						</tbody>		
					</table>
				</div>			
				<div class = "detail02">
					<dl class = "bookSelectms">
						<dt>
							<dd>
								<input type = "checkbox" class = "bookcheckword2" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM">&nbsp;&nbsp;&nbsp;
								<span><strong>장바구니 담기</strong></span>&nbsp;&nbsp;&nbsp;
								<input type = "checkbox" id="pricepass" value = ${takeBookList.BOOK_NUM} name = "BOOK_NUM" class = "bookcheckword2">&nbsp;&nbsp;&nbsp;
								<span><strong style = "font-weight : bold">교재 : ${takeBookList.BOOK_PRICE}원</strong></span>
							</dd> <!-- 타입충돌 -->
						</dt>		
					</dl>
				</div>	
				</c:if>
				</c:forEach>
			</div>

            </div>
         </div>
 	   
        </div> 
      </div>
   
  </form>
  		
			 <script type="text/javascript">
			 var sum = 0; 
			$(document).ready(function(){			
     			$('.bookcheckdatapro1').click(function(){
     				var book_price = 27500;
     				if($('.bookcheckdatapro1').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     				}
     			});						
     		 });  															
			
           
           $(document).ready(function(){			
     			$('.bookcheckdatapro2').click(function(){
     				var book_price = 29500;
     				if($('.bookcheckdatapro2').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });  														
   			
           
           $(document).ready(function(){			
      			$('.bookcheckdatapro3').click(function(){
      				var book_price = 28500;
      				if($('.bookcheckdatapro3').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  															
   			
           
           $(document).ready(function(){			
   			$('.bookcheckdatapro4').click(function(){
   				var book_price = 28500;
   				if($('.bookcheckdatapro4').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 });  	
         
           $(document).ready(function(){			
      			$('.bookcheckdatapro5').click(function(){
      				var book_price = 34500;
      				if($('.bookcheckdatapro5').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  	
           
           $(document).ready(function(){			
      			$('.bookcheckdatapro6').click(function(){
      				var book_price = 34500;
      				if($('.bookcheckdatapro6').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  	
           
           $(document).ready(function(){			
      			$('.bookchecknet1').click(function(){
      				var book_price = 39500;
      				if($('.bookchecknet1').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  	
           
           $(document).ready(function(){			
      			$('.bookchecknet2').click(function(){
      				var book_price = 39500;
      				if($('.bookchecknet2').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  	
           
           $(document).ready(function(){			
      			$('.bookchecknet3').click(function(){
      				var book_price = 28500;
      				if($('.bookchecknet3').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  	
           
           $(document).ready(function(){			
     			$('.bookchecknet4').click(function(){
     				var book_price = 28500;
     				if($('.bookchecknet4').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });
           
           $(document).ready(function(){			
    			$('.bookchecksqld1').click(function(){
    				var book_price = 18000;
    				if($('.bookchecksqld1').is(":checked")){
    						sum += book_price
    					$('.totalprice').text(sum);
    				} else {
    						sum -= book_price
    					$('.totalprice').text(sum);
    						
    				}
    			});						
    		 });  	
           
           $(document).ready(function(){			
   			$('.bookchecksqld2').click(function(){
   				var book_price = 18000;
   				if($('.bookchecksqld2').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 }); 
           
           $(document).ready(function(){			
   			$('.bookchecksqlp').click(function(){
   				var book_price = 24000;
   				if($('.bookchecksqlp').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 }); 
           $(document).ready(function(){			
      			$('.bookcheckazure').click(function(){
      				var book_price = 99000;
      				if($('.bookcheckazure').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  
           
           $(document).ready(function(){			
     			$('.bookchecklinux1').click(function(){
     				var book_price = 49000;
     				if($('.bookchecklinux1').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });  
           $(document).ready(function(){			
    			$('.bookchecklinux2').click(function(){
    				var book_price = 49000;
    				if($('.bookchecklinux2').is(":checked")){
    						sum += book_price
    					$('.totalprice').text(sum);
    				} else {
    						sum -= book_price
    					$('.totalprice').text(sum);
    						
    				}
    			});						
    		 });  
           $(document).ready(function(){			
   			$('.bookchecklinux3').click(function(){
   				var book_price = 47000;
   				if($('.bookchecklinux3').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 });  
           
           $(document).ready(function(){			
   			$('.bookchecklinux4').click(function(){
   				var book_price = 47000;
   				if($('.bookchecklinux4').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 });  
           $(document).ready(function(){			
      			$('.bookcheckindustry1').click(function(){
      				var book_price = 88800;
      				if($('.bookcheckindustry1').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });  
           $(document).ready(function(){			
     			$('.bookcheckindustry2').click(function(){
     				var book_price = 88800;
     				if($('.bookcheckindustry2').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });  
           $(document).ready(function(){			
    			$('.bookchecktech1').click(function(){
    				var book_price = 111000;
    				if($('.bookchecktech1').is(":checked")){
    						sum += book_price
    					$('.totalprice').text(sum);
    				} else {
    						sum -= book_price
    					$('.totalprice').text(sum);
    						
    				}
    			});						
    		 });  
           $(document).ready(function(){			
   			$('.bookchecktech2').click(function(){
   				var book_price = 111000;
   				if($('.bookchecktech2').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 });        
           $(document).ready(function(){			
      			$('.bookcheckcom1').click(function(){
      				var book_price = 18800;
      				if($('.bookcheckcom1').is(":checked")){
      						sum += book_price
      					$('.totalprice').text(sum);
      				} else {
      						sum -= book_price
      					$('.totalprice').text(sum);
      						
      				}
      			});						
      		 });        
           $(document).ready(function(){			
     			$('.bookcheckcom2').click(function(){
     				var book_price = 18800;
     				if($('.bookcheckcom2').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });        
           
           $(document).ready(function(){			
     			$('.bookcheckcom3').click(function(){
     				var book_price = 15800;
     				if($('.bookcheckcom3').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });        
           
           $(document).ready(function(){			
     			$('.bookcheckcom4').click(function(){
     				var book_price = 15800;
     				if($('.bookcheckcom4').is(":checked")){
     						sum += book_price
     					$('.totalprice').text(sum);
     				} else {
     						sum -= book_price
     					$('.totalprice').text(sum);
     						
     				}
     			});						
     		 });        
              
           $(document).ready(function(){			
    			$('.bookcheckword1').click(function(){
    				var book_price = 18600;
    				if($('.bookcheckword1').is(":checked")){
    						sum += book_price
    					$('.totalprice').text(sum);
    				} else {
    						sum -= book_price
    					$('.totalprice').text(sum);
    						
    				}
    			});						
    		 });        
           $(document).ready(function(){			
   			$('.bookcheckword2').click(function(){
   				var book_price = 18600;
   				if($('.bookcheckword2').is(":checked")){
   						sum += book_price
   					$('.totalprice').text(sum);
   				} else {
   						sum -= book_price
   					$('.totalprice').text(sum);
   						
   				}
   			});						
   		 });          
          	 
           
           function submit2(frm){
        	   frm.action = "${contextPath}/member/basket.do";
        	   frm.submit();
        	   return true
           }
           
   

			</script>
						
	
 



  </body>
</html>


