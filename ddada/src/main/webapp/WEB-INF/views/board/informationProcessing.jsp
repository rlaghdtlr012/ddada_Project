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
   <title>정보처리기사</title>
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
        width : 1000px;
        margin-top : 10px;
        margin-bottom : 5px;
        }
        .certiExplain{
        width : 1000px;
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
                 <td style = "width : 1000px;">
                  <h2><a href="#" class="card-link" target="_blank">정보처리기사</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ정보처리기사란?
                     </h4>
                     <p>컴퓨터를 효과적으로 활용하기 위해서 하드웨어뿐만 아니라 정교한 소프트웨어가 필요하다. 이에 따라 우수한 프로그램을 개발하여 업무의 효율성을 높이고, 궁극적으로 국가발전에 이바지하기 위해서 컴퓨터에 관한 전문적인 지식과 기술을 갖춘 사람을 양성할 목적으로 제정됨.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ진로 및 전망
                     </h4>
                     <p>- 기업체 전산실, 소프트웨어 개발업체, SI(system integrated)업체(정보통신, 시스템 구축회사 등), 정부기관, 언론기관, 교육 및 연구기관, 금융기관, 보험업, 병원 등 컴퓨터 시스템을 개발 및 운용하거나, 데이터 통신을 이용하여 정보처리를 시행하는 업체에서 활동하고 있다. 품질검사 전문기관 기술인력과 감리원 자격을 취득하여 감리 전문회사의 감리원으로 진출할 수 있다.
                        <br>- 정보화사회로 이행함에 따라 지식과 정보의 양이 증대되어 작업량과 업무량이 급속하게 증가했다. 또한 각종 업무의 전산화 요구가 더욱 증대되어 사회 전문분야로 컴퓨터 사용이 보편화되면서 컴퓨터산업은 급속도로 확대되었다. 컴퓨터산업의 확대는 곧 이 분야의 전문인력에 대한 수요 증가로 이어졌다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ주관처
                     </h4>
                     <p><a href="https://www.hrdkorea.or.kr/" class="card-link" target="_blank">한국산업인력공단(바로가기)</a></p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ접수비용
                     </h4>
                     <table border = "1" style = "text-align : center;">
                        <th style = "width : 120px; background-color : #cde9ff;"></th>
                        <th style = "width : 160px; background-color : #cde9ff;">필기</th>
                        <th style = "width : 160px; background-color : #cde9ff;">실기</th>
                        <tr>
                           <td><b>정보처리기사</b></td>
                            <td>19400원</td>
                            <td>22600원</td>
                        </tr>
                     </table><br>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ연도별 합격률
                     </h4>
                     <div class="tbl_normal tdCenter">
               <table summary="종목명, 연도, 필기(응시,합격,합격률), 실기(응시,합격,합격률) 정보제공" style = "text-align : center;">
                  <colgroup>
                     <col width="280px;">
                     <col width="8%">
                     <col width="11%">
                     <col width="11%">
                     <col width="10%">
                     <col width="11%">
                     <col width="11%">
                     <col width="10%">
                  </colgroup>
                  <thead>
                     <tr style = "border-top : 1px solid #bcbcbc; background-color : #6ca8d8;">
                        <th scope="col" rowspan="2">종목명</th>
                        <th scope="col" rowspan="2">연도</th>
                        <th scope="col" colspan="3">필기</th>
                        <th scope="col" colspan="3">실기</th>
                     </tr>
                     <tr style = "background-color : #cde9ff;">
                        <th scope="col" style = "border-left : 1px solid #bcbcbc;">응시</th>
                        <th scope="col">합격</th>
                        <th scope="col">합격률(%)</th>
                        <th scope="col">응시</th>
                        <th scope="col">합격</th>
                        <th scope="col">합격률(%)</th>
                     </tr>
                  </thead>
                  <tfoot>
                     <tr>
                        <th scope="row" colspan="2" style = "background-color : #cde9ff;">소 계</th>
                        <td>1,828,879</td>
                        <td>886,464</td>
                        <td>48.5%</td>
                        <td>1,228,009</td>
                        <td>644,914</td>
                        <td>52.5%</td>
                     </tr>
                  </tfoot>
                  <tbody>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2021</td>
                        <td>51,640</td>
                        <td>32,865</td>
                        <td>63.6%</td>
                        <td>52,945</td>
                        <td>16,323</td>
                        <td>30.8%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2020</td>
                        <td>43,279</td>
                        <td>24,820</td>
                        <td>57.3%</td>
                        <td>41,457</td>
                        <td>7,341</td>
                        <td>17.7%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2019</td>
                        <td>52,845</td>
                        <td>30,740</td>
                        <td>58.2%</td>
                        <td>43,763</td>
                        <td>22,495</td>
                        <td>51.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2018</td>
                        <td>44,665</td>
                        <td>22,976</td>
                        <td>51.4%</td>
                        <td>33,101</td>
                        <td>16,727</td>
                        <td>50.5%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2017</td>
                        <td>46,812</td>
                        <td>19,937</td>
                        <td>42.6%</td>
                        <td>27,202</td>
                        <td>7,452</td>
                        <td>27.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2016</td>
                        <td>54,325</td>
                        <td>26,040</td>
                        <td>47.9%</td>
                        <td>35,696</td>
                        <td>23,371</td>
                        <td>65.5%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2015</td>
                        <td>51,615</td>
                        <td>26,511</td>
                        <td>51.4%</td>
                        <td>39,168</td>
                        <td>22,024</td>
                        <td>56.2%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2014</td>
                        <td>51,446</td>
                        <td>24,132</td>
                        <td>46.9%</td>
                        <td>31,175</td>
                        <td>12,916</td>
                        <td>41.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2013</td>
                        <td>47,659</td>
                        <td>21,864</td>
                        <td>45.9%</td>
                        <td>30,107</td>
                        <td>19,762</td>
                        <td>65.6%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2012</td>
                        <td>50,098</td>
                        <td>21,395</td>
                        <td>42.7%</td>
                        <td>27,718</td>
                        <td>17,851</td>
                        <td>64.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2011</td>
                        <td>47,602</td>
                        <td>18,919</td>
                        <td>39.7%</td>
                        <td>29,167</td>
                        <td>16,874</td>
                        <td>57.9%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2010</td>
                        <td>61,685</td>
                        <td>20,190</td>
                        <td>32.7%</td>
                        <td>33,105</td>
                        <td>14,586</td>
                        <td>44.1%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2009</td>
                        <td>78,010</td>
                        <td>30,396</td>
                        <td>39%</td>
                        <td>47,334</td>
                        <td>29,247</td>
                        <td>61.8%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2008</td>
                        <td>82,521</td>
                        <td>32,048</td>
                        <td>38.8%</td>
                        <td>66,811</td>
                        <td>23,126</td>
                        <td>34.6%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2007</td>
                        <td>110,642</td>
                        <td>64,968</td>
                        <td>58.7%</td>
                        <td>96,686</td>
                        <td>30,315</td>
                        <td>31.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2006</td>
                        <td>131,062</td>
                        <td>79,951</td>
                        <td>61%</td>
                        <td>85,218</td>
                        <td>66,597</td>
                        <td>78.1%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2005</td>
                        <td>134,249</td>
                        <td>65,775</td>
                        <td>49%</td>
                        <td>75,656</td>
                        <td>58,133</td>
                        <td>76.8%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2004</td>
                        <td>118,601</td>
                        <td>65,451</td>
                        <td>55.2%</td>
                        <td>72,414</td>
                        <td>54,152</td>
                        <td>74.8%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2003</td>
                        <td>94,232</td>
                        <td>54,219</td>
                        <td>57.5%</td>
                        <td>61,679</td>
                        <td>45,744</td>
                        <td>74.2%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2002</td>
                        <td>71,715</td>
                        <td>40,167</td>
                        <td>56%</td>
                        <td>47,456</td>
                        <td>34,379</td>
                        <td>72.4%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>2001</td>
                        <td>61,645</td>
                        <td>28,898</td>
                        <td>46.9%</td>
                        <td>33,956</td>
                        <td>21,114</td>
                        <td>62.2%</td>
                     </tr>

                     <tr>
                        <td>정보처리기사</td>
                        <td>1977<br>~2000</td>
                        <td>342,531</td>
                        <td>134,202</td>
                        <td>39.2%</td>
                        <td>216,195</td>
                        <td>84,385</td>
                        <td>39%</td>
                     </tr>

                  </tbody>
               </table>
               </div>
            </table>
            </div>
          
          </div>
           
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container">
               <table>
              <tr>
                 <td style = "width : 1000px;">
                  <h2><a href="#" target="_blank">정보처리기사</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ출제 경향
                     </h4>
                     <p>정보시스템 등의 개발 요구 사항을 이해하여 각 업무에 맞는 소프트웨어의 기능에 관한 설계, 구현 및 테스트를 수행에 필요한</p>
                     <p>1. 현행 시스템 분석 및 요구사항 확인(소프트웨어 공학 기술의 요구사항 분석 기법 활용)</p>
                     <p>2. 데이터 입출력 구현(논리, 물리데이터베이스 설계, 조작 프로시저 등)</p>
                     <p>3. 통합 구현(소프트웨어와 연계 대상 모듈간의 특성 및 연계 모듈 구현 등)</p>
                     <p>4. 서버프로그램 구현(소프트웨어 개발 환경 구축, 형상 관리, 공통 모듈, 테스트 수행 등)</p>
                     <p>5. 인터페이스 구현(소프트웨어 공학 지식, 소프트웨어 인터페이스 설계, 기능 구현, 구현검증 등)</p>
                     <p>6. 화면설계(UI 요구사항 및 설계, 표준 프로토 타입 제작 등)</p>
                     <p>7. 애플리케이션 테스트 (테스트 케이스 설계, 통합 테스트, 성능 개선 등)</p>
                     <p>8. SQL 응용(SQL 작성 등)</p>
                     <p>9. 소프트웨어 개발 보안 구축(SW 개발 보안 설계, SW개발 보안 구현 등)</p>
                     <p>10. 프로그래밍 언어활용(기본 문법 등)</p>
                     <p>11. 응용 SW기초 기술 활용(운영체제, 데이터베이스 활용, 네트워크 활용, 개발환경 구축 등)</p>
                     <p>12. 제품 소프트웨어 패키징(제품 소프트웨어 패키징, 제품소프트웨어 매뉴얼 작성 , 버전 관리등 )</p>
                     <p>출제기준 참조<a href="www.q-net.or.kr" target="_blank">(www.q-net.or.kr)</a></p>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ시험일정
                     </h4>
                  </div>
                     <div class="border border-secondary">
                        <table style="width:100%; text-align : center;" summary="정보처리기사 구분, 필기원서접수(인터넷), 필기시험, 필기합격(예정자)발표, 실기원서접수, 실기시험, 최종합격자 발표일 정보제공">
                           <colgroup>
                              <col width="14%">
                              <col width="14%">
                              <col width="15%">
                              <col width="13%">
                              <col width="*">
                              <col width="13%">
                              <col width="12%">
                           </colgroup>
                           <thead>
                              <tr style = "background-color : #cde9ff;">
                                 <th scope="col">구분</th>
                                 <th scope="col">필기원서접수(휴일제외)</th>
                                 <th scope="col">필기시험</th>
                                 <th scope="col">필기합격<br>(예정자)발표</th>
                                 <th scope="col">실기원서접수<br>(휴일제외)</th>
                                 <th scope="col">실기시험</th>
                                 <th scope="col">최종합격자 발표일</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>2022년 정기 기사 1회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.01.24 ~ 2022.01.27</td>
                                    <!--  필기시험    -->
                                    <td>2022.03.05</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.03.23</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.04.04<br>~<br>2022.04.07</td>
                                    <!--  실기시험     -->                  
                                    <td>2022.05.07~2022.05.25</td>
                                    <td>2022.06.17</td>
                              </tr>
                              <tr>
                                    <td>2022년 정기 기사 2회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.03.28 ~ 2022.03.31</td>
                                    <!--  필기시험    -->
                                    <td>2022.04.24</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.05.18</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.06.20<br>~<br>2022.06.23
                                    <!--  실기시험     -->                  
                                    </td><td>2022.07.24~2022.08.05</td>
                                    <td>2022.09.02</td>
                                 </tr>
                              <tr>
                                    <td>2022년 정기 기사 3회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.06.07 ~ 2022.06.10</td>
                                    <!--  필기시험    -->
                                    <td>2022.07.02<br>~<br>2022.07.22</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.08.10</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.09.05<br>~<br>2022.09.08</td>
                                    <!--  실기시험     -->                  
                                    <td>2022.10.16~2022.10.28</td>
                                    <td>2022.11.25</td>
                                 </tr>
                           </tbody>
                        </table>
                </div><br>
                <div style = "border : 1px solid #bcbcbc;">
                  <ul class="list num">
                     <li><span style="color: red; font-weight: bold;">2022년도 기사/산업기사 제1회 및 2회는 분리시행, 제3회 및 4회는 통합시행되며, 산업기사는 제3회 시험부터 기사로 통합 표기됩니다.</span> </li>
                     <li>1. 원서접수시간은 원서접수 첫날 <span class="fc_r">10:00부터 마지막 날 18:00까지</span> 임.</li>
                     <li>2. 필기시험 합격예정자 및 최종합격자 발표시간은 해당 발표일 <span class="fc_r">09:00</span>임. </li>
                     <li>3. 주말 및 공휴일, 공단창립기념일(3.18)에는 실기시험 원서 접수 불가</li>
                  </ul>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                  <h4 class = text-header>
                     ㅇ필기 출제 범위
                  </h4>
               </div>
               <div class="border border-secondary">
                        <table class="table" style="text-align : center; vertical-align: middle;">
                           <colgroup>
                              <col class="col_wp25">
                              <col class="col_wp25">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="bg-light">과목명</th>
                                 <th class="bg-light">활용 NCS 능력단위</th>
                                 <th class="bg-light">NCS 세분류</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th style="vertical-align: middle;">소프트웨어의 설계</th>
                                 <td>
                                    <p>요구사항 확인</p>
                                    <p>화면 설계</p>
                                    <p>애플리케이션 설계</p>
                                    <p>인터페이스 설계</p>
                                 </td>
                                 <td>응용SW엔지니어링</td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">소프트웨어 개발</th>
                                 <td>
                                    <p>데이터 입출력 구현</p>
                                    <p>통합 구현</p>
                                    <p>제품소프트웨어 패키징</p>
                                    <p>애플리케이션테스트 관리</p>
                                    <p>인터페이스 구현</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">데이터베이스 구축</th>
                                 <td>
                                    <p>SQL 응용</p>
                                    <p>SQL 활용</p>
                                    <p>논리 데이터베이스 설계</p>
                                    <p>물리 데이터베이스 설계</p>
                                    <p>데이터 전환</p>
                                 </td>
                                 <td>
                                    <p>DB엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">프로그래밍 언어 활용</th>
                                 <td>
                                    <p>서버프로그램 구현</p>
                                    <p>프로그래밍 언어 활용</p>
                                    <p>응용 SW 기초기술 활용</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">정보시스템 구축관리</th>
                                 <td>
                                    <p>소프트웨어개발 방법론 활용</p>
                                    <p>IT프로젝트 정보시스템 구축관리</p>
                                    <p>소프트웨어 개발보안 구축</p>
                                    <p>시스템 보안 구축</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                    <p>IT프로젝트관리</p>
                                    <p>보안엔지니어링</p>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <div class = "certiExplain" style = "margin-top : 20px;">
                        <h4 class = text-header>
                           <br>ㅇ실기 출제 범위
                        </h4>
                     </div>
                     <div class="border border-secondary">
                        <table class="table" style="text-align : center; vertical-align: middle;">
                           <colgroup>
                              <col class="col_wp25">
                              <col class="col_wp25">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="bg-light">과목명</th>
                                 <th class="bg-light">활용 NCS 능력단위</th>
                                 <th class="bg-light">NCS 세분류</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <th style="vertical-align: middle;">소프트웨어의 설계</th>
                                 <td>
                                    <p>요구사항 확인</p>
                                    <p>데이터 입출력 구현</p>
                                    <p>통합 구현</p>
                                    <p>제품소프트웨어 패키징</p>
                                    <p>서버프로그램 구현</p>
                                    <p>인터페이스 구현</p>
                                    <p>프로그래밍 언어 활용</p>
                                    <p>응용 SW 기초 기술 활용</p>
                                    <p>화면 설계</p>
                                    <p>애플리케이션 테스트 관리</p>
                                    <p>SQL 응용</p>
                                    <p>소프트웨어 개발 보안 구축</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                    <p>DB엔지니어링</p>
                                    <p>보안엔지니어링</p>
                                 </td>
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
                 <td style = "width : 1000px;">
                  <h2><a href="#" class="card-link" target="_blank">정보처리기사</a>
                     <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ출제문항수
                     </h4>
                     <p>- 필기 : 객관식 4지 택일형, 과목당 20문항(과목당 30분). 총 100문제, 150분(2시간 30분)<br></p>
                     <p>- 실기 : 필답형(2시간30분)</p>
                     <br>
                     <p><h5><b>-정보처리기사 필기시험(총 100문항)</b></h5></p>
                  </div>
                  <div class="border border-secondary">
                  <table class="table table-bordered">
                     <colgroup>
                        <col class="col_auto">
                        <col class="col_wp20">
                        <col class="col_wp20">
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
                           <th>소프트웨어설계</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                           <td rowspan="6" class="text-center">150분(2시간 30분)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>소프트웨어개발</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>데이터베이스 구축</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>프로그래밍 언어 활용</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                        </tr>
                        <tr style = "text-align : center; border-bottom : 2px solid #bcbcbc;">
                           <th>정보시스템 구축관리</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>계</th>
                           <td>100</td>
                           <td>500</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <br><br><br>
               <div class="border border-secondary">
                  <table class="table table-bordered">
                     <colgroup>
                        <col class="col_auto">
                        <col class="col_wp20">
                        <col class="col_wp20">
                     </colgroup>
                     <thead>
                        <tr style = "text-align : center;">
                           <th rowspan="2" class="bg-light" style="vertical-align: middle;">과목명</th>
                           <th colspan="2" class="bg-light">실기</th>
                           <th rowspan="2" class="bg-light">검정시험시간</th>
                        </tr>
                        <tr style = "text-align : center;">
                           <th class="bg-light" >문항수</th>
                           <th class="bg-light">배점</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr style = "text-align : center; border-bottom : 2px solid #bcbcbc;">
                           <th>정보처리실무</th>
                           <td>20</td>
                           <td>100 (문항당 5점)</td>
                           <td rowspan="3" class="text-center">150분(2시간 30분)</td>
                        </tr>
                        <tr style = "text-align : center;">
                           <th>계</th>
                           <td>20</td>
                           <td>100</td>
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
            <h2><a href="#" class="card-link" target="_blank">정보처리기사</a>
                          <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ정보처리기사 응시자격
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
                                 <td>모든 학과 응시가능</td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <div class = "certiExplain">
                        <h4 class = text-header>
                           <br>ㅇ정보처리기사 합격기준
                        </h4>
                        <div class="border border-secondary">
                        <table class="table table-bordered">
                           <colgroup>
                              <col class="col_wp50">
                              <col class="col_auto">
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr style = "text-align: center;">
                                 <th class="bg-light"></th>
                                 <th class="bg-light">합격기준</th>
                                 <th class="bg-light">과락기준</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td style = "width : 200px;">필기</td>
                                 <td>100점을 만점으로 하여 과목당 40점 이상, 전과목 평균 60점 이상</td>
                                 <td>과목별 40% 미만 취득</td>
                              </tr>
                              <tr>
                                 <td style = "width : 200px;">실기</td>
                                 <td>100점을 만점으로 하여 60점 이상</td>
                                 <td>해당없음</td>
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
               <h2><a href="#" class="card-link" target="_blank">정보처리기사</a>
                        <a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 700px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420001" class="card-link">정보처리기사 필기 같이 따자</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/sangyeon.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 1급 필기</h6>
                  <h6>강사명 : 이상연 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 90,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 필기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420001" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 700px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420002" class="card-link">정보처리기사 실기 같이 따자</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/sangyeon1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 1급 실기</h6>
                  <h6>강사명 : 이상연 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 120,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420002" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
           <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 700px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420003" class="card-link">IT 자격증의 기본! 정처기 - 필기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/my.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 2급 필기</h6>
                  <h6>강사명 : 조미연 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 90,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 필기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420003" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 700px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420004" class="card-link">IT 자격증의 기본! 정처기 - 실기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/my2.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 2급 실기</h6>
                  <h6>강사명 : 조미연 선생님</h6>
                  <h6>강의기간 : 80일</h6>
                  <h6>수강 비용 : 120,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420004" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
           <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 700px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420005" class="card-link">정처기 만점으로 합격하자 (필기)</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/yh.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 1급 실기</h6>
                  <h6>강사명 : 김영훈 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 90,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 필기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420005" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
           <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-bottom : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420006" class="card-link">정처기 만점으로 합격하자 (실기)</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/yh1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보처리기사 1급 실기</h6>
                  <h6>강사명 : 김영훈 선생님</h6>
                  <h6>강의기간 : 80일</h6>
                  <h6>수강 비용 : 120,000원<h6>
                  <h6>교재 : 시나공 정보처리기사 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420006" role="button" style = "float:right; margin-top:-10px;">수강하기</a>
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