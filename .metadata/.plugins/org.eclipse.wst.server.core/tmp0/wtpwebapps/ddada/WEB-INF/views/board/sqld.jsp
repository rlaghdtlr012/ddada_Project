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
   <title>SQLD(P)</title>
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
        border-bottom : 0px solid #bcbcbc;
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
                 <td>
                  <h2><a href="#" class="card-link" target="_blank">SQLD(P)</a>
                     <a class="btn btn-primary" href="https://quizeey.com/sqlp-developer" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.dataq.or.kr/www/main.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇSQL이란?
                     </h4>
                     <p>SQL(Structured Query Language)은 데이터베이스를 직접적으로 액세스할 수 있는 언어로, 데이터를 정의하고(Data Definition), 조작하며(Data Manipulation), 조작한 결과를 적용하거나 취소할 수 있고(Transaction Control), 접근권한을 제어하는(Data Control) 처리들로 구성된다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇSQLD란?
                     </h4>
                     <p>SQL 개발자(SQLD,SQL Developer)란 데이터베이스와 데이터 모델링에 대한 지식을 바탕으로 응용 소프트웨어를 개발하면서 데이터를 조작하고 추출하는데 있어서 정확하고 최적의 성능을 발휘하는 SQL을 작성할 수 있는 개발자를 말한다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇSQLP란?
                     </h4>
                     <p>SQL 전문가(SQLP, SQL Professional)란 데이터베이스와 데이터모델링에 대한 지식을 바탕으로 데이터를 조작하고 추출하는데 있어서 정확하고 최적의 성능을 발휘하는 SQL을 작성할 수 있고, 이를 토대로 SQL을 내포하는 데이터베이스 프로그램이나 응용 소프트웨어의 성능을 최적화하거나, 이러한 성능 최적화를 지원할 수 있는 데이터베이스 개체(뷰, 인덱스 등)의 설계와 구현 등의 직무를 수행하는 전문가를 말한다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ주관처
                     </h4>
                     <p><a href="https://www.kdata.or.kr/" class="card-link" target="_blank">한국데이터산업진흥원(바로가기)</a></p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ접수비용 및 합격률
                     </h4>
                     <table border = "1" style = "text-align : center;">
                        <th style = "width : 80px;"></th>
                        <th style = "width : 160px;">필기</th>
                        <th style = "width : 160px;">실기</th>
                        <th style = "width : 160px;">합격률</th>
                        <tr>
                           <td><b>SQLD</b></td>
                            <td>50000원</td>
                            <td>해당없음</td>
                            <td>58.5%</td>
                        </tr>
                        <tr>
                           <td><b>SQLP</b></td>
                            <td>100000원</td>
                            <td>해당없음</td>
                            <td>9.7%</td>
                        </tr>
                     </table><br>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇSQL 전문가의 직무
                     </h4>
                     <table class="table" style = "text-align : center;">
                        <colgroup>
                           <col class="col_wp35">
                           <col class="col_auto">
                        </colgroup>
                        <thead>
                           <tr>
                              <th class="bg-light" style = "width : 200px;">직무</th>
                              <th class="bg-light" style = "width : 900px;">세부내용</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <th style = "vertical-align: middle;">데이터모델의 이해 및 분석</th>
                              <td>
                                 <p>데이터베이스 구성과 처리에 있어서 가장 핵심적인 요소가 바로 데이터모델이다. 데이터모델은 건물의 설계도와 같이 전체 데이터베이스가 구성되는 요소를 결정한다. 데이터구조의 근간이
                                       되기 때문에 어플리케이션이 데이터를 이용할 때 효율적으로 제공이 될 것인지 아니면 비효율적으로 제공이 될 것인지에 대한 결정은 설계단계의 데이터모델에서 할 수 밖에 없다. 본 직무는
                                       데이터모델과 SQL구문의 연관성을 위해 엔터티, 속성, 관계, 식별자, 정규화 등 데이터 모델의 기본 지식을 바탕으로 데이터 모델을 이해하고 분석하는 작업을 수행한다.</p><br>
                              </td>
                           </tr>
                           <tr>
                              <th style = "vertical-align: middle;">SQL 이해 및 활용</th>
                              <td>
                                 <p>SQL (Structured Query Language)는 데이터베이스를 유일하게 액세스 할 수 있는 언어이다. 본 직무는 SQL 문법, 옵티마이저, 인덱스의 기초 원리의
                                       이해한다. 이를 바탕으로 데이터 정의의(DDL)을 통해 테이블의 구조를 생성/변경/삭제/재명명하고, 데이터 조작어(DML)을 통해 데이터를 입력/조회/수정/삭제한다. 집합과 집합의 관계를
                                       다양한 JOIN 방법을 사용하여 표현하고, 주종 관계의 경우 서브쿼리를 사용하는 작업 등을 수행한다.</p><br>
                              </td>
                           </tr>
                           <tr>
                              <th style = "vertical-align: middle;">SQL 튜닝</th>
                              <td>
                                 <p>데이터베이스 성능을 결정짓는 가장 핵심적인 요소는 애플리케이션에 집중되어 있다. SQL을 한 번만 수행해도 같은 결과를 얻을 수 있는데 불필요하게 많은 SQL을 수행하거나,
                                       파싱을 많이 일으키거나, 많은 I/O를 일으키도록 구현하는 것이 성능 문제를 발생시킨다. 본 직무는 고성능 SQL, 아키텍처 기반의 데이터베이스 튜닝 원리, Lock과 트랜잭션 동시성 제어
                                       기법, 옵티마이저의 세부적인 작동 원리, 인덱스와 조인 튜닝 원리의 이해를 통해 SQL을 튜닝하는 작업 등을 수행한다.</p><br>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                 </td>
              </tr>
            </table>
          </div>
          </div>
           
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container">
               <table>
              <tr>
                 <td style = "width : 1000px;">
                  <h2><a href="#" class="card-link" target="_blank">SQLD(P)</a>
                     <a class="btn btn-primary" href="https://quizeey.com/sqlp-developer" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.dataq.or.kr/www/main.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ과목 및 내용
                     </h4>
                     <p>SQL 전문가 자격시험의 과목은 총 3과목으로 구성되어 있으며 데이터 모델링의 이해 과목을 바탕으로 SQL 기본 및 활용, SQL 고급활용 및 튜닝을 수행하는 능력을 검정한다.</p>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ필기
                     </h4>
                     <div class="border border-secondary">
                        <table class="table" style = "text-align : center; vertical-align: middle;">
                           <colgroup>
                              <col class="col_wp25">
                              <col class="col_wp25">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="bg-light">과목명</th>
                                 <th class="bg-light">장</th>
                                 <th class="bg-light">절</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th rowspan="2" style="vertical-align: middle;">데이터 모델링의 이해</th>
                                 <td>데이터 모델링의 이해</td>
                                 <td>
                                    <p>데이터모델의 이해</p>
                                    <p>엔터티</p>
                                    <p>속성</p>
                                    <p>관계</p>
                                    <p>식별자</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style="vertical-align: middle;border-left : 1px solid #bcbcbc;">데이터 모델과 성능</td>
                                 <td>
                                    <p>정규화와 성능</p>
                                    <p>반정규화와 성능</p>
                                    <p>대용량 데이터에 따른 성능</p>
                                    <p>DB 구조와 성능</p>
                                    <p>분산DB 데이터에 따른 성능</p>
                                 </td>
                              </tr>
      
                              <tr>
                                 <th rowspan="3" style="vertical-align: middle;">SQL 기본 및 활용</th>
                                 <td>SQL 기본</td>
                                 <td>
                                    <p>정보 요구 사항</p>
                                    <p>DDL</p>
                                    <p>DML</p>
                                    <p>TCL</p>
                                    <p>WHERE 절</p>
                                    <p>FUNCTION</p>
                                    <p>GROUP BY, HAVING 절</p>
                                    <p>ORDER BY 절</p>
                                    <p>조인</p>
                                 </td>
                              </tr>
                              <tr >
                                 <td style = "border-left : 1px solid #bcbcbc;">SQL 활용</td>
                                 <td>
                                    <p>표준조인</p>
                                    <p>집합연산자</p>
                                    <p>계층형 질의</p>
                                    <p>서브쿼리</p>
                                    <p>그룹 함수</p>
                                    <p>윈도우 함수</p>
                                    <p>DCL</p>
                                    <p>절차형 SQL</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left : 1px solid #bcbcbc;">SQL 최적화 기본 원리</td>
                                 <td>
                                    <p>옵티마이저와 실행계획</p>
                                    <p>인덱스 기본</p>
                                    <p>조인 수행 원리</p>
                                 </td>
                              </tr>
      
                              <tr>
                                 <th rowspan="5" style="vertical-align: middle;">SQL 고급활용 및 튜닝</th>
                                 <td>아키텍처 기반 튜닝 원리</td>
                                 <td>
                                    <p>데이터베이스 아키텍처</p>
                                    <p>SQL 파싱 부하</p>
                                    <p>DB Call과 네트워크 부하</p>
                                    <p>데이터베이스 I/O 원리</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left : 1px solid #bcbcbc;">Lock과 트랜잭션 동시성제어</td>
                                 <td>
                                    <p>Lock</p>
                                    <p>트랜잭션</p>
                                    <p>동시성 제어</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left : 1px solid #bcbcbc;">SQL 옵티아미저 원리</td>
                                 <td>
                                    <p>옵티마이저</p>
                                    <p>쿼리변환</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left : 1px solid #bcbcbc;">인덱스와 조인</td>
                                 <td>
                                    <p>인덱스 기본 원리</p>
                                    <p>인덱스 튜닝</p>
                                    <p>조인 기본 원리</p>
                                    <p>고급 조인 기법</p>
                                 </td>
                              </tr>
                              <tr>
                                 <td style = "border-left : 1px solid #bcbcbc;">고급 SQL 튜닝</td>
                                 <td>
                                    <p>고급 SQL 활용</p>
                                    <p>소트 튜닝</p>
                                    <p>DML 튜닝</p>
                                    <p>파티션 활용</p>
                                    <p>배치 프로그램 튜닝</p>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
                 </td>
              </tr>
            </table>
          </div>
         </div>
          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
            <table>
              <tr>
                 <td style = "width : 1000px;">
                  <h2><a href="#" class="card-link" target="_blank">SQLD(P)</a>
                     <a class="btn btn-primary" href="https://quizeey.com/sqlp-developer" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.dataq.or.kr/www/main.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ출제문항수
                     </h4>
                     <p>oSQL개발자(SQLD) 자격시험의 과목은 총 2과목으로 구성되며 필기 50문항(50문항 중 단답형 10문항 이내 출제)으로 구성되어 있다. 출제 문항 및 배점은 아래와 같다.</p><br>
                     <p><h5><b>-SQL 개발자 자격시험(총 50문항 - 필기 50문항)</b></h5></p>
                  </div>
                  <div class="border border-secondary">
                  <table class="table table-bordered">
                     <colgroup>
                        <col class="col_auto">
                        <col class="col_wp20">
                        <col class="col_wp20">
                        <col class="col_wp20">
                     </colgroup>
                     <thead>
                        <tr style = "text-align : center;">
                           <th rowspan="2" class="bg-light" style="vertical-align: middle;">과목명</th>
                           <th colspan="2" class="bg-light">필기</th>
                           <th rowspan="2" class="bg-light">검정시험시간</th>
                        </tr>
                        <tr style = "text-align : center;">
                           <th class="bg-light" >문항수</th>
                           <th class="bg-light">배점</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr style = "text-align : center;">
                           <th>데이터 모델링의 이해</th>
                           <td>10</td>
                           <td>20 (문항당 2점)</td>
                           <td rowspan="3" class="text-center">90분(1시간 30분)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>SQL 기본 및 활용</th>
                           <td>40</td>
                           <td>80 (문항당 2점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>계</th>
                           <td>50</td>
                           <td>100</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <br><br><br><br><br>
               <p>oSQL전문가(SQLP) 자격시험의 과목은 총 3과목으로 구성되며 필기 70문항(70문항 중 단답형 10문항 이내 출제), 실기 2문항으로 구성되어 있다. 출제 문항 및 배점은 아래와 같다.</p><br>
               <p><h5><b>-SQL 전문가 자격시험(총 72문항 - 필기 70문항, 실기 2문항)</b></h5></p>
               <div class="border border-secondary">
                  <table class="table table-bordered">
                     <colgroup>
                        <col class="col_auto">
                        <col class="col_wp12">
                        <col class="col_wp15">
                        <col class="col_wp12">
                        <col class="col_wp12">
                        <col class="col_wp15">
                     </colgroup>
                     <thead>
                        <tr style = "text-align : center;">
                           <th rowspan="2" class="bg-light" style="vertical-align: middle;">과목명</th>
                           <th colspan="2" class="bg-light">필기</th>
                           <th colspan="2" class="bg-light">실기</th>
                           <th rowspan="2" class="bg-light">검정시험시간</th>
                        </tr>
                        <tr style = "text-align : center;">
                           <th class="bg-light">문항수</th>
                           <th class="bg-light">배점</th>
                           <th class="bg-light">문항수</th>
                           <th class="bg-light">배점</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr style = "text-align : center;">
                           <th>데이터 모델링의 이해</th>
                           <td>10</td>
                           <td>10 (문항당 1점)</td>
                           <td rowspan="3" class="text-center">2</td>
                           <td rowspan="3" class="text-center">30 (문항당 15점)</td>
                           <td rowspan="7" class="text-center">180분(3시간)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>SQL 기본 및 활용</th>
                           <td>20</td>
                           <td>20 (문항당 1점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>SQL 고급활용 및 튜닝</th>
                           <td>40</td>
                           <td>40 (문항당 1점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>계</th>
                           <td>70</td>
                           <td>70</td>
                           <td>2</td>
                           <td>30</td>
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
            <h2><a href="#" class="card-link" target="_blank">SQLD(P)</a>
                          <a class="btn btn-primary" href="https://quizeey.com/sqlp-developer" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.dataq.or.kr/www/main.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇSQLD 응시자격
                     </h4>
                     <div class="border border-secondary">
                        <table class="table">
                           <colgroup>
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="bg-light text-center">응시자격</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>제한 없음</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <div class = "certiExplain">
                        <h4 class = text-header>
                           <br>ㅇSQLD 합격기준
                        </h4>
                        <div class="border border-secondary">
                        <table class="table table-bordered">
                           <colgroup>
                              <col class="col_wp50">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr style = "text-align: center;">
                                 <th class="bg-light">합격기준</th>
                                 <th class="bg-light">과락기준</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>총점 60점 이상</td>
                                 <td>과목별 40% 미만 취득</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <div class = "certiExplain">
                        <h4 class = text-header>
                           <br><br><br><br>ㅇSQLP 응시자격
                        </h4>
                        <p>SQL 전문가 자격시험의 응시자격은 아래와 같으며 응시자격은 시험일 기준 시험일 이전에 응시자격 요건이 충족되어야 한다. 학력/경력기준 또는 자격기준 중 한가지의 요건이 충족될 경우 응시자격이 부여된다.</p>
                     </div>
                     <div class="border border-secondary">
                     <table class="table">
                        <colgroup>
                           <col class="col_wp25">
                           <col class="col_auto">
                        </colgroup>
                        <thead>
                           <tr>
                              <th colspan="2" class="bg-light text-center">응시자격</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <th style="vertical-align: middle; text-align:center;">학력 및 경력 기준</th>
                              <td>
                                 <p>학사학위 이상 취득한 자</p>
                                 <p>전문학사학위 취득 후 실무경력 2년 이상인 자</p>
                                 <p>고등학교 졸업한 후 실무경력 4년 이상인 자</p>
                              </td>
                           </tr>
                           <tr>
                              <th style="vertical-align: middle; text-align:center;">자격보유 기준</th>
                              <td>
                                 <p>국내·외 데이터베이스 관련 자격을 취득한 자</p>
                                 <p>SQL 개발자 자격을 취득한 자</p>
                                 <p>데이터아키텍처 전문가 및 준전문가 자격을  취득한 자</p>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <div class = "certiExplain">
                        <h4 class = text-header>
                           <br>ㅇSQLP 합격기준
                        </h4>
                        <p>SQL 전문가 자격시험의 응시자격은 아래와 같으며 응시자격은 시험일 기준 시험일 이전에 응시자격 요건이 충족되어야 한다. 학력/경력기준 또는 자격기준 중 한가지의 요건이 충족될 경우 응시자격이 부여된다.</p>
                     </div>
                  <div class="border border-secondary">
                  <table class="table table-bordered">
                     <colgroup>
                        <col class="col_wp25">
                        <col class="col_auto">
                     </colgroup>
                     <thead>
                        <tr style = "text-align: center;">
                           <th colspan="2" class="bg-light">합격기준</th>
                           <th class="bg-light">과락기준</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr style = "text-align: center;">
                           <th>시험합격</th>
                           <td>총점 100점 기준 75점 이상 취득</td>
                           <td>과목별 40% 미만 취득</td>
                        </tr>
                        <tr style = "text-align: center;">
                           <th>최종합격</th>
                           <td colspan="2">응시자격심의 서류 통과자</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class = "certiExplain">
                        <h4 class = text-header>
                           <br>ㅇSQLP 응시자격 증빙서류
                        </h4>
               </div>
               <div class="border border-secondary">
                  <table class="table">
                     <colgroup>
                        <col class="col_wp50">
                        <col class="col_auto">
                     </colgroup>
                     <thead>
                        <tr>
                           <th class="bg-light" style="vertical-align: middle; text-align:center;">구분</th>
                           <th class="bg-light" style="vertical-align: middle; text-align:center;">내용</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr style="text-align:center;">
                           <th style="vertical-align: middle;">제출서류</th>
                           <td>
                              <p>경력 또는 재직증명서 1부(해당자에 한함)</p>
                              <p>최종학력증명서 1부(해당자에 한함)</p>
                              <p>자격증 사본 1부(해당자에 한함)</p>
                           </td>
                        </tr>
                        <tr style="text-align:center;">
                           <th style="vertical-align: middle;">제출시기</th>
                           <td>
                              <p>자격검정 회차별로 별도 공지</p>
                           </td>
                        </tr>
                        <tr style="text-align:center;">
                           <th style="vertical-align: middle;">제출처</th>
                           <td>
                              <p>홈페이지 내 시험결과 페이지에서 온라인 제출</p>
                           </td>
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
               <h2><a href="#" class="card-link" target="_blank">SQLD(P)</a>
                        <a class="btn btn-primary" href="https://quizeey.com/sqlp-developer" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.dataq.or.kr/www/main.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc" style = "width : 700px;">
              <tr>
                 <td style = "padding-left : 30px;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420011" class="card-link">SQLD 노랑이 책 파헤치기</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/yoojin.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : SQLD</h6>
                  <h6>강사명 : 안유진 선생님</h6>
                  <h6>강의기간 : 45일</h6>
                  <h6>수강 비용 : 50,000원<h6>
                  <h6>교재 : SQL 자격검정 실전문제
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420011" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420012" class="card-link">SQLD로 DB정복</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/jaehyun.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
                  <h6>분류 : SQLD</h6>
                  <h6>강사명 : 이재현 선생님</h6>
                  <h6>강의기간 : 45일</h6>
                  <h6>수강 비용 : 50,000원<h6>
                  <h6>교재 : SQL 자격검정 실전문제
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420012" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
           <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1000px; padding-left : 30px;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420013" class="card-link">준면쌤과 SQLP 합격의 길 걷기</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/suho.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : SQLP</h6>
                  <h6>강사명 : 김준면 선생님</h6>
                  <h6>강의기간 : 30일</h6>
                  <h6>수강 비용 : 100,000원<h6>
                  <h6>교재 : SQL 전문가 가이드
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420013" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          </div>
      <!--   </div>
      </div> -->
   </div>
   
  <!--    <div class = "certificate">
      <h3>자격증 정보 ></h3>
     </div>
    <div class="container" id = "Programming" style = "float : left; margin-top:10px;">
         <table>
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="https://www.dataq.or.kr/www/main.do" class="card-link" target="_blank">SQLD(P)</a>
               <span class = "writebutton" style = "float : right;">
                  <i class="fa-solid fa-pen"></i>
               </span>
                </h2>
            <hr/>
            <div class = "certiExplain">
               <h4 class = text-header>
                  ㅇSQL이란?
               </h4>
               <p>SQL(Structured Query Language)은 데이터베이스를 직접적으로 액세스할 수 있는 언어로, 데이터를 정의하고(Data Definition), 조작하며(Data Manipulation), 조작한 결과를 적용하거나 취소할 수 있고(Transaction Control), 접근권한을 제어하는(Data Control) 처리들로 구성된다.</p>
            </div>
            <div class = "certiExplain">
               <h4 class = text-header>
                  ㅇSQLD란?
               </h4>
               <p>SQL 개발자(SQLD,SQL Developer)란 데이터베이스와 데이터 모델링에 대한 지식을 바탕으로 응용 소프트웨어를 개발하면서 데이터를 조작하고 추출하는데 있어서 정확하고 최적의 성능을 발휘하는 SQL을 작성할 수 있는 개발자를 말한다.</p>
            </div>
            <div class = "certiExplain">
               <h4 class = text-header>
                  ㅇSQLP란?
               </h4>
               <p>SQL 전문가(SQLP, SQL Professional)란 데이터베이스와 데이터모델링에 대한 지식을 바탕으로 데이터를 조작하고 추출하는데 있어서 정확하고 최적의 성능을 발휘하는 SQL을 작성할 수 있고, 이를 토대로 SQL을 내포하는 데이터베이스 프로그램이나 응용 소프트웨어의 성능을 최적화하거나, 이러한 성능 최적화를 지원할 수 있는 데이터베이스 개체(뷰, 인덱스 등)의 설계와 구현 등의 직무를 수행하는 전문가를 말한다.</p>
            </div>
            <div class = "certiExplain">
               <h4 class = text-header>
                  ㅇ주관처
               </h4>
               <p>한국데이터산업진흥원</p>
            </div>
            <div class = "certiExplain">
               <h4 class = text-header>
                  ㅇ접수비용
               </h4>
               <table border = "1" style = "text-align : center;">
                  <th style = "width : 80px;"></th>
                  <th style = "width : 160px;">필기</th>
                  <th style = "width : 160px;">실기</th>
                  <tr>
                     <td><b>SQLD</b></td>
                      <td>50000원</td>
                      <td>해당없음</td>
                  </tr>
                  <tr>
                     <td><b>SQLP</b></td>
                      <td>100000원</td>
                      <td>해당없음</td>
                  </tr>
               </table>
            </div>
            <div class = "certiExplain" style = "margin-top : 20px;">
               <h4 class = text-header>
                  ㅇ실합격률
               </h4>
               <p>한국데이터산업진흥원</p>
            </div>
           </td>
        </tr>
      </table>
    </div> -->
    </div>
</body>
</html>