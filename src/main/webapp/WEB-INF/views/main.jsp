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
	<title>나의 Ddada</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <!-- <script src="bootstrap.min.js"></script> -->
	<style>
	    section#pg___main section.tag-section .tag-section__tag-item {
		    display: inline-flex;
		    align-items: center;
		    justify-content: center;
		    line-height: 1.5;
		    letter-spacing: -.3px;
		    font-size: 12px;
		    margin: 4px;
		    padding: 0 12px;
		    height: 28px;
		    color: #3e4042;
		    font-weight: 500;
		    border-radius: 20px;
		    background: #f1f3f5;
		}
		section#pg___main section.tag-section .tag-section__tag-item {
		    display: inline-flex;
		    align-items: center;
		    justify-content: center;
		    font-weight: 400;
		    line-height: 1.5;
		    letter-spacing: -.3px;
		    font-size: 12px;
		    margin: 4px;
		    padding: 0 12px;
		    height: 28px;
		    color: #3e4042;
		    font-weight: 500;
		    border-radius: 20px;
		    background: #f1f3f5;
		}
		.card-img-top{
			width : 23rem;
			height : 10rem;
		}
		.card-text{
			font-size : 18px;
		}
		.certificate{
		text-align : left;
		}
		.sqldinfo{
		text-align : center;
		float : relative;
		margin-left : 300px;
		}
		#informationCerti1{
		margin-left : 266px;
		}
		#informationCerti2{
		margin-left : 151px;
		}
		#informationMS1{
		margin-left : 373px;
		}
		#informationMS2{
		margin-left : 208px;
		}
		#networkInfo{
		margin-left : 287px;
		}
		.likebutton{
		margin-left : 300px;
		}
		.writebutton{
		margin-left : 20px;
		}
	</style>
  </head>
  <body>
  	<div class = "certificate">
  		<h3>>자격증</h3>
  		<select name = "certi">
  			<option value = "">분야선택</option>
  			<option value = "프로그래밍">프로그래밍</option>
  			<option value = "OS" >OS</option>
  			<option value = "네트워크">네트워크</option>
  			<option value = "해킹&정보보안">해킹&정보보안</option>
  			<option value = "데이터베이스">데이터베이스</option>
  			<option value = "클라우드">클라우드</option>
  		</select>
  	</div>
    <div class="container" style = "float : left; margin-top:10px;">
   		<table border=1  width="110%">
		  <tr>
		     <td>
				<h2><a href="https://www.dataq.or.kr/www/main.do" class="card-link" target="_blank">SQLD</a>
				<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">D-39</span>
                </button>
                </h2>
				<hr/>
				<h6>공인 자격 제 2022-02호 <span class = "sqldinfo">접수기간 : 05.02(월)~05.06(금)</span></h6>
				<h6>분류 : 데이터베이스 &nbsp;&nbsp;&nbsp;&nbsp; <span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실합격률 : 30%</span></h6> 
				<h6>시험일 : 2022.05.28(토) <span class = "sqldinfo"><a href="https://www.dataq.or.kr/www/main.do" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6>
				<h6>시험시간 : 10:00 ~ 11:30 <span class = "sqldinfo"> <a href="https://quizeey.com/sqlp-developer" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
				<span class = "likebutton">
					<i class="fa-regular fa-heart"></i>
					<span class = "writebutton">
					<i class="fa-solid fa-pen"></i>
					</span>
				</span>
				</span></h6>
		     </td>
		  </tr>
		</table>
    </div>
    
    <div class="container" style = "float : left; margin-top:20px;">
   		<table border=1  width="110%">
		  <tr>
		     <td>
				<h2><a href="https://www.q-net.or.kr/crf005.do?id=crf00505&jmCd=1320" class="card-link" target="_blank">정보처리기사</a>
				<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">D-39</span>
                </button>
                </h2>
				<hr/>
				<h6>공인 자격 제 2022-01호 <span class = "sqldinfo">접수기간 : 03.28(월)10:00 ~ 03.31(목)18:00</span></h6>
				<h6>분류 : 정보처리분야 &nbsp;&nbsp;&nbsp;&nbsp; <span class = "sqldinfo">&nbsp;실합격률 : 필기=57.3% , 실기=17.7%</span></h6> 
				<h6>필기시험일 : 2022.04.24(일) <span id = "informationCerti1"><a href="http://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6>
				<h6>실기시험일 : 2022.07.24(일)~2022.08.05(금) <span id = "informationCerti2"> <a href="https://www.comcbt.com/xe/iz" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
				<span class = "likebutton">
					<i class="fa-regular fa-heart"></i>
					<span class = "writebutton">
					<i class="fa-solid fa-pen"></i>
					</span>
				</span>
				</span></h6>
		     </td>
		  </tr>
		</table>
    </div>
        <div class="container" style = "float : left; margin-top:20px;">
   		<table border=1  width="110%">
		  <tr>
		     <td>
				<h2><a href="https://docs.microsoft.com/ko-kr/learn/certifications/exams/az-900" class="card-link" target="_blank">MS Azure</a>
				<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">D-39</span>
                </button>
                </h2>
				<hr/>
				<h6>공인 자격 제 2022-02호 <span class = "sqldinfo">접수기간 : 상시</span></h6>
				<h6>분류 : 클라우드 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실합격률 : 70%</span></h6> 
				<h6>응시료 : $69 <span id = "informationMS1"><a href="https://docs.microsoft.com/ko-kr/learn/certifications/exams/az-900" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6>
				<h6>실기 시간 : 60분, 합격점 : 700/1000점 <span id = "informationMS2"> <a href="https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWSRk3" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
				<span class = "likebutton">
					<i class="fa-regular fa-heart"></i>
					<span class = "writebutton">
					<i class="fa-solid fa-pen"></i>
					</span>
				</span>
				</span></h6>
		     </td>
		  </tr>
		</table>
    </div>
        <div class="container" style = "float : left; margin-top:20px;">
   		<table border=1  width="110%">
		  <tr>
		     <td>
				<h2><a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank">네트워크 관리사</a>
				<button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">D-39</span>
                </button>
                </h2>
				<hr/>
				<h6>공인 자격 제 2022-01호 <span class = "sqldinfo">접수기간 : 2022.09.27(화) ~ 2022.09.30(금)</span></h6>
				<h6>분류 : 네트워크&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실합격률 : 20%</span></h6> 
				<h6>시험일 : 2022.10.30(일)<span class = "sqldinfo"><a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6>
				<h6>합격발표 : 2022.11.01(화)<span id = "networkInfo"> <a href="https://www.icqa.or.kr/cn/board/dataroom" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
				<span class = "likebutton">
					<i class="fa-regular fa-heart"></i>
					<span class = "writebutton">
					<i class="fa-solid fa-pen"></i>
					</span>
				</span>
				</span></h6>
		     </td>
		  </tr>
		</table>
    </div>
 <%--  <section class="tag-section" id="tag-curation">
	
          <div class="tab-pane fade show active" id="license" role="tabpanel" aria-labelledby="license-tab">
            <div class="card-deck">

              <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/images/database.PNG" class="card-img-top" alt="...">
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
              <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/images/os.PNG" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">정보 처리 기사</h5>
                 <p class="card-text">필기 시험일 : 2022.04.24 (일)<br>
                 실기 시험일 : 2022.07.24 (일) ~ 2022.08.05 (금)</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">접수기간 : 03.28 (월) 10:00 ~ 03.31 (목) 18:00</li>
                 <li class="list-group-item">실합격률 : 필기 = 57.3% , 실기 = 17.7%</li>
                 <li class="list-group-item">난이도 : 상</li>
               </ul>
               <div class="card-body">
                 <a href="http://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" class="card-link" target="_blank">접수하기</a>
                 <a href="https://www.comcbt.com/xe/iz" class="card-link" target="_blank">기출 문제</a>
                 <a href="${contextPath}/member/certificateInfo.do" class="card-link">후기</a>
               </div>
              </div>
              <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/images/cloud.PNG" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">MS Azure</h5>
                 <p class="card-text">응시료 : $69<br>
                 실기 시간 : 60분<br> 합격점 : 700/1000점<br>시험내용 : 클라우드 개념 <br> 핵심 Azure 서비스<br>보안, 개인 정보 보호, 규정 준수 및 신뢰</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">접수기간 : 상시</li>
                 <li class="list-group-item">실합격률 : 70%</li>
                 <li class="list-group-item">난이도 : 하</li>
               </ul>
               <div class="card-body">
                 <a href="https://docs.microsoft.com/ko-kr/learn/certifications/exams/az-900" class="card-link" target="_blank">접수하기</a>
                 <a href="https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWSRk3" class="card-link" target="_blank">기출 문제</a>
                 <a href="#" class="card-link">후기</a>
               </div>
              </div>
             <div class="card" style="width: 18rem;">
               <img src="${contextPath}/resources/images/network.PNG" class="card-img-top" alt="...">
               <div class="card-body">
                 <h5 class="card-title">네트워크 관리사</h5>
                 <p class="card-text">공인 자격 제 2022-01회
                  <br>시 험 일 : 2022.10.30 (일)
                  <br>합 격 발 표 : 2022.11.01(화)</p>
               </div>
               <ul class="list-group list-group-flush">
                 <li class="list-group-item">접 수 기 간 : 2022.09.27(화) ~ 2022.09.30(금)</li>
                 <li class="list-group-item">실 합 격 률 : 20%</li>
                 <li class="list-group-item">난이도 : 상</li>
               </ul>
               <div class="card-body">
                 <a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank">접수하기</a>
                 <a href="https://www.icqa.or.kr/cn/board/dataroom" class="card-link" target="_blank">기출 문제</a>
               	 <a href="https://kin.naver.com/qna/detail.naver?d1id=7&dirId=70109&docId=414162587&qb=7KeR6rCA6rOg7Iu264uk&enc=utf8&section=kin.ext&rank=1&search_sort=0&spq=0" class="card-link">후기</a>
               </div>
              </div>
            </div>
          </div>
  </section> --%>
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