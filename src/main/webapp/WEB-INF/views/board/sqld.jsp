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
        width: 1200px;
        margin: 2px auto;
        text-align:left;
        border: 0px solid #bcbcbc;
        float : relative;
        border-radius : 15px 15px 15px 15px;
     	 }
     	h2{
     	line-height : 30px;
     	width : 1050px;
     	margin-top : 10px;
     	margin-bottom : 5px;
     	}
     	.certiExplain{
     		width : 1200px;
     	}
     	
	</style>
  </head>
  <body>
   <div class="col-9" style="margin-top: 15px; text-align : center; margin-left : 200px;">
        <ul class="nav nav-tabs" id="myTab" role="tablist" style = "width : 1200px; height : 45px;">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="license-tab" style = "width : 240px;" data-toggle="tab" href="#license" role="tab" aria-controls="license" aria-selected="true">자격증 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="home-tab" style = "width : 240px;" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">시험 정보</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="profile-tab" style = "width : 240px;" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">출제 문항 및 배점</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="contact-tab" style = "width : 240px;" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">응시자격 및 합격기준</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="temp-tab"style = "width : 240px;" data-toggle="tab" href="#temp" role="tab" aria-controls="temp" aria-selected="false">추천강좌</a>
          </li>
        </ul>
		<!-- 자격증 정보화면 -->
        <div class="tab-content" id="myTabContent">
          <div class="tab-pane fade show active" id="license" role="tabpanel" aria-labelledby="license-tab">
		    <div class="container" id = "Programming" style = "width : 1200px; float : left; margin-top:10px;">
		   		<table>
				  <tr>
				     <td style = "width : 1200px;">
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
  <!-- 	<div class = "certificate">
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
</body>
</html>