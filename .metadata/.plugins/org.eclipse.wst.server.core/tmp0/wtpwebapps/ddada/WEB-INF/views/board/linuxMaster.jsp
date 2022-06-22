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
   <title>리눅스 마스터</title>
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
        width : 952px;
        }
        p{
        margin-top : 10px;
        margin-bottom : 10px;
        }
        th, td{
        border-left: 1px solid #bcbcbc;
        border-bottom : 1px solid #bcbcbc;
        }
        th:first-child, td:first-child {
          border-left: none;
        }
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
            <a class="nav-link" id="profile-tab" style = "width : 200px;" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">출제문항 및 합격기준</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" style = "width : 200px;" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">응시자격</a>
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
                 <td style = "width : 1200px; border-bottom:0px solid #bcbcbc;">
                  <h2><a href="#" class="card-link" target="_blank">리눅스 마스터</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/r2" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.ihd.or.kr/introducesubject1.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ리눅스 마스터란?
                     </h4>
                     <p>- 리눅스로 운영되는 전세계 80%이상의 스마트폰, 70%이상의 클라우드 서버, 세계 상위의 500대 슈퍼컴퓨터를 비롯해서 5세대 이동통신(5G), 사물인터넷(IoT), 드론, 자율주행차 등 미래성장동력 분야에서 다양한 응용기반기술에 토대가 되는 자격종목</p>
                     <p>- 리눅스 기반 시스템의 관리능력을 평가하는 1급 자격과 리눅스 운영시스템의 프로그램 사용능력을 평가하는 2급 자격으로 구분</p>
                     <p>- 리눅스마스터 1, 2급은 NCS(국가직무능력표준) 등을 바탕으로 SW기술자의 체계적 역량 가이드라인 ITSQF(IT분야역량체계)의 IT시스템관리자(L5, L3)로 인정</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ필요성
                     </h4>
                     <p>- 리눅스 시스템 관리자에게 요구되는 리눅스 OS의 기본 지식 및 리눅스 기반의 서버 ·네트워크 관리 실무능력 인증
                        <br>- 리눅스 기반의 Desktop 활용 및 서버운영, 시스템의 설계개발 및 관리, 네트워크 구축 및 서비스 운영 등</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ주관처
                     </h4>
                     <p><a href="https://www.ihd.or.kr/main.do" class="card-link" target="_blank">정보통신기술자격검정(바로가기)</a></p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ접수비용
                     </h4>
                     <div class="table_wrap">
                        <table style = "text-align : center; width: 970px;">
                           <colgroup>
                              <col style="width: 10%;">
                              <col style="width: 10%;">
                              <col style="width: 15%;">
                              <col style="width: 40%;">
                              <col style="width: 35%;">
                           </colgroup>
                           <thead>
                              <tr style = "border-top: 1px solid #bcbcbc; background-color : #6ca8d8;">
                                 <th scope="col">등급</th>
                                 <th scope="col">차수</th>
                                 <th scope="col">검정수수료</th>
                                 <th scope="col">응시지역</th>
                                 <th scope="col">응시자격</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th scope="row" rowspan="2" style = "background-color : #cde9ff;">1급</th>
                                 <td scope="row">1차</td>
                                 <td scope="row">55,000원</td>
                                 <td scope="row" class="textL" rowspan="2">서울, 부산, 대구, 광주, 대전, 인천, 수원, 제주(8개시)</td>
                                 <td scope="row" class="textL" rowspan="4">
                                    1차 : 제한없음<br>
                                    2차 : 1차 시험 합격자에 한해 <br>
                                           성적공개일 기준으로 2년 <br>
                                           이내 응시
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row">2차</td>
                                 <td scope="row">77,000원</td>
                              </tr>
                              <tr>
                                 <th scope="row" rowspan="2" style = "background-color : #cde9ff;">2급</th>
                                 <td scope="row">1차</td>
                                 <td scope="row">22,000원</td>
                                 <td scope="row" class="textL">On-line 접속 가능한 모든 지역</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row">2차</td>
                                 <td scope="row">44,000원</td>
                                 <td scope="row" class="textL">서울, 부산, 대구, 광주, 대전, 인천, 수원, 제주(8개시)</td>
                              </tr>
                           </tbody>
                        </table>
                     </div><br>
                  </div>
                  
          </td></tr></table></div>
          </div>
           
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container">
               <table>
              <tr>
                 <td style = "width : 1200px; border-bottom: 0px solid #bcbcbc;">
                  <h2><a href="#" target="_blank">리눅스 마스터</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/r2" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.ihd.or.kr/introducesubject1.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ출제기준
                     </h4>
                     <div class="table_wrap">
                        <table style = "border:1px solid #bcbcbc; border-left: 1px solid #bcbcbc; text-align : center; width : 970px;">
                           <colgroup>
                              <col style="width: 10%;">
                              <col style="width: 20%;">
                              <col style="width: 20%;">
                              <col style="width: 50%;">
                           </colgroup>
                           <thead>
                              <tr style = "background-color : #6ca8d8;">
                                 <th scope="col">등급</th>
                                 <th scope="col">과목</th>
                                 <th scope="col">검정항목</th>
                                 <th scope="col">검정내용</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th style = "background-color : #cde9ff;"scope="row" rowspan="10">1급</th>
                                 <td scope="row" rowspan="3">리눅스 실무의 이해</td>
                                 <td scope="row" class="textL">리눅스의 개요</td>
                                 <td scope="row" class="textL">운영체제의 개요, 리눅스 기초</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">리눅스 시스템의 이해</td>
                                 <td scope="row" class="textL">리눅스와 하드웨어, 리눅스의 구조, X 윈도우, SHELL, 프로세스</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">네트워크의 이해</td>
                                 <td scope="row" class="textL">네트워크 기초 및 설정</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row" rowspan="4">리눅스 시스템 관리</td>
                                 <td scope="row" class="textL">일반 운영관리</td>
                                 <td scope="row" class="textL">사용자·파일 시스템·프로세스·S/W 설치 및 관리</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">장치 관리</td>
                                 <td scope="row" class="textL">장치의 설치 및 관리, 주변장치 관리</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL" rowspan="2">시스템 보안 및 관리</td>
                                 <td scope="row" class="textL">시스템 분석, 시스템 보안 및 관리</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">시스템 백업</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="3">네트워크 및 서비스의 활용</td>
                                 <td scope="row" class="textL">네트워크 서비스</td>
                                 <td scope="row" class="textL">웹,인증,파일,메일,DNS관리(설치 및 설정), 가상화 관리 및 기타 서비스</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row" class="textL" rowspan="2">네트워크 보안</td>
                                 <td scope="row" class="textL">네트워크 침해 유형 및 특징</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row" class="textL">대비 및 대처 방안</td>
                              </tr>
                              <tr>
                                 <th style = "background-color : #cde9ff;"scope="row" rowspan="12">2급</th>
                                 <td scope="row" rowspan="3">리눅스 일반</td>
                                 <td scope="row" class="textL">리눅스의 이해</td>
                                 <td scope="row" class="textL">리눅스의 개요, 역사, 철학</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">리눅스 설치</td>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">기본 설치 및 유형, 파티션과 파일 시스템, Boot Manager</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">기본 명령어</td>
                                 <td scope="row" class="textL">사용자 생성 및 계정 관리, 디렉터리 및 파일, 기타 명령어</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="6">리눅스 운영 및 관리</td>
                                 <td scope="row" class="textL">파일 시스템 관련 명령어</td>
                                 <td scope="row" class="textL">권한 및 그룹 설정, 파일 시스템의 관리</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">Shell</td>
                                 <td scope="row" class="textL">개념 및 종류, 환경 설정</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">프로세스 관리</td>
                                 <td scope="row" class="textL">개념 및 유형, 프로세스 Utility</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">에디터</td>
                                 <td scope="row" class="textL">에디터의 종류, 에디터 활용</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">소프트웨어 설치</td>
                                 <td scope="row" class="textL">개념 및 사용법, 소프트웨어 설치 및 삭제</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">장치 설정</td>
                                 <td scope="row" class="textL">주변장치 연결 및 설정, 주변장치 활용</td>
                              </tr>
                              <tr >
                                 <td style = "border-left: 1px solid #bcbcbc;" scope="row" rowspan="3">리눅스 활용</td>
                                 <td scope="row" class="textL">X 윈도</td>
                                 <td scope="row" class="textL">개념 및 사용법, X 윈도 활용</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">인터넷 활용</td>
                                 <td scope="row" class="textL">네트워크의 개념, 인터넷 서비스의 종류, 인터넷 서비스의 설정</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" class="textL">응용분야</td>
                                 <td scope="row" class="textL">기술동향, 활용기술</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ시험일정
                     </h4>
                  </div>
                     <div class="border border-secondary">
                        <table style = "width : 1000px; text-align : center;">
                           <colgroup>
                              <col style="width: 8%;">
                              <col style="width: 8%;">
                              <col style="width: 10%;">
                              <col style="width: 10%;">
                              <col style="width: 24%;">
                              <col style="width: 24%;">
                              <col style="width: 20%;">
                           </colgroup>
                           <thead>
                              <tr style = "background-color : #6ca8d8;">
                                 <th scope="col">종목</th>
                                 <th scope="col">등급</th>
                                 <th scope="col">회차</th>
                                 <th scope="col">차수</th>
                                 <th scope="col">접수일자</th>
                                 <th scope="col">시험일자</th>
                                 <th scope="col">합격자 발표</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td rowspan="18">리눅스마스터</td>
                                 <td scope="row" rowspan="5">1급</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2201회</td>
                                 <td scope="row">1차</td>
                                 <td scope="row">01.25.(화) ~ 02.04.(금)</td>
                                 <td scope="row">03.12.(토)</td>
                                 <td scope="row">04.01.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">04.11(월) ~ 04.22.(금)</td>
                                 <td scope="row">05.21(토)</td>
                                 <td scope="row">06.10.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2202회</td>
                                 <td scope="row">1차</td>                                 
                                 <td scope="row">07.25.(월) ~ 08.05.(금)</td>
                                 <td scope="row">09.03.(토)</td>
                                 <td scope="row">09.23.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">09.26.(월) ~ 10.07.(금)</td>
                                 <td scope="row">11.19.(토)</td>
                                 <td scope="row">12.09.(금)</td>
                              </tr>
                              
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="9">2급</td>                                                         
                              </tr> 
                              <tr>                                 
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2201회</td>
                                 <td scope="row">1차</td>                                 
                                 <td scope="row">01.24.(월) ~ 02.02.(수)</td>
                                 <td scope="row">01.25.(화) ~ 02.03.(목)</td>
                                 <td scope="row">시험종료 즉시</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">01.25.(화) ~ 02.04.(금)</td>
                                 <td scope="row">03.12.(토)</td>
                                 <td scope="row">04.01.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2202회</td>
                                 <td scope="row">1차</td>                                 
                                 <td scope="row">04.25.(월) ~ 05.04.(수)</td>
                                 <td scope="row">04.26.(화) ~ 05.05.(목)</td>
                                 <td scope="row">시험종료 즉시</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">04.26.(화) ~ 05.06.(금)</td>
                                 <td scope="row">06.11.(토)</td>
                                 <td scope="row">07.01.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2203회</td>
                                 <td scope="row">1차</td>                                 
                                 <td scope="row">07.25.(월) ~ 08.03.(수)</td>
                                 <td scope="row">07.26.(화) ~ 08.04.(목)</td>
                                 <td scope="row">시험종료 즉시</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">07.26.(화) ~ 08.05.(금)</td>
                                 <td scope="row">09.03.(토)</td>
                                 <td scope="row">09.23.(금)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2204회</td>
                                 <td scope="row">1차</td>
                                 
                                 <td scope="row">10.24.(월) ~ 11.02.(수)</td>
                                 <td scope="row">10.25.(화) ~ 11.03.(목)</td>
                                 <td scope="row">시험종료 즉시</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>                                 
                                 <td scope="row">10.25.(화) ~ 11.04.(금)</td>
                                 <td scope="row">12.10.(토)</td>
                                 <td scope="row">12.30.(금)</td>
                              </tr>
                           </tbody>
                        </table>
                </div><br>
            </table>
         </div>
      </div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
            <table>
              <tr>
                 <td style = "width : 1000px; border-bottom : 0px solid #bcbcbc;">
                  <h2><a href="#" class="card-link" target="_blank">리눅스 마스터</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/r2" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.ihd.or.kr/introducesubject1.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <p><h5><b>o리눅스 마스터 시험</b></h5></p>
                  </div>
                  <div class="table_wrap">
                        <table style = "text-align : center; width : 970px;">
                           <colgroup>
                              <col style="width: 12%;">
                              <col style="width: 20%;">
                              <col style="width: 15%;">
                              <col style="width: 12%;">
                              <col style="width: 12%;">
                              <col style="width: 12%;">
                              <col style="width: 25%;">
                           </colgroup>
                           <thead>
                              <tr style = "border-top: 1px solid #bcbcbc; background-color : #6ca8d8;"">
                                 <th scope="col">검정과목</th>
                                 <th scope="col">차수</th>
                                 <th scope="col">검정방법</th>
                                 <th scope="col">문항수</th>

                                 <th scope="col">시험시간</th>
                                 <th scope="col">배점</th>
                                 <th scope="col">합격기준</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th style = "background-color : #cde9ff;"scope="row" rowspan="3">1급</th>
                                 <td scope="row">1차</td>
                                 <td scope="row">필기 <br>(사지선다)</td>
                                 <td scope="row">100문항</td>
                                 <td scope="row">100분</td>
                                 <td scope="row">100점</td>
                                 <td scope="row">60점 이상 <br>(과목당 40% 미만 과락)</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row" rowspan="2">2차</td>
                                 <td scope="row">필기 (40%) <br>(단답,서술식)</td>
                                 <td scope="row">10문항</td>
                                 <td scope="row" rowspan="2">100분</td>
                                 <td scope="row" rowspan="2">100점</td>
                                 <td scope="row" rowspan="2">60점 이상</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">실기 (60%) <br>(관리및설정)</td>
                                 <td scope="row">5~7문항</td>
                                 <!-- <td scope="row">100분</td> -->
                              </tr>
                              <tr>
                                 <th style = "background-color : #cde9ff;"scope="row" rowspan="3">2급</th>
                                 <td scope="row">1차</td>
                                 <td scope="row">온라인시험 <br>(객관식 사지선다)</td>
                                 <td scope="row">50문항</td>
                                 <td scope="row">60분</td>
                                 <td scope="row">100점</td>
                                 <td scope="row">60점 이상</td>
                              </tr>
                              <tr>
                                 <td style = "border-left: 1px solid #bcbcbc;"scope="row">2차</td>
                                 <td scope="row">필기 <br>(사지선다)</td>
                                 <td scope="row">80문항</td>
                                 <td scope="row">100분</td>
                                 <td scope="row">100점</td>
                                 <td scope="row">60점 이상 <br>(과목당 40% 미만 과락)</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
               <br><br><br>
         </table>
          </div>
      </div>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
             <div class="container">
            <h2><a href="#" class="card-link" target="_blank">리눅스 마스터</a>
                          <a class="btn btn-primary" href="https://www.comcbt.com/xe/r2" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.ihd.or.kr/introducesubject1.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ리눅스 마스터 응시자격
                     </h4>
                     <div class="border border-secondary">
                        <table class="table" style = "width : 950px;">
                           <colgroup>
                              <col class="col_auto">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr style = "">
                                 <th class="bg-light text-center" style = "width : 125px; background-color : #cde9ff;"></th>
                                 <th class="bg-light text-center" style = "width : 825px;">응시자격</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>1차</td>
                                 <td>제한없음</td>
                              </tr>
                              <tr>
                                 <td>2차</td>
                                 <td>1차 시험 합격자에 한 해 성적공개일 기준으로 2년 이내 응시</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                </div>
      </div>
      </div>
         <div class="tab-pane fade show" id="temp" role="tabpanel" aria-labelledby="temp-tab">
            <div class="container">
               <h2><a href="#" class="card-link" target="_blank">리눅스마스터</a>
                        <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420015" class="card-link">한번에 합격하는 리눅스마스터 1급 1차</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/kyungsu.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 리눅스마스터 1급 1차</h6> 
                  <h6>강사명 : 도경수 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 85,000원</h6>
                  <h6>교재 : 리눅스 마스터 1급 정복하기(1차 2차)
                  <span class = "likebutton" style = "float: relative; margin-left : 20ox;">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420015" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px;  border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420016" class="card-link">한번에 합격하는 리눅스마스터 1급 2차</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/kyungsu1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 리눅스마스터 1급 2차</h6> 
                  <h6>강사명 : 도경수 선생님</h6>
                  <h6>강의기간 : 80일</h6>
                  <h6>수강 비용 : 150,000원</h6>
                  <h6>교재 : 리눅스 마스터 1급 정복하기(1차 2차)
                  <span class = "likebutton" style = "float: relative; margin-left : 20ox;">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420016" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div><div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420017" class="card-link">한번에 합격하는 리눅스마스터 2급 1차</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/kai.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 리눅스마스터</h6> 
                  <h6>강사명 : 김종인 선생님</h6>
                  <h6>강의기간 : 30일</h6>
                  <h6>수강 비용 : 70,000원</h6>
                  <h6>교재 : 최적합 리눅스 마스터 2급
                  <span class = "likebutton" style = "float: relative; margin-left : 20ox;">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420017" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div><div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420018" class="card-link">한번에 합격하는 리눅스마스터 2급 2차</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/kai1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 리눅스마스터</h6> 
                  <h6>강사명 : 김종인 선생님</h6>
                  <h6>강의기간 : 45일</h6>
                  <h6>수강 비용 : 120,000원</h6>
                  <h6>교재 : 최적합 리눅스 마스터 2급
                  <span class = "likebutton" style = "float: relative; margin-left : 20ox;">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420018" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
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