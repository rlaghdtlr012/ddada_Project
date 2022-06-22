<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강좌 상세 페이지</title>
<style>
li {
   list-style: none;
}

th {
   rowspan: 10;
   align: center;
}
.img_cl{
   display:inline-block;
   align : center;
}
hr {
    border: none;
    height: 1.5px;
    color: #6ca8d8; 
    background-color: #6ca8d8; 
}

table.type07 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border: 1px solid #333;
  margin: 0;
}
table.type07 tbody th {
  width: 300px;
  padding: 10px;
  font-weight: bold;
  vertical-align: middle;
  border-bottom: 1px solid #ccc;
  background: #cde9ff;
  text-align: center;
}
table.type07 td {
  width: 900px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
#frmOS {
   display: inline;

}
</style>

</head>
<!-- <body>
   <br>
    <h4 class="myDD_category" style="text-align:left;">강좌 Ddada ></h4>
    <br>
</body> -->
<body>
<h3 style="text-align : left;">강좌 정보</h3>
<div class="row" style="margin-top: 70px;">
      <div class="col-9" style="margin-top: -45px;">
         <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="web" align="left" style = "width : 1150px;" >
               <h4>${membervo.lec_name}</h4>
               
                 <a class="btn_b4" href="${contextPath}/member/mainPractice2.do" >
                  <img src="${contextPath}/resources/Image/book.png" style="width:70px; height:90px; margin-top : -73px;" hspace=8; align="right" ></a>
               
                <a class="btn_b4" href="#" 
                  onclick = "window.open('${contextPath}/video.do?lec_num=
                  ${membervo.lec_num}','window_name',
                  'width=900,height=650,location=no,status=no,scrollbars=yes');">
                  <img src="${contextPath}/resources/Image/play.png" style="width:70px; height:75px; margin-top : -60px;" hspace=8; align="right"></a>
              
                 <a class="btn_b4" href="${contextPath}/lecture.do" >
                  <img src="${contextPath}/resources/Image/list.png" style="width:70px; height:75px; margin-top : -60px;" hspace=8; align="right"></a>
                             
             
               <hr width = 1150px;>
               
               <img src="${contextPath}/resources/Image/${membervo.INSTR_IMG}"
                  height="140px" width="199px" border=0 hspace=30 alt="이미지가 없습니다" align="left" >
                  <ul>                     
                     <li style = "margin-bottom:10px;">분류: ${membervo.cert_name}<br> </li>         
                     <li style = "margin-bottom:10px;">강사명 : ${membervo.instr_name} 선생님<br></li>
                     <li style = "margin-bottom:10px;">강의 기간 : ${membervo.lec_date}일 <br></li>
                     <li style = "margin-bottom:20px;">강의 비용 : <fmt:formatNumber value="${membervo.lec_fee }" pattern="#,###" />원<br></li>                     
                  </ul>
               <hr width = 1150px;>
            </div>
      </div>
   </div>
</div>
   <div >
      <div class="img_cl" style="margin-bottom: 30px;">
         <img src="${contextPath}/resources/Image/curri.png" height="450px;" width="1200px;">
      </div>
      <c:if
         test="${membervo.cert_num eq '441430003' || membervo.cert_num eq '441430004'}">
         <div class="img_cl" style="margin-bottom: 30px; ">
            <img src="${contextPath}/resources/Image/infor_need1.png" height="450px;" width="1200px;">
         </div>
      </c:if>
      <c:if test="${membervo.cert_num eq '441430010'}">
         <div class="img_cl" style="margin-bottom: 30px;">
            <img src="${contextPath}/resources/Image/sqld3.png" height="450px;" width="1200px;"><br>
         </div>
      </c:if>
      <c:if test="${membervo.cert_name eq '네트워크관리사'}">
         <div class="img_cl" style="margin-bottom: 30px;">
            <img src="${contextPath}/resources/Image/network_need.png" height="450px;" width="1200px;"><br>
         </div>
      </c:if>
      <c:if test="${membervo.cert_name eq '정보보안'}">
         <div class="img_cl" style="margin-bottom: 30px;">
            <img src="${contextPath}/resources/Image/industry_need.png" height="450px;" width="1200px;"><br>
         </div>
      </c:if>
      <c:if test="${membervo.cert_name eq '리눅스마스터'}">
         <div class="img_cl" style="margin-bottom: 30px;">
            <img src="${contextPath}/resources/Image/linux_need1.png" height="450px;" width="1200px;"><br>
            <%-- <h3>필요교재</h3><br>
      <div class="img_cl" style = " margin-bottom:30px;" >
         <img src="${contextPath}/resources/Image/linuxbook.png" ><br>
      </div> --%>
         </div>
      </c:if>
      <c:if test="${membervo.cert_name eq '컴퓨터활용능력'}">
         <div class="img_cl" style="margin-bottom: 30px;">
            <img src="${contextPath}/resources/Image/computer_need.png" height="450px;" width="1200px;"><br>
         </div>
      </c:if>
   </div>
   <div class = hdiv style="clear:both">   
        <hr align='left' width = 1150px;>
         <h3 align="center">커리큘럼</h3>
      </div>
   <div align='left'>
      <table class="type07">         
         <tbody>
            <c:forEach items="${list}" var="list" >
               <c:if test="${membervo.cert_num eq '441430003' && list.cur_kinds eq '정보처리기사 필기' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '4. 인터페이스 설계' || list.cur_subt eq '5. 인터페이스 구현' 
                  || list.cur_subt eq '5. 데이터 전환' || list.cur_subt eq '3. 응용 SW 기초기술 활용' || list.cur_subt eq '4. 시스템 보안 구축'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
      <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430004' && list.cur_kinds eq '정보처리기사 실기' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '3. 분석모델 확인하기' || list.cur_subt eq '4. 데이터 조작 프로시저 최적화하기' 
                  || list.cur_subt eq '3. 내외부 연계 모듈 구현하기' || list.cur_subt eq '4. 배치 프로그램 구현하기' || list.cur_subt eq '4. 시스템 보안 구축'
                  || list.cur_subt eq '2. UI 설계하기' || list.cur_subt eq '2. 응용 SQL 작성하기' || list.cur_subt eq '2. 응용 SQL 작성하기'
                  || list.cur_subt eq '2. SW개발 보안 구현하기' || list.cur_subt eq '3. 라이브러리 활용하기' || list.cur_subt eq '4. 기본 개발환경 구축'
                  || list.cur_subt eq '3. 제품소프트웨어 버전관리하기'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>

   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430011' && list.cur_kinds eq '리눅스1급' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '3. 네트워크의 이해' || list.cur_subt eq '3. 시스템 보안 및 관리'
                  || list.cur_subt eq '2. 네트워크 보안'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430013' && list.cur_kinds eq '리눅스2급 1차' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '2. 리눅스 구조 및 명령어'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430014' && list.cur_kinds eq '리눅스2급 2차' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '5. 장치 관리' || list.cur_subt eq '5. 리눅스 응용분야'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.LEC_SUB_NAME eq '데이터베이스' && list.cur_kinds eq 'SQLD' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '2. 데이터 모델과 성능' || list.cur_subt eq '3. SQL 최적화 기본 원리' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.LEC_SUB_NAME eq '데이터베이스' && list.cur_kinds eq 'SQLP' && membervo.lec_num eq '441420013' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '5. 고급 SQL 튜닝' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
      
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.subject_code eq '441440003' && list.cur_kinds eq '네트워크관리사 필기' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '4. 고속 LAN 및 광대역 기술' || list.cur_subt eq '7. TCP/IP 계층의 응용 프로토콜'
                  || list.cur_subt eq '5. LINUX(2)' || list.cur_subt eq '2. 네트워크 회선 운영'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.subject_code eq '441440004' && list.cur_kinds eq '정보보안' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '5. 정보보안 관리 및 법규' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>

   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list" >
               <c:if test="${membervo.LEC_SUB_NAME eq '컴필' && list.cur_kinds eq '컴활필기'  }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '5. 컴퓨터 시스템 보호' || list.cur_subt eq '7. 매크로 작성' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list" >      
               <c:if test="${membervo.LEC_SUB_NAME eq '컴필' && list.cur_kinds eq '컴활필기1급' && membervo.lec_num eq '441420021'}">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '5. 컴퓨터 시스템 보호' || list.cur_subt eq '6. 데이터베이스 프로그래밍' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list" >      
               <c:if test="${membervo.cert_num eq '441430040' && list.cur_kinds eq '컴활실기' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '4 고급 필터/자동 필터' || list.cur_subt eq '8 함수4 - 논리 함수'
                  || list.cur_subt eq '14 목표값 찾기' || list.cur_subt eq '16 차트' }">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list" >      
               <c:if test="${membervo.cert_num eq '441430038' && list.cur_kinds eq '컴활실기1급' }">
                  <c:choose>
                  <c:when test="${list.cur_subt eq '4 페이지 레이아웃/통합 문서 보기' || list.cur_subt eq '8 배열 수식'
                  || list.cur_subt eq '15 목표값 찾기' || list.cur_subt eq '18 프로시저 작성'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430012' && list.cur_kinds eq '리눅스마스터1급 2차' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '2 VI 편집기' || list.cur_subt eq '3 시스템 보안 및 관리'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   <div align='left'>
      <table class="type07">
         <tbody>
            <c:forEach items="${list}" var="list">
               <c:if test="${membervo.cert_num eq '441430028' && list.cur_kinds eq 'Azure' }">
               <c:choose>
                  <c:when test="${list.cur_subt eq '4. Azure 사용자와 그룹, 액세스 관리' || list.cur_subt eq '7. Azure 스토리지'
                  || list.cur_subt eq '11. 트래픽 관리자'}">
                        <tr >
                           <th style = "border-bottom: 1.5px solid #333;">${list.cur_subj}</th>
                           <td style = "border-bottom: 1.5px solid #333;">${list.cur_subt}</td>
                        </tr>
                  </c:when>                  
                  <c:otherwise>
                     <tr >
                        <th style = "border-bottom: 0px solid #bcbcbc;">${list.cur_subj}</th>
                        <td style = "border-bottom: 1px solid #bcbcbc;">${list.cur_subt}</td>
                     </tr>
                  </c:otherwise>
               </c:choose>
               </c:if>
               
            </c:forEach>
         </tbody>
      </table>
   </div>
   
   <!--  리뷰 관련 -->
   <h3 style="margin-top:15px;" align="center">리뷰</h3>
   <div class="table">
      <table style="margin-top: 15px; width : 1300px;">
         <colgroup>
            <col style="width: 15%">
            <col style="width: 12%">
            <col>
            <col style="width: 12%">
            <col style="width: 9%">
         </colgroup>
         <thead>
            <tr>
               <th scope="col">작성일</th>
               <th scope="col">구분</th>
               <th scope="col">제목</th>
               <th scope="col">작성자</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${userreviewvo}" var="userreviewvo">
            <c:if test="${userreviewvo.LEC_NAME eq '한번에 합격하는 리눅스마스터 1급 1차' && membervo.lec_num eq '441420015' }">
               <tr>
                  <td>${userreviewvo.REVIEW_DATE }</td>
                  <td>${userreviewvo.LEC_NAME }</td>
                  <td class="tl">
                  <a href="#"
                     style="max-width: 480px">${userreviewvo.REVIEW_TITLE }</a></td>
                  <td>${userreviewvo.STUDENT_ID }</td>
               </tr>
               </c:if>
            </c:forEach>
            <c:forEach items="${userreviewvo}" var="userreviewvo">
            <c:if test="${userreviewvo.LEC_NAME eq '한번에 합격하는 리눅스마스터 1급 2차' && membervo.lec_num eq '441420016' }">
               <tr>
                  <td>${userreviewvo.REVIEW_DATE }</td>
                  <td>${userreviewvo.LEC_NAME }</td>
                  <td class="tl">
                  <a href="#"
                     style="max-width: 480px">${userreviewvo.REVIEW_TITLE }</a></td>
                  <td>${userreviewvo.STUDENT_ID }</td>
               </tr>
               </c:if>
            </c:forEach>
            <c:forEach items="${userreviewvo}" var="userreviewvo">
            <c:if test="${userreviewvo.LEC_NAME eq 'SQLD 노랑이 책 파헤치기' && membervo.lec_num eq '441420011' }">
               <tr>
                  <td>${userreviewvo.REVIEW_DATE }</td>
                  <td>${userreviewvo.LEC_NAME }</td>
                  <td class="tl">
                  <a href="#"
                     style="max-width: 480px">${userreviewvo.REVIEW_TITLE }</a></td>
                  <td>${userreviewvo.STUDENT_ID }</td>
               </tr>
               </c:if>
            </c:forEach>
         </tbody>
      </table>
   </div>
   
   
   
       
   <form id="frmOS" method="post" action="${contextPath}/insertOSLecture.do" style="text-align:center;">
      <input type="hidden" name="lec_num" value="${membervo.lec_num}" /> 
      <input type="hidden" name="lec_name" value="${membervo.lec_name}" /> 
      <input type="hidden" name="instr_num" value="${membervo.instr_num}" /> 
      <input type="hidden" name="instr_name" value="${membervo.instr_name}" /> 
      <input type="hidden" name="lec_fee" value="${membervo.lec_fee}" /> 
      <input type="hidden" name="lec_date" value="${membervo.lec_date}" /> 
      <input type="hidden" name="book_num" value="441460000" />
      <input type="hidden" name="book_name" value="${membervo.book_name}" /> 
      <input type="hidden" name="INSTR_IMG" value="${membervo.INSTR_IMG}" />
      <input type="hidden" name="STUDENT_ID" value="${student.STUDENT_ID}" />
      <div style = "align : center;">
      <input type="submit" value="미리보기" class="btn_b4" href="#"
      style="    align: center; background-color: #cde9ff; border: solid 2px grey; border-radius: 12px; width: 120px; height: 35px; font-size: 20px; margin-top: 25px; display:inline-block;"
      onclick="window.open('${contextPath}/video.do?lec_num=${membervo.lec_num}','window_name',
      'width=900,height=650,location=no,status=no,scrollbars=yes');" />
      <input type="submit" id="but"      
         style="    align: center; background-color: #cde9ff; border: solid 2px grey; border-radius: 12px; width: 120px; height: 35px; font-size: 20px; margin-top: 25px; display:inline-block;"
         hspace=30 value="수강하기" />
         </div>
   </form>
   
   
</body>
</html>