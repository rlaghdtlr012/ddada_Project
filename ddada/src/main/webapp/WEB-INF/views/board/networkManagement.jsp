<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>

<!doctype html>
<html lang="en">
  <head>
    <script src="https://kit.fontawesome.com/a62f32303e.js" crossorigin="anonymous"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
   <title>네트워크 관리사</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- <script src="bootstrap.min.js"></script> -->
   <style>   
      .text-header{
         font-size: 1.2em;
       font-weight: bold;
         margin-bottom: 0.5em;
      }
      .container {
        width: 1000px;
        margin: 2px auto;
        text-align:left;
        border: 0px solid #bcbcbc;
        float : left;
        border-radius : 15px 15px 15px 15px;
        margin-top:10px;
         }
        .container1 {
        width: 1050px;
        margin: 2px auto;
        text-align:left;
        border: 1px solid #bcbcbc;
        float : left;
        border-radius : 15px 15px 15px 15px;
        margin-top:10px;
         }
        h2{
        line-height : 30px;
        width : 980px;
        margin-top : 10px;
        margin-bottom : 5px;
        }
        .certiExplain{
        width : 950px;
        }
        p{
        margin-top : 10px;
        margin-bottom : 10px;
        }
        th, td{
        border-left: 1px solid #bcbcbc;
        border-bottom : 1px solid #bcbcbc;
        }
        /* th:first-child, td:first-child {
          border-left: none;
        } */
       .table td, .contents .table th {
       padding: 0.75rem 0.5rem;
       vertical-align: middle;
       text-align: center;
       line-height: inherit;
      }
      .table {
       margin-bottom: 0px;
      }
      .sqldinfo{
      text-align : center;
      float : relative;
      margin-left : 300px;
      }
   </style>
  </head>
  <body>
   <div class="col-9" style="margin-top: 15px; text-align : center;">
        <ul class="nav nav-tabs" id="myTab" role="tablist" style = "width : 1000px; height : 45px;">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="license-tab" style = "width : 200px;" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">자격증 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" style = "width : 200px;" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">시험 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="profile-tab" style = "width : 200px;" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">출제 문항 및 배점</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" style = "width : 200px;" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">응시자격 및 합격기준</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="temp-tab"style = "width : 200px;" data-toggle="tab" href="#temp" role="tab" aria-controls="temp" aria-selected="false">추천강좌</a>
          </li>
        </ul>
        </div>
      <!-- 자격증 정보화면 -->
        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="license" role="tabpanel" aria-labelledby="license-tab">
          <div class="container">
               <table>
              <tr>
                 <td style = "width : 1200px; border-left : none; border-bottom : none;">
                  <h2><a href="#" class="card-link" target="_blank">네트워크 관리사</a>
                     <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/board/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ네트워크 관리사란?
                     </h4>
                     <p>네트워크관리사란 서버를 구축하고 보안 설정, 시스템 최적화 등 네트워크구축 및 이를 효과적으로 관리할 수 있는 인터넷 관련 기술력에 대한 자격이다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        o검정기준
                     </h4>
                     <table class="table_type1 mt10" style = "width : 980px; text-align : center; border-right : 1px solid #bcbcbc;">
                        <colgroup>
                            <col style="width: 15%;">
                            <col style="width: 15%;">
                            <col style="width: 70%;">
                        </colgroup>
                        <thead>
                        <tr style = "border-top : 1px solid #bcbcbc; background-color : #6ca8d8;">
                           <th colspan="2">자격명칭</th>
                           <th class="border_r0">검정기준</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td rowspan="2" class="center" style = "vertical-align : middle;"><br>네트워크관리사</td>
                            <td class="center">1급</td>
                            <td class="border_r0">네트워크 관리에 관한 전문지식을 토대로 네트워크 보안기술, Design, Traffic
                                분산기술 등 네트워크 전문기술자로서 필요한 IT 기술 및 네트워크 실무. 관리 능력 검정</td>
                        </tr>
                        <tr>
                            <td class="center">2급<br><span class="blue">국가공인</span></td>
                            <td class="border_r0">네트워크 관련 업무 수행을 위한 일반적인 운용지식과 구축기술 NOS운영,
                                Packet분석, Monitoring, 인터넷기술, Protocol 등 기초 이론과 실무능력 검정</td>
                        </tr>
                        </tbody>
                    </table>
                  </div><br>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ주관처
                     </h4>
                     <p><a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank">한국정보통신자격협회(바로가기)</a></p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ검정료
                     </h4>
                     <table class="table_type1" style = "width : 800px; border-top: 1px solid #bcbcbc; text-align : center; border-right : 1px solid #bcbcbc;">
                             <colgroup>
                                 <col style="width: 10%;">
                                 <col style="width: 20%;">
                                 <col style="width: 30%;">
                                 <col style="width: 40%;">
                             </colgroup>
                             <thead>
                             <tr style = "background-color : #6ca8d8;">
                                 <th>등급</th>
                                 <th>과목</th>
                                 <th>검정료</th>
                                 <th class="border_r0">입금방법</th>
                             </tr>
                             </thead>
                             <tbody>
                             <tr>
                                 <td rowspan="2" class="center">1급</td>
                                 <td class="center">필기</td>
                                 <td class="center">43,000원</td>
                                 <td rowspan="2" class="center border_r0">무통장입금, 신용카드, 온라인이체</td>
                             </tr>
                             <tr>
                                 <td class="center">실기</td>
                                 <td class="center">100,000원</td>
                             </tr>
                             <tr>
                                 <td rowspan="2" class="center">2급</td>
                                 <td class="center">필기</td>
                                 <td class="center">43,000원</td>
                                 <td rowspan="2" class="center border_r0">무통장입금, 신용카드, 온라인이체</td>
                             </tr>
                             <tr>
                                 <td class="center">실기</td>
                                 <td class="center">78,000원</td>
                             </tr>
                             </tbody>
                         </table>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ네트워크 관리사 1급
                     </h4>
                     <ul class="list_type3">
                               <li><strong>자격의 종류 : </strong>등록(비공인)민간자격</li>
                               <li><strong>등록번호 : </strong>2008-0212</li>
                               <li><strong>등급별 정보 : </strong>1급(민간자격)</li>
                               <li><strong>자격발급기관 : </strong>한국정보통신자격협회</li>
                            </ul>
                         </div>
                  <div class="cont_type3">
                     <h4 class = text-header>
                        <br>ㅇ네트워크 관리사 2급
                     </h4>
                        <ul class="list_type3">
                            <li><strong>자격의 종류 : </strong>등록(비공인)민간자격</li>
                            <li><strong>등록번호 : </strong>2008-0212</li>
                            <li><strong>등급별 정보 : </strong>1급(민간자격)</li>
                            <li><strong>자격발급기관 : </strong>한국정보통신자격협회</li>
                        </ul>
                       <a class="btn btn-primary" href="https://www.pqi.or.kr/inf/qul/infQulList.do" role="button" target="_blank" style ="float:relative; margin-left : 30px; margin-top:-20px;">민간자격정보서비스(www.pdi.or.kr)</a>
                    </div>
            </table>
            </div>
          
          </div>
           
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container">
               <table>
              <tr>
                 <td style = "width : 1200px; border-left : none;">
                  <h2><a href="#" target="_blank">네트워크 관리사</a>
                     <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/board/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ시험일정
                     </h4>
                  </div>
                  <div class="cont_type2">
                    <table class="table_type1" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; text-align : center;">
                        <colgroup>
                            <col style="width: 12%;">
                            <col style="width: 7%;">
                            <col style="width: 8%;">
                            <col style="width: 18%;">
                            <col style="width: 15%;">
                            <col style="width: 15%;">
                            <col style="width: 35%;">
                        </colgroup>
                        <thead>
                        <tr style = "background-color : #cde9ff;">
                            <th>회수</th>
                            <th>등급</th>
                            <th>과목</th>
                            <th>접수기간</th>
                            <th>수검일자</th>
                            <th>합격발표</th>
                            <th class="border_r0">검정예정지역</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="center">2022년 제01회</td>
                            <td class="center">1급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-03-08~<br>2022-03-11</td>
                            <td class="center">2022-04-10</td>
                            <td class="center">2022-04-12</td>
                            <td class="border_r0">서울</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제01회</td>
                            <td class="center">1급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-04-12~<br>2022-04-15</td>
                            <td class="center">2022-05-15</td>
                            <td class="center">2022-05-24</td>
                            <td class="border_r0">서울</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제02회</td>
                            <td class="center">1급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-09-27~<br>2022-09-30</td>
                            <td class="center">2022-10-30</td>
                            <td class="center">2022-11-01</td>
                            <td class="border_r0">서울</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제02회</td>
                            <td class="center">1급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-11-01~<br>2022-11-04</td>
                            <td class="center">2022-12-11</td>
                            <td class="center">2022-12-20</td>
                            <td class="border_r0">서울</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제01회</td>
                            <td class="center">2급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-01-25~<br>2022-01-28</td>
                            <td class="center">2022-02-27</td>
                            <td class="center">2022-03-01</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제01회</td>
                            <td class="center">2급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-03-01~<br>2022-03-04</td>
                            <td class="center">2022-04-03</td>
                            <td class="center">2022-04-12</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제02회</td>
                            <td class="center">2급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-04-26~<br>2022-04-29</td>
                            <td class="center">2022-05-22</td>
                            <td class="center">2022-05-24</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주,제주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제02회</td>
                            <td class="center">2급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-05-31~<br>2022-06-03</td>
                            <td class="center">2022-07-03</td>
                            <td class="center">2022-07-12</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주,제주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제03회</td>
                            <td class="center">2급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-07-19~<br>2022-07-22</td>
                            <td class="center">2022-08-21</td>
                            <td class="center">2022-08-23</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제03회</td>
                            <td class="center">2급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-08-23~<br>2022-08-26</td>
                            <td class="center">2022-09-25</td>
                            <td class="center">2022-10-04</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제04회</td>
                            <td class="center">2급</td>
                            <td class="center">필기</td>
                            <td class="center">2022-10-04~<br>2022-10-07</td>
                            <td class="center">2022-11-06</td>
                            <td class="center">2022-11-08</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주,제주</td>
                        </tr>
                        <tr>
                            <td class="center">2022년 제04회</td>
                            <td class="center">2급</td>
                            <td class="center">실기</td>
                            <td class="center">2022-11-08~<br>2022-11-11</td>
                            <td class="center">2022-12-04</td>
                            <td class="center">2022-12-13</td>
                            <td class="border_r0">서울,인천,수원,대전,대구,부산,광주,제주</td>
                        </tr>
                        </tbody>
                    </table>
                    <p class="blue mt5">※ 지역별 접수인원이 일정인원 미만인 경우 검정지역 변경 또는 취소(원서비 전액 환불)합니다.</p>
                     </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ시험과목
                     </h4>
                  </div>
               <div>
               <table class="table_type1 mt20" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; text-align : center;">
                        <colgroup>
                            <col style="width: 10%;">
                            <col style="width: 10%;">
                            <col style="width: 20%;">
                            <col style="width: 30%;">
                            <col style="width: 10%;">
                            <col style="width: 10%;">
                            <col style="width: 10%;">
                        </colgroup>
                        <thead>
                        <tr style = "background-color : #cde9ff;">
                            <th>등급</th>
                            <th>검정방법</th>
                            <th>검정과목</th>
                            <th>주요항목</th>
                            <th>문항수</th>
                            <th>제한시간</th>
                            <th class="border_r0">유형</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td rowspan="46" class="center bold blue">1급</td>
                            <td rowspan="41" class="center bold">필기</td>
                            <td rowspan="8">네트워크일반</td>
                            <td>네트워크 개요</td>
                            <td rowspan="41" class="center">60</td>
                            <td rowspan="41" class="center">60분</td>
                            <td rowspan="41" class="center border_r0">택일형</td>
                        </tr>
                        <tr>
                            <td>데이터통신 관련기술</td>
                        </tr>
                        <tr>
                            <td>통신망 기술</td>
                        </tr>
                        <tr>
                            <td>표준과 네트워크</td>
                        </tr>
                        <tr>
                            <td>네트워크설계, 구축</td>
                        </tr>
                        <tr>
                            <td>고속 LAN 기술 및 광대역통신</td>
                        </tr>
                        <tr>
                            <td>각종 통신 기술</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="8">TCP/IP</td>
                            <td>TCP/IP</td>
                        </tr>
                        <tr>
                            <td>IP Address</td>
                        </tr>
                        <tr>
                            <td>Subnet Mask</td>
                        </tr>
                        <tr>
                            <td>IP Routing</td>
                        </tr>
                        <tr>
                            <td>Packet 분석</td>
                        </tr>
                        <tr>
                            <td>기본 프로토콜</td>
                        </tr>
                        <tr>
                            <td>응용 프로토콜</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="7">NOS</td>
                            <td>File/Print, IIS, DNS, FTP등</td>
                        </tr>
                        <tr>
                            <td>Active Directory</td>
                        </tr>
                        <tr>
                            <td>사용자관리 및 권한</td>
                        </tr>
                        <tr>
                            <td>시스템 운영 관리</td>
                        </tr>
                        <tr>
                            <td>Linux Server 설치</td>
                        </tr>
                        <tr>
                            <td>Linux 명령어</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="10">네트워크 운용기기</td>
                            <td>NIC</td>
                        </tr>
                        <tr>
                            <td>SCSI</td>
                        </tr>
                        <tr>
                            <td>RAID</td>
                        </tr>
                        <tr>
                            <td>Router</td>
                        </tr>
                        <tr>
                            <td>Lx Switch</td>
                        </tr>
                        <tr>
                            <td>VLAN</td>
                        </tr>
                        <tr>
                            <td>Gateway</td>
                        </tr>
                        <tr>
                            <td>전송매체</td>
                        </tr>
                        <tr>
                            <td>최신통신기기</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="8">정보보호개론</td>
                            <td>보안의 기본개념</td>
                        </tr>
                        <tr>
                            <td>Windows Server 보안</td>
                        </tr>
                        <tr>
                            <td>Linux Server 보안</td>
                        </tr>
                        <tr>
                            <td>Network 보안</td>
                        </tr>
                        <tr>
                            <td>암호화</td>
                        </tr>
                        <tr>
                            <td>서비스별 보안 기술</td>
                        </tr>
                        <tr>
                            <td>정보보호제도</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="5" class="center bold">실기</td>
                            <td colspan="2">LAN 전송매체</td>
                            <td rowspan="5" class="center">1 SET (1-20)</td>
                            <td rowspan="5" class="center">100분</td>
                            <td rowspan="5" class="center border_r0">작업/<br>서술/<br>선택형</td>
                        </tr>
                        <tr>
                            <td colspan="2">네트워크 설계/ 구축</td>
                        </tr>
                        <tr>
                            <td colspan="2">TCP/ IP</td>
                        </tr>
                        <tr>
                            <td colspan="2">NOS</td>
                        </tr>
                        <tr>
                            <td colspan="2">네트워크 운용기기</td>
                        </tr>
                        <tr>
                            <td rowspan="38" class="center bold blue">2급</td>
                            <td rowspan="33" class="center bold">필기</td>
                            <td rowspan="8">네트워크일반</td>
                            <td>네트워크 개요</td>
                            <td rowspan="33" class="center">50</td>
                            <td rowspan="33" class="center">50분</td>
                            <td rowspan="33" class="center border_r0">택일형</td>
                        </tr>
                        <tr>
                            <td>데이터통신 관련기술</td>
                        </tr>
                        <tr>
                            <td>통신망 기술</td>
                        </tr>
                        <tr>
                            <td>표준과 네트워크</td>
                        </tr>
                        <tr>
                            <td>네트워크설계, 구축</td>
                        </tr>
                        <tr>
                            <td>고속 LAN 기술 및 광대역통신</td>
                        </tr>
                        <tr>
                            <td>각종 통신 기술</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="8">TCP/IP</td>
                            <td>TCP/IP</td>
                        </tr>
                        <tr>
                            <td>IP Address</td>
                        </tr>
                        <tr>
                            <td>Subnet Mask</td>
                        </tr>
                        <tr>
                            <td>IP Routing</td>
                        </tr>
                        <tr>
                            <td>Packet 분석</td>
                        </tr>
                        <tr>
                            <td>기본 프로토콜</td>
                        </tr>
                        <tr>
                            <td>응용 프로토콜</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="7">NOS</td>
                            <td>File/Print, IIS, DNS, FTP등</td>
                        </tr>
                        <tr>
                            <td>Active Directory</td>
                        </tr>
                        <tr>
                            <td>사용자관리 및 권한</td>
                        </tr>
                        <tr>
                            <td>시스템 운영 관리</td>
                        </tr>
                        <tr>
                            <td>Linux Server 설치</td>
                        </tr>
                        <tr>
                            <td>Linux 명령어</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="10">네트워크 운용기기</td>
                            <td>NIC</td>
                        </tr>
                        <tr>
                            <td>SCSI</td>
                        </tr>
                        <tr>
                            <td>RAID</td>
                        </tr>
                        <tr>
                            <td>Router</td>
                        </tr>
                        <tr>
                            <td>Lx Switch</td>
                        </tr>
                        <tr>
                            <td>VLAN</td>
                        </tr>
                        <tr>
                            <td>Gateway</td>
                        </tr>
                        <tr>
                            <td>전송매체</td>
                        </tr>
                        <tr>
                            <td>최신통신기기</td>
                        </tr>
                        <tr>
                            <td>기타</td>
                        </tr>
                        <tr>
                            <td rowspan="5" class="center bold">실기</td>
                            <td colspan="2">LAN 전송매체</td>
                            <td rowspan="5" class="center">1 SET (1-20)</td>
                            <td rowspan="5" class="center">80분</td>
                            <td rowspan="5" class="center border_r0">작업/<br>서술/<br>선택형</td>
                        </tr>
                        <tr>
                            <td colspan="2">네트워크 설계/ 구축</td>
                        </tr>
                        <tr>
                            <td colspan="2">TCP/ IP</td>
                        </tr>
                        <tr>
                            <td colspan="2">NOS</td>
                        </tr>
                        <tr>
                            <td colspan="2">네트워크 운용기기</td>
                        </tr>
                        </tbody>
                    </table>
               </div>
            </table>
         </div>
      </div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
            <table>
              <tr>
                 <td style = "width : 1200px; border-left : none; border-bottom : none;">
                  <h2><a href="#" class="card-link" target="_blank">네트워크 관리사</a>
                     <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/board/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ문항수 / 제한시간
                     </h4>
                  </div>
                  <div style = "width : 1000px; border-left : none;">
                     <table class="table_type1" style = "border-left : none; border-right : none; border-top : 1px solid #bcbcbc; width : 1000px; text-align : center; height:200px;">
                              <colgroup>
                                  <col style="width: 30%;">
                                  <col style="width: 70%;">
                              </colgroup>
                              <tbody>
                              <tr>
                                  <th style = "background-color : #cde9ff; border-left : none;">필기검정</th>
                                  <td class="border_r0" style = "line-height : 30px;">검정문제의 문항수는 각 과목별로 5~18문항씩 출제되며, 1급은 60분,
                                      2급은 50분의 제한시간을 둔다.</td>
                              </tr>
                              <tr>
                                  <th style = "background-color : #cde9ff; border-left : none;">실기검정</th>
                                  <td class="border_r0">1 SET(1~20문항)가 출제되며 제한시간 내에 지시된 사항을 수행해야 한다.</td>
                              </tr>
                              </tbody>
                          </table>
                  </div>
                  
            </td>
            </tr>
         </table>
          </div>
      </div>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
             <div class="container">
            <h2><a href="#" class="card-link" target="_blank">네트워크 관리사</a>
                          <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/board/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ네트워크 관리사 응시자격
                     </h4>
                     <div class="border border-secondary">
                        <table class="table_type1" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 950px; height : 370px; text-align : center;">
                                 <colgroup>
                                     <col style="width: 20%;">
                                     <col style="width: 10%;">
                                     <col style="width: 70%;">
                                 </colgroup>
                                 <tbody>
                                 <tr>
                                     <th rowspan="2" style = "background-color : #cde9ff;">필기검정</th>
                                     <td class="center">1급</td>
                                     <td class="border_r0" style = "text-align : left;">
                                         <ul class="list_type2">
                                             <li>당협회 시행 해당종목 2급자격 소지자<br><br></li>
                                             <li>전기,전자,통신,정보처리 직무분야 국가기술 자격취득자 중 아래 해당자
                                                 <ul class="list_type3">
                                                     <li>가. 기술사, 기사, 산업기사 자격증 소지자</li>
                                                     <li>나. 기능사 자격 취득한 후 동일직무 분야에서 2년이상 실무에 종사한 자<br><br></li>
                                                 </ul>
                                             </li>
                                             <li>IT관련 사업장에서 5년이상 종사한자<br>상기 1항 이상 해당자<br>
                                                 <a class="btn btn-primary" href="https://www.icqa.or.kr:443/cn/data/class_1/경력(재직)증명서-97.hwp" role="button" style = "float:relative;">경력(재직)증명서 다운</a>
                                                 <a class="btn btn-primary" href="https://www.icqa.or.kr:443/cn/data/class_1/ICQA-사실확인서.hwp" role="button" style = "float:relative;">사실확인서 다운</a>
                                         </ul>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="center">2급</td>
                                     <td class="border_r0">제한없음 (연령,나이)</td>
                                 </tr>
                                 <tr>
                                     <th style = "background-color : #cde9ff;">실기검정</th>
                                     <td class="center">1/2급</td>
                                     <td class="border_r0">해당등급 필기 합격자로서 합격일로부터 2년 이내의 응시자</td>
                                 </tr>
                                 </tbody>
                             </table>
                     </div>
                     <div class = "certiExplain">
                        <h4 class = text-header>
                           <br><br><br><br>ㅇ네트워크 관리사 합격기준
                        </h4>
                        <div class="cont_type2">
                                <table class="table_type1" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; height : 370px; text-align : center;">
                                    <colgroup>
                                        <col style="width: 10%;">
                                        <col style="width: 20%;">
                                        <col style="width: 35%;">
                                        <col style="width: 35%;">
                                    </colgroup>
                                    <thead>
                                    <tr style = "background-color : #6ca8d8;">
                                        <th rowspan="2">등급</th>
                                        <th rowspan="2">검정방법</th>
                                        <th colspan="2" class="border_r0">합격검정기준</th>
                                    </tr>
                                    <tr style = "background-color : #cde9ff;">
                                        <th>만점</th>
                                        <th class="border_r0">합격점수</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td rowspan="2" class="center" style = "background-color : #6ca8d8;">1급</td>
                                        <td style = "background-color : #cde9ff;" class="center">필기</td>
                                        <td class="center">100점</td>
                                        <td class="border_r0 center">60점 이상</td>
                                    </tr>
                                    <tr>
                                        <td style = "background-color : #cde9ff;" class="center">실기</td>
                                        <td class="center">100점</td>
                                        <td class="border_r0 center">60점 이상</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2" class="center" style = "background-color : #6ca8d8;">2급</td>
                                        <td style = "background-color : #cde9ff;" class="center">필기</td>
                                        <td class="center">100점</td>
                                        <td class="border_r0 center">60점 이상</td>
                                    </tr>
                                    <tr>
                                        <td style = "background-color : #cde9ff;" class="center">실기</td>
                                        <td class="center">100점</td>
                                        <td class="border_r0 center">60점 이상</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                         </div>
                </div>
      </div>
      </div>
         <div class="tab-pane fade show" id="temp" role="tabpanel" aria-labelledby="temp-tab">
            <div class="container">
               <h2><a href="#" class="card-link" target="_blank">네트워크 관리사</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/board/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.icqa.or.kr/cn/" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px; border-left : none; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420009" class="card-link">쉽게 접근하는 네트워크관리사 1급 필기</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/fall.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 네트워크 관리사 1급 필기</h6>
                  <h6>강사명 : 최리사 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 70,000원<h6>
                  <h6>교재 : 네트워크관리사 1＊2급 필기 + 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420009" role="button" style = "float:right; margin-top:-10px; margin-right : 20px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420010" class="card-link">쉽게 접근하는 네트워크관리사 1급 실기</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/fall1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
                  <h6>분류 : 네트워크 관리사 1급 실기</h6>
                  <h6>강사명 : 최리사 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 110,000원<h6>
                  <h6>교재 : 네트워크관리사 1＊2급 필기 + 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420010" role="button" style = "float:right; margin-top:-10px; margin-right : 20px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
           <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420007" class="card-link">network 수업(1급) - 필기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/chanyeol.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 네트워크 관리사 2급 필기</h6>
                  <h6>강사명 : 김비판 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 70,000원<h6>
                  <h6>교재 : 네트워크관리사 1＊2급 필기 + 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420007" role="button" style = "float:right; margin-top:-10px; margin-right : 20px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420008" class="card-link">network 수업(1급) - 실기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/chanyeol1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 네트워크 관리사 2급 실기</h6>
                  <h6>강사명 : 김비판 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 110,000원<h6>
                  <h6>교재 : 네트워크관리사 1＊2급 필기 + 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420008" role="button" style = "float:right; margin-top:-10px; margin-right : 20px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          </div>
   </div>
  </div>
</body>
</html>