


* 기존 main.jsp 는 혹시 모르니 주석 처리하고, 얘 넣어두기



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
  </head>
  <body>
    <!--class="navbar navbar-expand-lg navbar-light" : 내비게이션 바 (header) -->
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:rgb(205, 233, 255)">
      
      <!-- class="navbar-toggler" : 창의 크기가 작아질 때, 로고 옆에 뜨는 메뉴 축약 버튼 -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- :Ddada. 로고  -->
      <a class="navbar-brand" href="#" style="font-size: 45px; font-weight: bolder; margin-left: 10px;">
        :Ddada.</a>
      
      <!-- class="collapse navbar-collapse" : header의 카테고리 -->
      <div class="collapse navbar-collapse" id="navbarTogglerDemo03" style="margin-left: 10px;">
        <!-- <li>내의 <a>태그의 class="nav-link active"를 통해 카테고리가 선택되었음을 표시 -->
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">Ddada강좌</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">Ddada자격증</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#" data-toggle="pill">나의 Ddada</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">Ddada도서</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="pill">Ddada 커뮤니티</a>
          </li>
        </ul>

        <!-- class="form-inline my-2 my-lg-0" : header의 검색 영역-->
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search"
                 placeholder="찾고 싶은 강의 및 키워드를 입력해주세요."
                 aria-label="Search" style="width: 340px;">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
                  Search</button>
        </form>
      </div>
    </nav>

    <!-- header 밑의 로그인, 로그아웃 등의 영역 -->
    <ul class="nav nav-pills" style="float: right;">
      <li class="nav-item">
        <a class="nav-link active" href="#" data-toggle="pill">로그인</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="pill">회원가입</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          마이 페이지</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#" data-toggle="pill">Action</a>
          <a class="dropdown-item" href="#" data-toggle="pill">Another action</a>
          <a class="dropdown-item" href="#" data-toggle="pill">Something else here</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="pill">Separated link</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">로그아웃</a>
      </li>
    </ul>


    <!-- 여기 div 없애셔요~~ -->
    <div class="row" style="margin-top: 70px;">

      <div class="col-3" style="margin-left: 10px; max-width: 250px;">
        
        <div class="user" style="margin-left: 15px;">
          <a href="#" style="color: #6ca8d8; font-size:10pt; text-decoration:underline;
                        font-weight:lighter; line-height: 10mm; text-align: left;">가장 최근에 들었던 강의로 이동
          </a>    
          <p style="color: rgb(0, 0, 0); line-height: 8mm; font-size:13pt; text-align: left; font-weight: bold;">000님,<br>안녕하세요!</p>
          <p style="color: rgb(255, 255, 255); font-size:7pt; text-align: left;">
            <mark style="background-color: rgb(255, 255, 255); color:#ff0000; font-size: 15px; line-height: 5mm;">
              D-15 정보 처리 기사
            </mark></p>
        </div>

        <hr>

        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
          <li class="nav-item dropdown" data-toggle="pill" aria-selected="false" aria-expanded="false">
            <a class="nav-link dropdown-toggle" id="v-pills-dropdown-tab" data-toggle="dropdown" role="tab" aria-haspopup="true">내 강좌</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#v-pills-dropdown">SQLD</a>
              <a class="dropdown-item" href="#v-pills-dropdown">데이터 분석 전문가</a>
              <a class="dropdown-item" href="#v-pills-dropdown">정보 처리 기사</a>
            </div>
          </li>
          <a class="nav-link active" id="v-pills-license-tab" data-toggle="pill" href="#v-pills-license" role="tab" aria-controls="v-pills-license" aria-selected="true">수강 중인 강좌</a>
          <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="false">내역 관리</a>
          <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">담아두기 관리</a>
          <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">설정</a>
        </div>

      </div>

      <div class="col-9" style="margin-top: -35px;">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="license-tab" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">자격증</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">SQLD
            </a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">정보 처리 기사</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">TOEIC(토익)</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="temp-tab" data-toggle="tab" href="#temp" role="tab" aria-controls="temp" aria-selected="false">내 강좌</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="exam-tab" data-toggle="tab" href="#exam" role="tab" aria-controls="exam" aria-selected="false">기출 문제</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="refunds-tab" data-toggle="tab" href="#refunds" role="tab" aria-controls="refunds" aria-selected="false">환급 조회</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="teacher-tab" data-toggle="tab" href="#teacher" role="tab" aria-controls="teacher" aria-selected="false">온라인 선생님</a>
          </li>
        </ul>

        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="license" role="tabpanel" aria-labelledby="license-tab">
            <div class="card-deck">

              <div class="card" style="width: 15rem;">
               <img src="${contextPath}/resources/Image/wandavision.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">SQLD (SQL 자격검정)
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">D-4</span>
                  </button>
                 </h5>
                 <p class="card-text">공인 자격 제 2018-02 호
                  <br>시 험 일  : 2022.05.28 (토)
                  <br>시험시간 : 10:00 부터</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">접수기간 : 05.02 (월) 10:00 부터 ~</li>
                 <li class="list-group-item">실합격률 : </li>
                 <li class="list-group-item">난이도 : </li>
               </ul>
               <div class="card-body">
                 <a href="https://www.dataq.or.kr/www/main.do" class="card-link" target="_blank">접수하기</a>
                 <a href="https://quizeey.com/sqlp-developer" class="card-link" target="_blank">기출 문제</a>
                 <a href="#" class="card-link">후기</a>
               </div>
              </div>
              <div class="card" style="width: 15rem;">
               <img src="${contextPath}/resources/Image/byb.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">정보 처리 기사</h5>
                 <p class="card-text">필기 시험일 : 2022.04.24 (일)<br>
                 실기 시험일 : 2022.07.24 (일) ~ 2022.08.05 (금)</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">접수기간 : 03.28 (월) 10:00 ~ 03.31 (목) 18:00</li>
                 <li class="list-group-item">실합격률 : 필기 = 57.3% , 실기 = 17.7%</li>
                 <li class="list-group-item">난이도 : </li>
               </ul>
               <div class="card-body">
                 <a href="http://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" class="card-link" target="_blank">접수하기</a>
                 <a href="https://www.comcbt.com/xe/iz" class="card-link" target="_blank">기출 문제</a>
                 <a href="#" class="card-link">후기</a>
               </div>
              </div>
              <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/Image/ljy.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">TOEIC(토익)</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">Cras justo odio</li>
                 <li class="list-group-item">Dapibus ac facilisis in</li>
                 <li class="list-group-item">Vestibulum at eros</li>
               </ul>
               <div class="card-body">
                 <a href="#" class="card-link">Card link</a>
                 <a href="#" class="card-link">Another link</a>
               </div>
              </div>
             
            </div>
          </div>
          
          <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
            <br>
            아직 옆에 카테고리를 누르면 데이터 바뀌게 하는 것까진 안 배웠으니<br>
            여기 위의 인덱스 통해서 카테고리 누를 시에 어떻게 뜨게 할지 대충 틀 잡기~<br><br>
          </div>

          <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            정보 처리 기사<br>시험 일정/접수처 링크/접수 비용/난이도/실합격률/후기
          </div>

          <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            TOEIC(토익)<br>시험 일정/접수처 링크/접수 비용/난이도/실합격률/후기
          </div>

          <div class="tab-pane fade show" id="temp" role="tabpanel" aria-labelledby="temp-tab">
            <div class="card-deck">
              <div class="card">
                <img src="${contextPath}/resources/Image/Shangchi.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">SQLD 강좌 이름 ~</h5>
                  <p class="card-text">크기 줄이고 등등의 기타 설정 보다 틀에 초점 맞춤..!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
              <div class="card">
                <img src="${contextPath}/resources/Image/yjm.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">정보 처리 기사 강좌 이름 ~</h5>
                  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
              <div class="card">
                <img src="${contextPath}/resources/Image/ksw.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">TOEIC 강좌 이름 ~</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">Last updated 3 mins ago</small>
                </div>
              </div>
            </div>
          </div>

          <div class="tab-pane fade show" id="exam" role="tabpanel" aria-labelledby="exam-tab">
            <div class="card-deck">

              <div class="card" style="width: 15rem;">
               <img src="${contextPath}/resources/Image/wandavision.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">SQLD 기출 문제</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">Cras justo odio</li>
                 <li class="list-group-item">Dapibus ac facilisis in</li>
                 <li class="list-group-item">Vestibulum at eros</li>
               </ul>
               <div class="card-body">
                 <a href="#" class="card-link">기출 문제 바로 풀기</a>
                 <a href="#" class="card-link">기출 문제 사이트로</a>
               </div>
              </div>
              <div class="card" style="width: 15rem;">
               <img src="${contextPath}/resources/Image/byb.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">Cras justo odio</li>
                 <li class="list-group-item">Dapibus ac facilisis in</li>
                 <li class="list-group-item">Vestibulum at eros</li>
               </ul>
               <div class="card-body">
                 <a href="#" class="card-link">Card link</a>
                 <a href="#" class="card-link">Another link</a>
               </div>
              </div>
              <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/Image/ljy.jpg" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">Card title</h5>
                 <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">Cras justo odio</li>
                 <li class="list-group-item">Dapibus ac facilisis in</li>
                 <li class="list-group-item">Vestibulum at eros</li>
               </ul>
               <div class="card-body">
                 <a href="#" class="card-link">Card link</a>
                 <a href="#" class="card-link">Another link</a>
               </div>
              </div>
             
            </div>
          </div>

          <div class="tab-pane fade" id="refunds" role="tabpanel" aria-labelledby="refunds-tab">
            <div class="card mb-3" style="max-width: 540px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="${contextPath}/resources/Image/hh.jpg" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <h5 class="card-title">~~~ 환급 과정?</h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <div class="progress">
                      <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuemin="0" aria-valuemax="100">50%</div>
                    </div>
                    <p class="card-text"><small class="text-muted">
                      Last updated 3 mins ago
                    </small></p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="tab-pane fade" id="teacher" role="tabpanel" aria-labelledby="teacher-tab" style="margin-top :10px;">
            <div class="card border-success mb-3" style="max-width: 18rem;">
              <!-- <div class="card-header bg-transparent border-success">온라인 선생님</div> -->
              <div class="card-body text-success">
                <h5 class="card-title">온라인 선생님</h5>
                <p class="card-text">일정 알림 설정</p>
                <div class="form-check form-switch">
                  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault">
                  <label class="form-check-label" for="flexSwitchCheckDefault">일정 알림 받기</label>
                </div>
                <div class="form-check form-switch">
                  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                  <label class="form-check-label" for="flexSwitchCheckChecked">문자로 받기</label>
                </div>
                <div class="form-check form-switch">
                  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDisabled" checked>
                  <label class="form-check-label" for="flexSwitchCheckDisabled">카톡으로 받기</label>
                </div>
                <div class="form-check form-switch">
                  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckCheckedDisabled" checked disabled>
                  <label class="form-check-label" for="flexSwitchCheckCheckedDisabled">알림 비활성화</label>
                </div>
              </div>
              <div class="card-footer bg-transparent border-success">
                <a href="#">회원 정보 수정</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>
<!-- <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>메인 페이지</title>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
   <h1>메인 페이지입니다!!</h1>
</body>
</html> -->









* resources 폴더 안에 BMJUA.ttf, bootstrap.min.js, bs_classroom.css 파일 넣고,
  resources 폴더 안에 Image 폴더 넣음



















