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
   <title>정보관리기술사</title>
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
            <a class="nav-link active" id="license-tab" style = "width : 250px;" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">자격증 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" style = "width : 250px;" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">시험 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" style = "width : 250px;" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">응시자격 및 합격기준</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="temp-tab"style = "width : 250px;" data-toggle="tab" href="#temp" role="tab" aria-controls="temp" aria-selected="false">추천강좌</a>
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
                  <h2><a href="#" class="card-link" target="_blank">정보관리기술사</a>
                     <a class="btn btn-primary" href="https://q.fran.kr/%EC%8B%9C%ED%97%98/%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B8%B0%EC%88%A0%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ정보관리기술사란?
                     </h4>
                     <p>정보관리에 관한 고도의 전문지식과 실무경험에 입각하여 정보시스템을 계획, 연구, 설 계, 분석, 시험, 운영, 시공, 감리, 평가, 진단, 사업관리, 기술판단, 기술중재 또는 이 에 관한 기술자문과 기술지도 업무를 수행.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ진로 및 전망
                     </h4>
                     <p>- 정보통신부, 한국통신, 연구원 SI(system integrated)업체 (정보통신, 시스템구축회 사 등)에 근무하거나 개인사무소를 개설하여 운영한다. 「정보통신공사업법」에 따 품질검사 전문기관의 기술인력과 감리원 자격을 취득하여 감리전문회 및 고급감리원 으로 진출할 수 있다. - 정보화사회를 이행함에 따라 정보유통량이 증가하여 방대한 자료를 컴퓨터로 처리해 야 할 필요성이 증대되었다. 따라서 자료처리의 컴퓨터 의존도가 높아질수록 새로운 시스템구축 및 기존 시스템의 확장 등이 증가될 것이다. 새로운 시스템 구축을 결정 하거나 개발할 때 기술적 타당성을 검토하고 최종적으로 확인하며, 궁극적인 책임을 지는 의무와 권한을 행사하는 역할이 더욱 중요해질 것이다. 따라서 이와 관련된 인 력수요가 증가할 것으로 전망된다. 매년 응시자수는 약간 증가하는 경향을 보이지 만, 자격취득자는 20여명 수준에서 일정 수를 유지하고 있다.</p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ실시기관명
                     </h4>
                     <p><a href="https://www.hrdkorea.or.kr/" class="card-link" target="_blank">한국산업인력공단(바로가기)</a></p><br>
                  </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ실시기관 홈페이지
                     </h4>
                     <p><a href="http://www.q-net.or.kr" class="card-link" target="_blank">http://www.q-net.or.kr(바로가기)</a></p><br>
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
                           <td><b>정보관리기술사</b></td>
                            <td>67800원</td>
                            <td>87100원</td>
                        </tr>
                     </table><br>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ연도별 합격률
                     </h4>
                     <div class="tbl_normal tdCenter">
                  <table summary="종목명, 연도, 필기(응시,합격,합격률), 실기(응시,합격,합격률) 정보제공" style = "text-align : center; width : 1000px;">
                  <colgroup>
                     <col width="*">
                     <col width="8%">
                     <col width="12%">
                     <col width="12%">
                     <col width="11%">
                     <col width="12%">
                     <col width="12%">
                     <col width="11%">
                  </colgroup>
                  <thead>
                     <tr style = "border-top : 1px solid #bcbcbc; background-color : #6ca8d8;">
                        <th scope="col" rowspan="2">종목명</th>
                        <th scope="col" rowspan="2">연도</th>
                        <th scope="col" colspan="3">필기</th>
                        <th scope="col" colspan="3">실기</th>
                     </tr>
                     <tr style = "background-color : #cde9ff;">
                        <th scope="col">응시</th>
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
                        <td>19,715</td>
                        <td>1,250</td>
                        <td>6.3%</td>
                        <td>1,883</td>
                        <td>1,268</td>
                        <td>67.3%</td>
                     </tr>
                  </tfoot>
                  <tbody>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2021</td>
                        <td>1,092</td>
                        <td>96</td>
                        <td>8.8%</td>
                        <td>145</td>
                        <td>108</td>
                        <td>74.5%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2020</td>
                        <td>1,206</td>
                        <td>86</td>
                        <td>7.1%</td>
                        <td>141</td>
                        <td>89</td>
                        <td>63.1%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2019</td>
                        <td>1,222</td>
                        <td>141</td>
                        <td>11.5%</td>
                        <td>183</td>
                        <td>130</td>
                        <td>71%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2018</td>
                        <td>611</td>
                        <td>55</td>
                        <td>9%</td>
                        <td>74</td>
                        <td>51</td>
                        <td>68.9%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2017</td>
                        <td>666</td>
                        <td>28</td>
                        <td>4.2%</td>
                        <td>47</td>
                        <td>30</td>
                        <td>63.8%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2016</td>
                        <td>737</td>
                        <td>32</td>
                        <td>4.3%</td>
                        <td>69</td>
                        <td>39</td>
                        <td>56.5%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2015</td>
                        <td>858</td>
                        <td>51</td>
                        <td>5.9%</td>
                        <td>80</td>
                        <td>45</td>
                        <td>56.3%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2014</td>
                        <td>880</td>
                        <td>34</td>
                        <td>3.9%</td>
                        <td>56</td>
                        <td>28</td>
                        <td>50%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2013</td>
                        <td>946</td>
                        <td>23</td>
                        <td>2.4%</td>
                        <td>44</td>
                        <td>26</td>
                        <td>59.1%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2012</td>
                        <td>971</td>
                        <td>46</td>
                        <td>4.7%</td>
                        <td>65</td>
                        <td>41</td>
                        <td>63.1%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2011</td>
                        <td>1,103</td>
                        <td>24</td>
                        <td>2.2%</td>
                        <td>54</td>
                        <td>30</td>
                        <td>55.6%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2010</td>
                        <td>1,267</td>
                        <td>43</td>
                        <td>3.4%</td>
                        <td>79</td>
                        <td>51</td>
                        <td>64.6%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2009</td>
                        <td>1,076</td>
                        <td>60</td>
                        <td>5.6%</td>
                        <td>99</td>
                        <td>58</td>
                        <td>58.6%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2008</td>
                        <td>813</td>
                        <td>32</td>
                        <td>3.9%</td>
                        <td>77</td>
                        <td>49</td>
                        <td>63.6%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2007</td>
                        <td>990</td>
                        <td>26</td>
                        <td>2.6%</td>
                        <td>46</td>
                        <td>29</td>
                        <td>63%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2006</td>
                        <td>787</td>
                        <td>62</td>
                        <td>7.9%</td>
                        <td>84</td>
                        <td>61</td>
                        <td>72.6%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2005</td>
                        <td>619</td>
                        <td>25</td>
                        <td>4%</td>
                        <td>37</td>
                        <td>24</td>
                        <td>64.9%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2004</td>
                        <td>412</td>
                        <td>24</td>
                        <td>5.8%</td>
                        <td>80</td>
                        <td>48</td>
                        <td>60%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2003</td>
                        <td>417</td>
                        <td>81</td>
                        <td>19.4%</td>
                        <td>87</td>
                        <td>52</td>
                        <td>59.8%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2002</td>
                        <td>373</td>
                        <td>16</td>
                        <td>4.3%</td>
                        <td>17</td>
                        <td>13</td>
                        <td>76.5%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>2001</td>
                        <td>343</td>
                        <td>28</td>
                        <td>8.2%</td>
                        <td>33</td>
                        <td>33</td>
                        <td>100%</td>
                     </tr>

                     <tr>
                        <td>정보관리기술사</td>
                        <td>1979<br>~2000</td>
                        <td>2,326</td>
                        <td>237</td>
                        <td>10.2%</td>
                        <td>286</td>
                        <td>233</td>
                        <td>81.5%</td>
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
                  <h2><a href="#" target="_blank">정보관리기술사</a>
                     <a class="btn btn-primary" href="https://q.fran.kr/%EC%8B%9C%ED%97%98/%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B8%B0%EC%88%A0%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
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
                     <p>정보관리에 관련된 실무경험, 일반지식, 전문지식 및 응용능력. - 기술사로서의 지도감리능력, 자질 및 품위.</p>
                     <p>출제기준 참조<a href="www.q-net.or.kr" target="_blank">(www.q-net.or.kr)</a></p>
                  </div>
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        ㅇ시험일정
                     </h4>
                  </div>
                     <div class="border border-secondary">
                        <table style="width:100%; text-align : center;" summary="정보관리기술사 구분, 필기원서접수(인터넷), 필기시험, 필기합격(예정자)발표, 실기원서접수, 실기시험, 최종합격자 발표일 정보제공">
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
                                 <td>2022년 정기 기술사 126회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.01.04 ~ 2022.01.07</td>
                                    <!--  필기시험    -->
                                    <td>2022.01.29</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.03.17</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.03.07<br>~<br>2022.03.25</td>
                                    <!--  실기시험     -->                  
                                    <td>2022.04.23~2022.05.04</td>
                                    <td>2022.05.20</td>
                              </tr>
                              <tr>
                                    <td>2022년 정기 기술사 127회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.03.21 ~ 2022.03.24</td>
                                    <!--  필기시험    -->
                                    <td>2022.04.16</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.06.03</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.06.14<br>~<br>2022.06.17
                                    <!--  실기시험     -->                  
                                    </td><td>2022.07.23~2022.08.02</td>
                                    <td>2022.08.19</td>
                                 </tr>
                              <tr>
                                    <td>2022년 정기 기술사 128회</td>
                                    <!--  필기원서접수    -->
                                    <!-- 2016.02.05 jws : 장민우 대리 요청 수시 기능사 제거 -->
                                    <td>2022.06.08 ~ 2022.06.13</td>
                                    <!--  필기시험    -->
                                    <td>2022.07.02</td>
                                    <!--  필기합격발표    -->
                                    <td>2022.08.19</td>
                                    <!--  실기원서접수    -->
                                    <td>2022.08.23<br>~<br>2022.08.26</td>
                                    <!--  실기시험     -->                  
                                    <td>2022.09.24~2022.10.05</td>
                                    <td>2022.10.21</td>
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
                        <%-- <table class="table" style="text-align : center; vertical-align: middle;">
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
                                 <th style="vertical-align: middle;">SW 공학</th>
                                 <td>
                                    <p>개발방법론</p>
                                    <p>소프트웨어 개발</p>
                                    <p>소프트웨어 테스트</p>
                                    <p>소프트웨어 품질</p>
                                    <P>프로젝트 관리</P>
                                 </td>
                                 <td>응용SW엔지니어링</td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">경영정보</th>
                                 <td>
                                    <p>정보시스템</p>
                                    <p>개선/통제</p>
                                    <p>운영</p>
                                    <p>정책</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">데이터베이스</th>
                                 <td>
                                    <p>DB 개념</p>
                                    <p>DB 특성</p>
                                    <p>DB 모델링</p>
                                    <p>DB 성능</p>
                                    <p>DB 종류</p>
                                    <p>의사결정</p>
                                 </td>
                                 <td>
                                    <p>DB엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">컴퓨터 구조</th>
                                 <td>
                                    <p>OS</p>
                                    <p>인프라 관리</p>
                                    <p>컴퓨팅</p>
                                    <P>스마트디바이스</P>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                 </td>
                              </tr>
                              <tr>
                                 <th style="vertical-align: middle;">보안</th>
                                 <td>
                                    <p>기반기술</p>
                                    <p>네트워크 보안</p>
                                    <p>정보시스템 보안</p>
                                    <p>서비스 보안</p>
                                 </td>
                                 <td>
                                    <p>응용SW엔지니어링</p>
                                    <p>IT프로젝트관리</p>
                                    <p>보안엔지니어링</p>
                                 </td>
                              </tr>
                           </tbody>
                        </table> --%>
                        <table class="se-table-content" style="border-style:solid;border-width:1px 0px 0px 1px;border-color:#ffffff; text-align : center; vertical-align : center; ">
                                    <tbody>
                                       <tr class="se-tr">
                                          <td class="se-cell" colspan="1" rowspan="1" style="width: 21.26%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;">
                                             <div class="se-module se-module-text">                    
                                                <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.4;" id="SE-809ee6dc-7673-4010-a235-8218bfe43af7">
                                                   <span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4078bf58-7328-4f10-bfdd-d2c2fcfded7c">
                                                      <b>시험과목</b>
                                                   </span>
                                                </p>
                                             </div>
                                          </td>
                                          <td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;">
                                             <div class="se-module se-module-text">                    
                                                <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.4;" id="SE-b2352a94-1b34-4b6d-b2b3-cd88e5b558e8">
                                                   <span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c1b9b794-8355-4600-b1e7-49781edda899"><b>주요항목</b></span>
                                                </p>
                                             </div>
                                          </td>
                                          <td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;">
                                             <div class="se-module se-module-text">                    
                                                <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.4;" id="SE-f56ed124-3d67-4716-9957-1b16d54481df">
                                                   <span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-2fa1a7ed-e919-45a5-b62a-e7dca2d83de9"><b>세부항목</b></span>
                                                </p>
                                             </div>
                                          </td>
                                       </tr>
                                       <tr class="se-tr"><td class="se-cell" colspan="1" rowspan="6" style="width: 21.26%; height: 762.1866666666666px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; ">
                                          <div class="se-module se-module-text">                    
                                             <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.4;" id="SE-c5df3216-d765-4bd8-940a-a31db4aed2a2">
                                                <span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a8791254-2e81-4894-b5b0-df3b23dc6f27">정보의 구조, 수집, 정리, 축적, 검색 등 정보시스템의 설계 및 수치계산, 그 밖에 정보의 분석, 관리 및 기본적인 응용에 관한 사항</span>
                                             </p>
                                          </div>
                                       </td>
                                      <td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 315.76px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; ">
                                    		<div class="se-module se-module-text">                    
                                    			<p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-d8c5cbfc-8f48-40db-869d-594fe52ad65f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f8bb6471-1b84-4f91-ac25-3c49019446d7">1. 정보 전략 및 관리</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 315.76px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ab6c179a-f69d-4dae-957f-fd943a02ca24"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-92f12dc7-ee3f-4e87-9925-3aefaca1cb36">1. 정보전략</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e04cbe46-d699-4a93-b859-0777e6890645"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-cf2863d9-d023-453b-bb18-615a3da9ee47">-정보기술 전략 기획, 수립 및 관리 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-193019da-ea90-4aac-a91f-28fbd460ea5c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ae60a789-9644-44d2-8cb5-52f4bd3361c1">-비즈니스 및 정보기술 환경분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3afcc5a4-c8bc-477a-be11-216776d8e8d5"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1faeccb8-7f6c-4bf5-b950-e5873f8a8ea6">- 정보기술 아키텍쳐 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-025c79a3-ccba-442a-a96b-a336f3f53140"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f41548e8-dd02-4d20-8ee7-b663e6e665ad">- 투자성과 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c4423cf6-553e-4cf3-a60d-d19ec044f22c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4568f9c0-d995-485e-85cb-a0873b27f9cb">-SW제품 개발 계획 수립 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-29b36195-f071-4407-baec-a91cc6e8c8d3"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4fb486e3-874e-42d8-8498-af1747c8d634">2. 경영정보</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-94f27a10-0cf3-48cc-9b57-45b5c94e5d8f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-bd0e3a43-2ab2-4d98-87b1-1bfedbd992ef">-조직 경영전략 및 환경 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-b5c074e7-cf18-44ec-b3ec-396fc31cb901"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f5731061-8aaa-4adf-8b82-fbaf2088cc74">- 정보시스템 개선방안 도출</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-93c83513-9be9-401b-9103-d30cb8fb2d5d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-b26b04db-952b-4c93-a432-9357036981ed">-정보시스템 인프라 및 애플리케이션 분석 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-a2da7127-1ca8-405c-a0c5-dbdc610889b9"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ff9be9fe-b015-4c09-a5f8-ecc0bc4513e6">3. 정보윤리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-20180373-bcbc-4f5a-8681-8a9353ef893c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-408838ba-ae04-4d98-9f7e-efe6d92bb4cb">4. IT감리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-98fbc509-28c6-4f30-84f1-85b92ae4cf36"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e87881bd-cdc4-4b0e-ad61-f54c569bb991">-감리계획 수립 및 수행</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8629e04e-25b3-47df-be65-0adaa046d81d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-0f89e256-d2e2-4b8f-b791-39d21afceb5b">5. 통계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-0c3149f3-f691-46a0-881f-13271f31e8ad"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a06e41d3-6af7-4dfa-bfd4-2e50211faf09">6. 프로젝트 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-377bc793-980e-4d25-a411-c842164dc859"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-06b902a1-7abe-466d-bf3a-e9d7fa299630">- IT프로젝트 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-43c79ddd-a7a6-4bb5-adb7-07ffcbd2a3ba"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-6ddf46a0-4027-4016-9e28-3b65073cf46c"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 223.21px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c1be29d5-859b-4922-973d-5459b425dc19"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a8409c29-c53e-40f7-b235-68219b5c86a9">2. 소프트웨어 공학</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 223.21px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-03f1f2cf-9908-4316-ba8d-ac3f4a492163"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-67466c49-e355-4b92-ac7d-02ed93982095">1. 소프트웨어 개발방법론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-81470cc9-0344-47db-bcd4-355f4ba37e2c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-91399044-f856-43be-8ffd-0eaf4939d719">-소프트웨어개발 방법론 활용</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-a4287133-018a-43d7-998f-e7d68fe4be0e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-0c8370cf-6306-420f-ad2a-8a178758bc2f">2. 소프트웨어 분석 및 설계 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c766ab16-15f9-4ff3-ac88-3bd6dd185f21"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-eb6028aa-04ea-4ed8-b2f3-3fc7974659f8">-SW아키텍처 설계 및 문서화</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-00db80ac-fcfd-4a39-9273-1f2c670d333f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f50b9d21-b202-4db6-b7e1-277bc92932c7">- SW아키텍처 이행</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-037e2fc8-fa54-40bb-9448-31730a92de1d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-38171f99-543a-4f40-9dfe-f53546f7cc04">- SW아키텍처 변경 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-738b78ca-ef21-4f55-ba6d-b147a366bd19"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-873b1800-fdff-43d2-8d2a-587cfab48e24">-기능모델, 정적모델 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ca9bc3ec-f1bf-4592-8926-49373e760a5e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-19f42a9b-c854-4cfa-b876-4690a6ea5987">-UI/UX 계획 수립</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-33edbb4e-27de-48e1-abdb-05145c1d27c9"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-32526cfd-6514-43af-85b5-227dfa9c5fb8">- UI/UX 콘셉트 기획</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-44af2890-8560-4c7f-ba1d-e54573d2111c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-727b7c4d-9a29-4c86-9073-86210f7c9712">- UI/UX 아키텍처 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-7112cea3-b6e3-4a39-9ab7-6d91388b3154"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-75f6bcbe-7f82-4501-8e97-f1033070dc44">-시스템SW 아키텍처 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-fce6a622-374f-4cb7-8698-671b9037f322"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7e3bb669-3e49-4b58-a7d3-47635539281e">- 시스템SW 기술문서 작성</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-0d0a31f1-f14d-45b3-8927-889d2d89745f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-87cdb38d-4565-4a3f-926c-8f954aebac25">3. 소프트웨어 구현 및 시험</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c62cb036-5665-4f4f-97e0-80eb15c9263e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-26734602-1acb-4ac4-a188-f63dc1fe0169">- 프로그래밍 언어 및 응용 SW 기초 기술 활용</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-11de1f08-fa88-4ab6-b361-0f20498c7641"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d9ee5a6c-1fde-43f2-86e1-64df771b81ee">-임베디드 애플리케이션 분석 및 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e325f168-68b6-4439-ac0b-5e1a17909ec0"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-3c1e3717-22f7-4550-a019-22b2cf4cda5c">- IT테스트 기획, 계획, 분석 및 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-01428b85-141b-430e-a25e-6485d7860792"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-978014f9-94cb-4b2e-a173-cc92554b505d">- IT테스트 결과 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c40efead-a21b-45cf-bc5c-babc58e3ffc4"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-cf207706-4539-4b4b-9648-3d8d1c1b1eb7">- IT테스트 관리 및 자동화</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-52a4e251-fb80-4bdf-aa0d-c8436e7d02e2"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d83d1871-bb23-4e33-9ef1-951ea03a070c">4. 정보시스템 운영 및 유지보수</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c4e99c2a-7dec-4f35-9f12-f853431c31ca"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-619300eb-9e1d-4687-a32f-612a76bf0862">- 애플리케이션 리팩토링</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-2d73411a-dd35-4dad-b754-cc3bb7977178"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8b54b864-4cc7-42aa-af83-c8cb3f0ce9cd">-IT시스템 운영기획 및 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-b128da67-e460-43f5-a0c3-98a5be1c19d2"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-96e4f6d7-a9bb-4ba8-8154-070185a0aef5">-응용SW, HW, NW, DB 운영관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-6800ad08-c6da-4c68-942d-3cbcc7096154"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5d61e49f-3a9e-4425-a946-ba76a4d23b47">5. 소프트웨어 품질</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3d691f67-6c4c-41ac-86f3-ca12052d282b"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-37243eb5-b9df-41be-9468-263378fa5a15">- IT품질보증</span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-7ab9ab8b-439d-4858-afdf-e114467994d5"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a02196d5-f03e-4b57-b568-162e1736e1de">3. 자료처리</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-07fd9ac9-bfdd-4dc9-9416-583ae5cca0f6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-3f7bbccc-f32b-4152-90bf-5b40c81e28f1">1. 자료구조론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-65bb35b0-d9ad-4db4-95b3-ad02416ac94a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ad59d8a3-d8d9-446e-97d1-fca560d662c2">- 물리 데이터베이스 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8021d380-89e1-4f9a-89e5-2e7643e82841"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7b24dd31-a38b-4624-b1ff-9de7beca9bc9">2. 데이터모델링</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8b1db27d-cfc1-406c-a8c9-5c827c936aca"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5fa5d97f-d418-438b-a317-e72ea4e444f1">-데이터베이스 요구사항 분석 및 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-be54ec78-69bc-4f7a-a3bd-2dd55f7c7a23"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c92c5325-bcd1-4e8c-86d8-15531c118d4a">3. DBMS</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-9d30d221-7222-4e6a-90ed-485d44c99661"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-267c3569-4962-4d7d-af45-a79d96a7f0eb">4. 데이터마이닝</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-2f9afed8-18ae-45ac-9ffb-1f79ef6a50be"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-52e84f99-d7e7-40d2-9770-45acb0ede40d">5. 데이터 품질관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-4213e3e5-4686-48ce-b04f-8b5db186baa6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-36f7e408-3242-470c-af79-61f8960aecf8">6. 빅데이터분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-342c628f-c53d-428c-a39e-04a3c1bb7733"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c9df2c00-75cb-42e8-9575-fb99bc9fcf3c"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.81px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-875cc925-447d-4468-9190-27c21b208b8a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-32842a8e-1dc0-4ec3-9de1-08f5c9ffef5c">4. 컴퓨터 시스템 및 정보통신</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.81px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-59d334c7-2a1c-4fc7-9bd4-07df1528343a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-fd98ff9c-4000-4496-8e69-2784c7fe4f4a">1. 컴퓨터 시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-09f1d421-e7c7-40b8-b827-e3ed8a152e74"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-47349ae6-4ed3-41df-8505-f67bdb92207b">가. 컴퓨터 구조</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-dc5e2dac-975d-4f55-ad59-e1e2ed60b300"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-6ffd76b4-c679-4fe8-96dd-d94086540e9d">나. 운영체제</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-0dea1d59-d31c-4b95-b7b6-5859858aa994"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8bc7119e-dbbf-4c0e-9209-88be7f224295">다. 시스템 프로그래밍</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-9ed49c78-d5a1-4c64-923a-8472ad36c4f0"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-59aaffb0-0772-4869-aa9e-5577a4ec8b2f">라. 수치해석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ca03a857-bb7f-4492-8e0a-783789aeb11f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f6cacfe4-643d-4dd4-851d-c49166b377b8">마. 알고리즘</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-6a835536-84b5-47bf-937d-db5311605fa1"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-05b8db18-52c6-4c7b-a2ef-e7309f69ab6b">2. 정보통신</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3ef07fe6-0075-4ac8-9533-24e04104a7f7"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c91bd469-c26b-4536-81d6-4dceb03e971d">가. 통신이론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-9b428cd1-269c-40a0-a117-c4750fa2638f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-cfba5ec3-92f5-4ade-b98d-d058cee6fddc">-네트워크 환경 및 프로토콜 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-1073b4dc-52cd-4568-8c81-051fb75e6366"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d4b7bda9-03f1-4884-b63e-afc99c60f702">나. 네트워크설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-05925f1b-b75c-4704-9afb-4e2618b4ab4a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-b6b02697-ce50-40d6-b6b2-40f767e8b0df">-네트워크 프로토콜, 토폴로지 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-377c9aa8-2b8d-4504-b4f4-8da338e5788d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8aba94fe-e04e-4a28-864c-3e67dd049f2b">다. 통신시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-1f6f85fa-2c62-42ad-bfd7-13bf940adb27"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-50c14595-7829-44a6-b0cd-6a04483761a1"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-6c7481e1-ca68-47f8-b488-e2adfadbafaa"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ee3b6dfe-cf24-479d-91f4-6d09905f5230">5. 정보보안</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-18a97bc8-3b8e-47c3-b811-8e5c0fa460ec"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d3ca9cb8-f6c8-43a7-9b5b-4f0994548e83">1. 보안기술(암호화, 디지털 포렌식 등)</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-29b94385-1d98-4a67-aa43-bebb5770793c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-78b9035f-9060-4e23-a981-536385cfb519">2. 보안시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ac36c686-b000-433a-96d3-6cc3c31b7a19"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c12d7426-79bc-408c-898b-9029f6205bb0">3. 정보보호(보안엔지니어링 등)</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e7fa2fb5-0eee-486a-afb2-139d42a5415c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-6bce4548-1e9b-47e2-b60c-6474ea761e81">4. 관리적 보안</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-952a6c00-76ff-416f-8c5f-5cf0204c4638"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1737f5ac-03f1-4371-8bfa-a5656ea6835d"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.80666666666667px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-337d80a9-b33d-47a5-b8c7-b4ea3ef897b9"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-6ad18cc7-d32f-4871-a36d-46a2d39b7684">6. 최신기술, 법규 및 정책</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.80666666666667px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-2fc741d2-824c-472c-a07c-b1827414911b"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f64ff2c8-af6b-40e6-92b5-ac342ea56fc3">1. 최신기술</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-6fde9df1-0a32-468a-9612-1c566d7261ef"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c99a603f-b81b-4d89-b109-67c78b6c5a16">가. 인공지능, 영상/그래픽 응용, IoT, 클라우드, 스마트팩토리 등 최신 이론, 기술 및 동향</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3804d875-2f97-4ea1-9965-21bf6fdb098a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-78af8fc7-be56-4500-a1f8-ceb8d26f148e">2. 법규 및 정책 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-618765b1-75f1-4d86-b2d4-5150879b3520"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5fd88714-2fc3-42ae-b4cd-48515732be1b">가. 전자정부법, 개인정보보호법 등 관련 법령 및 지침</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-4dc13486-9057-4632-a15c-17d14d56ac29"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-19246e83-cdda-44ef-9348-bb445c7caf2e">나. 정보통신 관련 정책</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e8d68297-a01f-40c5-acb4-d8236e063867"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e72c48c1-bdda-497f-8157-82a8e897db02"> </span></p></div></td></tr></tbody>
                                </table>
							</div>
							<div class = "certiExplain" style = "margin-top : 20px;">
								<h4 class = text-header>
									<br>ㅇ면접 시험 범위
								</h4>
							</div>
							<div class="border border-secondary">
								<table class="se-table-content" style="border-style:solid;border-width:1px 0px 0px 1px;border-color:#ffffff; text-align : center; vertical-align : center; ">
                                    <tbody><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 21.26%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;"><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.6;" id="SE-2bf7295e-bf4b-4c6d-8b30-cee488c0ee93"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-be42ac0b-214e-45cc-9829-4d6d2b227e4e"><b>면접항목</b></span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;"><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.6;" id="SE-0e6dbb98-f6b9-4799-a790-46c7ab867a7f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d203e862-80f9-4a73-b717-26a2f37b42b2"><b>주요항목</b></span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 28.41333333333333px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; background-color: #cde9ff;"><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.6;" id="SE-4275183b-ef08-424b-9485-53ab8dbd6722"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e71f6169-7146-493b-8684-e375d1101414"><b>세부항목</b></span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="7" style="width: 21.26%; height: 762.1866666666666px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align-center " style="line-height:1.4;" id="SE-90a82527-3837-4839-b108-f60affc7ab50"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9c852147-47ad-46a2-bf39-fafadf08cacf">정보의 구조, 수집, 정리, 축적, 검색 등 정보시스템의 설계 및 수치계산, 그 밖에 정보의 분석, 관리 및 기본적인 응용에 관한 전문지식/ 기술</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 315.76px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-197b6511-de02-46c4-ac52-68101fbc9c30"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-b19230dd-9403-4344-a758-2eac7c8a461c">1. 정보 전략 및 관리</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 315.76px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-aa83499c-c52f-4d18-a60d-e0b83fc5b441"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-3df76d04-fac8-4024-bfac-2eed164d6991">1. 정보전략</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-31d1b451-b176-45c9-9d8e-18fa0e2fe5e6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a9b8c659-7a73-47c8-b043-f25932750633">-정보기술 전략 기획, 수립 및 관리 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-86991ad8-3197-4582-8206-3daa18a2b0e1"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f6f2a8a9-8a0e-4298-bead-ec695ac283e8">-비즈니스 및 정보기술 환경분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-1f9b1207-920b-4ccb-9de3-8dc68a7c8f90"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e6098a6e-13ef-4863-b911-30a8963c53af">- 정보기술 아키텍쳐 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-4af6d5dd-e269-4777-a530-d2048b4334fa"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-813a106b-67e8-4873-929a-61ffa04e279e">- 투자성과 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ade94666-997c-4e05-81ab-d108cbba03de"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d1184849-4e54-461b-9164-badf25e042de">-SW제품 개발 계획 수립 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-581f8fa5-19a7-402f-9dd1-ebe47e261589"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f1c461b2-b812-47ea-ba76-402e8fb3d23b">2. 경영정보</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-7a7b9293-bece-4efc-a5bf-970aac15c49c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d76b299a-f328-466d-aca2-42f2e127e0b4">-조직 경영전략 및 환경 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-0e6afdc1-c365-4314-ba1b-5761556cbf98"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-61b2f02f-997e-4119-a4b0-a359d6184250">- 정보시스템 개선방안 도출</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8f3a3c00-251e-4ea5-897e-8ea2046372a1"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-16659199-703c-464e-9070-032d69779a33">-정보시스템 인프라 및 애플리케이션 분석 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-913223e2-4fae-4751-9c46-cc917b7d26f2"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-62785b55-f182-403d-851e-fa4e0a78c04c">3. 정보윤리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-4d0a33b2-5059-4f17-a413-035f7c804a41"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-b89d7e1b-909e-4d03-bfc2-5f24f12332f4">4. IT감리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8a48dae2-5c2d-46f8-b3e3-2f988a6f7caa"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-55574f5d-ec15-45ac-9ca7-5b3b346834cd">-감리계획 수립 및 수행</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-37edcd94-45ca-4e34-8bca-7dc5e914666e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e605765a-f98d-4217-953a-6f8aa7e8adf9">5. 통계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-6346f148-c2fc-4f98-9ee8-e362b34b2dcd"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-724c7867-234f-4938-97f0-db742e390614">6. 프로젝트 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c737f069-6609-4ac3-bd84-e5175e68ecdb"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a305cf63-8b1f-403f-8a96-0625a0f86434">- IT프로젝트 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-7b7662d8-5665-476f-aca8-ba3167f59f3b"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4d2d43c7-fdbf-45cb-92ae-13ad10c837ac"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 223.21px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8e15feaf-fa0b-4e4d-88c7-c9092b0eeda8"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-2f03b738-3c8f-4239-bbc2-63e988f93120">2. 소프트웨어 공학</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 223.21px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e13cfcf5-3338-4ab0-aadd-c4ae24f74a51"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-41d76f8b-cb44-445d-b2f1-76817d89553e">1. 소프트웨어 개발방법론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e1271641-4a78-4c2a-9a9e-2d3813d04ad4"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8263c211-06b3-4fe0-989b-3bdd8c03eff2">-소프트웨어개발 방법론 활용</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-dffac44b-036c-443d-85b1-ecc11bae4453"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5f3323c9-ef25-4e23-bf00-753b63164b7f">2. 소프트웨어 분석 및 설계 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c46d8e7b-a7da-4083-acd0-b31c236388c7"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d601bfbc-f73f-4af7-b33b-03490cb7d624">-SW아키텍처 설계 및 문서화</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-615369f8-9e64-40c3-8c5f-c960b8bf15f2"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7d83547d-3bff-4b06-a434-384bf58c2ff8">- SW아키텍처 이행</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3b3048fe-18c2-4be8-a186-b22d7d11322e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-256a8366-a010-46ad-810c-ffbc03da83da">- SW아키텍처 변경 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-161a2c66-4dc7-424a-97c7-a400ae085ded"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9be65b98-83a1-445f-bb42-ca5d8d63dd9d">-기능모델, 정적모델 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8afa04ea-146c-4114-a7b7-d21fac682abe"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4d325ce0-793e-41a1-8283-a92b66be6b8b">-UI/UX 계획 수립</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-3a911a0a-a84a-468e-a271-0f292f976ea6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5b72f76f-b20f-4ff4-aeff-d662ff1e18cb">- UI/UX 콘셉트 기획</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-f5476a32-677f-450e-b06e-ac6262d10ca0"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-faab6093-d412-4259-ac18-dc9d274232a4">- UI/UX 아키텍처 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-763918de-5bfd-4e9f-9a60-d9bf3206931e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-04f1014f-6eba-48e2-825f-bbd017477f94">-시스템SW 아키텍처 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-2755e062-b0d2-443b-9e35-eebb0a99177d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f31957d0-c05f-4057-bb33-45fd6c91ded3">- 시스템SW 기술문서 작성</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-259d9cc2-c262-485a-a580-252ebb0c4f38"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a9938c73-7b0f-4563-833e-b0274b86b8ba">3. 소프트웨어 구현 및 시험</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c3e49f95-a479-47d9-aba3-730c8e6f28e1"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-103e6a60-b8e6-4496-a90c-407f2ff82167">- 프로그래밍 언어 및 응용 SW 기초 기술 활용</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-72970516-1640-4cb8-998f-35db56606c5d"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-343ea8cb-3feb-42a3-b52a-39891d1a0518">-임베디드 애플리케이션 분석 및 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-97e6108d-029a-4779-a1fa-9fd49fd5f02a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c23811c7-2590-49b1-9ee8-6808a196ba34">- IT테스트 기획, 계획, 분석 및 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-cee5dad4-cb91-4dba-a0e2-1062ddf5e182"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8add37fa-fa36-4cea-b8f9-afefc05ed513">- IT테스트 결과 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-72a18a9f-cf7d-42ee-90f5-a7a5dd32beee"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-26bf6173-fe78-49a3-b650-f57b7d666b5e">- IT테스트 관리 및 자동화</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-5c060d4b-8bf1-4f3e-bd58-3c2becf1dc62"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4c11d516-61bc-4381-adf7-a3a36ae65472">4. 정보시스템 운영 및 유지보수</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-86687f5a-c2af-40eb-8a2d-00cd67c75750"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-4781445d-4d4e-424e-ba69-943032e67ab2">- 애플리케이션 리팩토링</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-29aa1c9b-e855-4257-ba41-98f4e928776a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-24188fda-1be4-4050-adea-2aeb3fa08101">-IT시스템 운영기획 및 관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-843b19e6-6b74-4fb5-bcba-cf371c906317"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ea773052-0675-4f8b-8a1c-c8c4b73c0901">-응용SW, HW, NW, DB 운영관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-bd0bcf34-effa-4ea6-9303-c32809abb3ba"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-6ed89948-06cf-4ff9-a9a7-651ee896c0ec">5. 소프트웨어 품질</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-9c5aa67d-a9c7-40b8-8d90-24a03debce18"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f5c01329-bc55-4a02-89d5-70b7276b5a14">- IT품질보증</span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 27.9px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-200dd003-6ca7-4e53-86a9-9c946004feea"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ae6f1029-ea24-4d47-b29d-135a273746cb">3. 자료처리</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 27.9px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-019d4d80-0baf-4007-b6e5-b502141cdeeb"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9a89082c-6161-415c-87c1-163e18c1a92a">1. 자료구조론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-c693ccba-b5f9-494d-8c76-a7b7b01b9e6f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7c168300-d9f9-4276-8900-f6e1488179e9">- 물리 데이터베이스 설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-93dc7548-a590-413e-bd6b-9d1158bd36ec"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1ac5d4f8-f60c-429a-91ad-9f94123f3027">2. 데이터모델링</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-dcdad2fb-bad7-4a25-9eef-2cc42ec7f4c5"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a3ce71c3-12f2-4612-ba47-1d32c58b5c18">-데이터베이스 요구사항 분석 및 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-d957d0fd-a9ea-4e27-b858-192d96680999"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-f9a5ec32-8403-453d-a6eb-755876a51b9b">3. DBMS</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-fffb48ab-520c-4ac3-8366-48f882b2612b"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7d08bd3d-cf21-489a-a2d7-a146cae0c9b0">4. 데이터마이닝</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8f65758f-16d9-48f6-811c-a700c3e405ab"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-81216e88-c34c-4aab-9ae6-0ca867d6d5c8">5. 데이터 품질관리</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-eebfd859-51c5-4a12-96e1-eed328468bf0"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5179bcc7-74eb-4e4f-bca4-02d62070c4c1">6. 빅데이터분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-17a970e0-92cb-490b-8206-49bf01bb69b8"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1e29a8d2-196e-4fb6-8c08-fcaeb9c4aa03"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 27.9px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-222af3a5-0a25-4080-8ab8-b62211f1660b"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5a232b08-4d23-4750-81fa-b4ae85c85534">4. 컴퓨터 시스템 및 정보통신</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 27.9px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-cef21e48-c96c-4d13-93a0-5ac526d5e51f"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-69d5c2b3-8ae1-43ad-bd8c-b74d64c56ebf">1. 컴퓨터 시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-bcc39c59-3a77-465d-8953-8043fe213cb3"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1a6b89c5-eae0-4b4f-9e31-f0acfc71cb36">가. 컴퓨터 구조</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-dade1e54-b43e-47a1-8e43-95c29036c654"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e25bd48c-b4c7-4910-bb63-d3a829ae8f0e">나. 운영체제</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-9c38a0de-3bc6-4d9b-b838-23680fe8ff7a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-d476300e-baa4-4c00-89c7-50710a457ec9">다. 시스템 프로그래밍</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-df71c838-151d-410e-a38b-291f60a7796a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9a96b513-e97d-4a7c-a876-df0f7367efe5">라. 수치해석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-09465d5e-f53c-4252-85d7-971074039728"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7eb88ab9-6ef4-4fa1-befa-76c0421304e4">마. 알고리즘</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-5813afe2-aafa-4d07-ac85-d68fd2b941ea"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5b766579-6b0b-4ab3-8642-12bc4dc360e2">2. 정보통신</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-1466f4d4-0039-4491-a06a-c4ec763ecc59"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-fa203630-0fcd-40be-93bd-5c3012f6f3ab">가. 통신이론</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-df9c4670-50f8-44d8-9758-91e8ca048154"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-761f40d9-a2cd-41db-8620-1adc63aa3f12">-네트워크 환경 및 프로토콜 분석</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-752b0da9-5cdf-4829-940f-1c89206741f6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-1622dcb6-7198-474f-9426-ac80702724d4">나. 네트워크설계</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-eee83bc8-ccf4-4aed-ac89-4db24dd5d260"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9694c734-8c96-4904-9d74-ecc013506dfa">-네트워크 프로토콜, 토폴로지 설계 등</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-314766e7-0803-429d-b696-ceb6ced594bf"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-442f8ee4-9f1e-48f9-a77b-d4ca97de6c45">다. 통신시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-f3bec73d-9dad-47f5-8b7a-a646fabb1dc5"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-c715aea8-509a-44d2-a11d-1d1de6194f54"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.81px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-4cda2511-281a-4994-9b82-69c0a2c49421"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8f3aa124-58d6-4d9c-b48d-9be39e4b9319">5. 정보보안</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.81px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-54da1753-1c50-4db8-9d3d-6d67cc3aa6e9"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-9f9886b3-fe04-4dad-9ff1-8521ab3c4351">1. 보안기술(암호화, 디지털 포렌식 등)</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-7e4c7673-3d5d-4bc4-a355-266bb383b9b6"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-cee09507-7d2b-4d55-b129-cccc7a003230">2. 보안시스템</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-b852dac5-fcca-4dd3-99ce-741463885ffe"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-904fa14d-31c5-4f1a-a125-f7b02faab35e">3. 정보보호(보안엔지니어링 등)</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-b62562ee-e3bd-40bd-8328-8e592d01c380"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ef0ee359-4f2b-4c3f-ab9c-a84d92d3ecc2">4. 관리적 보안</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-ce5bcd2c-e1f3-491c-8ec3-92692127ffae"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-037ff192-f126-4c19-b4ba-8224fad3a62c"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-af7d0fa7-49af-483a-bbc8-a95ff9b06698"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-a3d7580a-ceff-445b-a963-bfbf1de23af8">6. 최신기술, 법규 및 정책</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.8px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-96dd674b-e490-43e7-992b-f0385f4cda03"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8eb9a6fa-b5aa-4741-8817-eceaa5da61b5">1. 최신기술</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-240f061a-aa8f-4a20-b252-685ade197566"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-7b78866b-7a12-4236-becc-b9805538c101">가. 인공지능, 영상/그래픽 응용, IoT, 클라우드, 스마트팩토리 등 최신 이론, 기술 및 동향</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-379dea5e-f690-4472-a15d-a76940054186"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-5a036ea1-be59-484c-9e5e-810f13436107">2. 법규 및 정책 </span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-8a2fd9ad-441f-4839-8d08-225b0fde341c"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-ab8320b3-b82c-4147-88eb-3412f83a09f2">가. 전자정부법, 개인정보보호법 등 관련 법령 및 지침</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-f02aac9d-d626-427c-99e4-b6bdecf97c7e"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-312f0562-4160-43d8-b721-d5d0b8cce4f6">나. 정보통신 관련 정책</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-209e154b-b15b-4e07-94f4-d665f75de9d1"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-fcad19dd-3fad-4fc7-a733-83125d397b04"> </span></p></div></td></tr><tr class="se-tr"><td class="se-cell" colspan="1" rowspan="1" style="width: 27.67%; height: 55.80666666666667px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-e4dbea5e-019a-412e-bb35-49617ff2235a"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-e6e1d173-6334-46cb-949c-0c73886707cc">7. 기술사로서 품위 및 자질</span></p></div></td><td class="se-cell" colspan="1" rowspan="1" style="width: 51.07%; height: 55.80666666666667px; border-style:solid;border-width:0px 1px 1px 0px;border-color:#d2d2d2; "><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-55a5ed36-8e0c-4fba-8cdd-831515fd52b9"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-8c42a93c-d93f-408f-89fa-8599c6868962">1. 기술사 갖추어야 할 주된 자질, 사명감, 인성</span></p></div><div class="se-module se-module-text">                    <p class="se-text-paragraph se-text-paragraph-align- " style="line-height:1.4;" id="SE-af2c68fd-8508-4225-a006-cfd8410b9ae5"><span style="color:#000000;" class="se-fs-fs13 se-ff-   " id="SE-fec2dbea-393b-4cdb-8660-2db1a9eef6aa">2. 기술사 자기개발 과제</span></p></div></td></tr></tbody>
                                </table>
							</div>
				</table>
			</div>
		</div>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
          	<div class="container">
            <h2><a href="#" class="card-link" target="_blank">정보관리기술사</a>
           					<a class="btn btn-primary" href="https://q.fran.kr/%EC%8B%9C%ED%97%98/%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B8%B0%EC%88%A0%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
					   		<a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
							<span class = "writebutton" style = "float : right;">
								<i class="fa-solid fa-pen"></i>
							</span>
		                </h2><hr/>
		                <div class = "certiExplain">
							<h4 class = text-header>
								ㅇ정보관리기술사 응시자격
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
											<td>
												<p>모든 학과 응시가능</p>
												<p>동일(유사)분야 기술사</p>
												<p>기사 + 4년 -> 기사 먼저 취득 후 4년 이상의 실무경력(모든 직무 분야)</p>
												<p>산업기사 + 5년 -> 산업기사 먼저 취득 후 5년 이상의 실무경력(모든 직무 분야)</p>
												<p>기능사 + 7년 -> 기능사 먼저 취득 후 7년 이상의 실무경력(모든 직무 분야)</p>
												<p>동일 종목 외 외국자격취득자</p>
												<p>대졸 + 6년</p>
												<p>3년제 전문대졸 + 7년</p>
												<p>2년제 전문대졸 + 8년</p>
												<p>기사(산업기사) 수준의 훈련과정 이수자 + 6년</p>
												<p>순수 실무경력 9년 이상</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class = "certiExplain">
								<h4 class = text-header>
									<br>ㅇ정보관리기술사 합격기준
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
											<td style = "width : 200px;">실기(구술형 면접)</td>
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
		   		<h2><a href="#" class="card-link" target="_blank">정보관리기술사</a>
		   					<a class="btn btn-primary" href="https://www.comcbt.com/xe/iz" role="button" style = "float:relative;">기출문제 풀어보기</a>
					   		<a class="btn btn-primary" href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" role="button" style = "float:relative;">접수하기</a>
							<span class = "writebutton" style = "float : right;">
								<i class="fa-solid fa-pen"></i>
							</span>
		                </h2><hr/>
		       		       <div class="container1" style = "margin-top:10px;">
		   		<table  class = "etc">
				  <tr>
				     <td style = "width : 1100px; padding-left : 30px; border-left : none; border : none;">
						<h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420027" class="card-link">알면쉽다 정보관리 기술사 - 필기편</a>
						<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
		                  margin: 0px; padding: 0px; box-shadow: none;">
		                   <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
		                </button>
		                </h2>
						<hr/>
						<img src="${contextPath}/resources/Image/jiwon.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
						<h6>분류 : 정보관리기술사 필기</h6>
						<h6>강사명 : 김지원 선생님</h6>
						<h6>강의기간 : 30일</h6>
						<h6>수강 비용 : 50,000원</h6>
						<h6>교재 : 핵심 토픽 91개로 끝내는 정보관리기술사
						<span class = "likebutton">
							<i class="fa-regular fa-heart"></i>
							<span class = "writebutton">
							<i class="fa-solid fa-pen"></i>
							</span>
							<a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420027" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
						</span></h6>
				     </td>
				  </tr>
				</table>
		    </div>
		    <div class="container1" style = "margin-top:10px;">
		   		<table  class = "etc">
				  <tr>
				     <td style = "width : 1100px; padding-left : 30px; border : none;">
						<h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420028" class="card-link">알면쉽다 정보관리 기술사 - 실기편</a>
						<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
		                  margin: 0px; padding: 0px; box-shadow: none;">
		                   <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
		                </button>
		                </h2>
						<hr/>
						<img src="${contextPath}/resources/Image/jiwon1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
						<h6>분류 : 정보관리기술사 실기</h6>
						<h6>강사명 : 김지원 선생님</h6>
						<h6>강의기간 : 50일</h6>
						<h6>수강 비용 : 70,000원</h6>
						<h6>교재 : 핵심 토픽 91개로 끝내는 정보관리기술사
						<span class = "likebutton">
							<i class="fa-regular fa-heart"></i>
							<span class = "writebutton">
							<i class="fa-solid fa-pen"></i>
							</span>
							<a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420028" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
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