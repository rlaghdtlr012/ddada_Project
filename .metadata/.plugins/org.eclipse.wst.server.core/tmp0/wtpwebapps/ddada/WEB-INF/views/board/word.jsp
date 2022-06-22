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
   <title>워드프로세서</title>
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
            <a class="nav-link active" id="license-tab" style = "width : 250px;" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">자격증 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" style = "width : 250px;" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">시험 정보</a>
          </li>
          <!-- <li class="nav-item" role="presentation">
            <a class="nav-link" id="profile-tab" style = "width : 240px;" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">출제 문항 및 배점</a> -->
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
                 <td style = "width : 1000px; border-left : none; border-bottom : none;">
                  <h2><a href="#" class="card-link" target="_blank">워드프로세서</a>
                     <a class="btn btn-primary" href="https://license.korcham.net/co/examguide02.do?cd=0102&mm=22" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jsp" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ워드프로세서이란?
                     </h4>
                     <p>워드프로세서에 관한 상급 숙련기능을 가지고 이와 관련된 업무를 신속 ·정확하게 수행 할 수 있는 능력의 유무를 검증하기 위해서 대한상공회의소가 시행.</p><br>
                  </div>
                  <div class = "certiExplain">
                  <h4 class = text-header>o진로 및 전망</h4>
                     <p>따기 쉽고, 따두면 여러 모로 유리한 자격증이라고 인식된 자격증으로서 취업에 결정적 인 영향을 끼치는 것은 아니나 대부분의 대기업에서 직원채용시 워드프로세서 실력과 윈도우 실력을 기본적인 조건으로 요구하고 있으므로 취업경쟁력을 갖출 수 있는 자격 증임에는 틀림없다. 최근에는 워드프로세서 자격증 소지자에게 가산점을 주는 기업이 늘고 있어 앞으로 자격증이 갖는 위상은 더욱 높아질 것으로 예상. 워드프로세서 자격 증 1급을 획득하면 교육부가 실시하는 학점은행제에 적용 즉, 4학점을 적립할 수 있음. 또한 공무원 시험에서 1급 자격증 소지자는 1.5%, 2급 소지자는 1.0%, 3급 소지자 는 0.5%의 가산점을 부여.</p>
                  </div><br>
                        <div class = "certiExplain">
                           <h4 class = text-header>
                              ㅇ주관처
                           </h4>
                           <p><a href="https://license.korcham.net/indexmain.jsp" class="card-link" target="_blank">대한상공회의소 자격평가사업단(바로가기)</a></p><br>
                        </div>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ검정료
                     </h4>
                     <table border = "1" style = "text-align : center; height : 80px;">
                        <th style = "width : 120px;background-color : #cde9ff;"></th>
                        <th style = "width : 240px;background-color : #cde9ff;">필기</th>
                        <th style = "width : 240px;background-color : #cde9ff;">실기</th>
                        <tr>
                           <td><b>워드프로세서</b></td>
                            <td>17000원</td>
                            <td>19500원</td>
                        </tr>
                     </table><br>
                  </div>
            </table>
            </div>
          
          </div>
           
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="container">
               <table>
              <tr>
                 <td style = "width : 1200px; border-left : none; border-bottom : none;">
                  <h2><a href="#" target="_blank">워드프로세서</a>
                     <a class="btn btn-primary" href="https://license.korcham.net/co/examguide02.do?cd=0102&mm=22" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jsp" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ시험과목
                     </h4>
                  </div>
               <div>
                  <table class="table_view_01 mt20" summary="등급, 시험방법, 시험과목, 출제형태, 시험시간 등의 시험과목 목록입니다" cellspacing="0" cellpadding="0" style="width:1000px; text-align : center; border-top : 1px solid #bcbcbc;">
                     <colgroup>
                        <col width="140px">
                        <col width="135px">
                        <col width="*">
                        <col width="145px">
                        <col width="140px">
                     </colgroup>
                     <thead>
                        <tr style = "background-color : #cde9ff;">
                           <th scope="col">등급</th>
                           <th scope="col">시험방법</th>
                           <th scope="col">시험과목</th>
                           <th scope="col">출제형태</th>
                           <th scope="col" class="last-item">시험시간</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td rowspan="2">단일등급 (구 1급)</td>
                           <td class="bg_01">필기시험</td>
                           <td class="txt_left bg_01">워드프로세서 일반<br>PC 운영체제<br>컴퓨터와 정보 활용</td>
                           <td class="bg_01">객관식 60문항</td>
                           <td class="last-item bg_01">60분</td>
                        </tr>
                        <tr>
                           <td class="bg_02">실기시험</td>
                           <td class="txt_left bg_02">문서편집 기능</td>
                           <td class="bg_02">컴퓨터 작업형</td>
                           <td class="last-item bg_02">30분</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ시험일정
                     </h4>
               </div>
               <div class = "certiExplain">
                     <h6>
                        <p style="margin-left:20px;">ㅇ접수기간 : 개설일로부터 시험일 4일 전까지</p>
                        <p style="margin-left:20px;">시험일 : 상시(시험개설 여부는 시험장 상황에 따라 다름)</p>
                        <p style="margin-left:20px;">합격발표</p>
                        <p style="margin-left:20px;">필기 : 시험일 다음날 오전 10시</p>
                        <p style="margin-left:20px;">실기 : 시험일 포함 주 제외한 2주 뒤 금요일</p>
                     </h6>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ실기프로그램
                     </h4>
               </div>
               <div class = "certiExplain">
                     <h6>
                        <p style="margin-left:20px;">한글 2020, MS Word 2016</p>
                     </h6>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ자격특전
                     </h4>
               </div>
               <div class = "certiExplain">
                     <h6>
                        <p style="margin-left:20px;">ㅇ공무원 채용 가산점</p>
                        <p style="margin-left:20px;">-경찰공무원 : 2점 가점</p>
                        <p style="margin-left:20px;">ㅇ학점은행제 학점인정 : 4학점</p>
                     </h6>
               </div>
            </table>
         </div>
      </div>
         <%--  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
            <table>
              <tr>
                 <td style = "width : 1200px; border-left : none; border-bottom : none;">
                  <h2><a href="#" class="card-link" target="_blank">워드프로세서</a>
                     <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jspboard/dataroom?sca=%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC%EA%B4%80%EB%A6%AC%EC%82%AC" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jsp" role="button" style = "float:relative;">접수하기</a>
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
                     <table class="table_type1" style = "border-left : none; border-right : none; border-top : 1px solid #bcbcbc; width : 800px; text-align : center; height:200px;">
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
      </div> --%>
          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
             <div class="container">
            <h2><a href="#" class="card-link" target="_blank">워드프로세서</a>
                          <a class="btn btn-primary" href="https://license.korcham.net/co/examguide02.do?cd=0102&mm=22" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jsp" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ워드프로세서 응시자격
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
                           <br><br><br><br>ㅇ워드프로세서 합격기준
                        </h4>
                        <div class="border border-secondary">
                           <table class="table table-bordered">
                              <colgroup>
                                 <col class="col_wp50">
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
                                    <td><b>필기</b></td>
                                    <td>총점 60점 이상</td>
                                    <td>과목별 40% 미만 취득</td>
                                 </tr>
                                 <tr>
                                    <td><b>실기</b></td>
                                    <td>총점 80점 이상</td>
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
               <h2><a href="#" class="card-link" target="_blank">워드프로세서</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/co/examguide02.do?cd=0102&mm=22" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://license.korcham.net/indexmain.jsp" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-left : none; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420025" class="card-link">대성쌤의 워드프로세서 - 필기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/daeseong.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 워드프로세서 2급 필기</h6>
                  <h6>강사명 : 강대성 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 60,000원<h6>
                  <h6>교재 : 시나공 워드프로세서 필기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420025" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420026" class="card-link">대성쌤의 워드프로세서 - 실기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/daeseong1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
                  <h6>분류 : 워드프로세서 2급 실기</h6>
                  <h6>강사명 : 강대성 선생님</h6>
                  <h6>강의기간 : 50일</h6>
                  <h6>수강 비용 : 100,000원<h6>
                  <h6>교재 : 시나공 워드프로세서 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420026" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
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