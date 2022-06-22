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
   <title>자격증 정보</title>
<%--     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="${contextPath}/resources/bs_classroom.css">
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- <script src="bootstrap.min.js"></script> --> --%>
   <style>
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
      .container {
        width: 80%;
        margin: 2px auto;
        text-align:left;
        border: 1px solid #bcbcbc;
        float : relative;
        border-radius : 15px 15px 15px 15px;
         }
        h2{
        width : 80%;
        margin : 2px;
        }
   </style>
   <script type="text/javascript">
      function counterSqld(){
         var dday = new Date("2022.05.29").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddaySqld').text("D-"+d)
         });
      }

      counterSqld();
      function counterProgramming(){
         var dday = new Date("2022.07.02").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddayProgramming').text("D-"+d)
         });
      }
      counterProgramming();
      function counterLinux(){
         var dday = new Date("2022.07.26").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddayLinux').text("D-"+d)
         });
      }
      counterLinux();
      function counterNetwork(){
         var dday = new Date("2022.08.21").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddayNetwork').text("D-"+d)
         });
      }
      counterNetwork();
      function counterInformationSecure(){
         var dday = new Date("2022.06.25").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddayInformationSecure').text("D-"+d)
         });
      }
      counterInformationSecure();
      function counterInformationManagement(){
         var dday = new Date("2022.07.02").getTime(); //디데이
         setInterval(function(){
            var now = new Date(); //현재 날짜 가져오기
            var distance = dday - now + 1;
            var d = Math.floor(distance / (1000 * 60 * 60 * 24));
            $('#ddayInformationManagement').text("D-"+d)
         });
      }
      counterInformationManagement();
   </script>
  </head>
  <body>
     <div class = "certificate">
      <!-- <h3 style="line-height:50px;">자격증 > </h3> -->
      <br>
      <h3 class="myDD_category" style="text-align:left;"> 자격증 ></h3>
      <br>
        <select name = "certi" id = "certi" style = "width : 200px;">
           <option value = "" selected = "selected">분야선택</option>
           <option value = "Programming">정보기술</option>
           <option value = "OS" >OS</option>
           <option value = "Network">네트워크</option>
           <option value = "Secure">해킹&정보보안</option>
           <option value = "Database">데이터베이스</option>
           <option value = "Cloud">클라우드</option>
           <option value = "etc">기타</option>
        </select>
     </div>
    <div class="container" id = "sqld" style = "float : left; margin-top:10px;">
         <table  class = "Database">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/sqld.do" class="card-link">SQLD(P)</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddaySqld" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 데이터베이스 <span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수기간 : 05.02(월)~05.06(금)</span></h6><br>
            <h6>시험일 : 2022.05.28(토) <span class = "sqldinfo"><a href="https://www.dataq.or.kr/www/main.do" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>시험시간 : 10:00 ~ 11:30 <span class = "sqldinfo" style = "margin-left : 295px;"> <a href="https://quizeey.com/sqlp-developer" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a></span>
            <span class = "linkButton">
               <span class = "likebutton unchecked" id = likeBut>
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
    <div class="container" id = "informationProcessing" style = "float : left; margin-top:20px;">
         <table  class = "Programming">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/informationProcessing.do" class="card-link">정보처리기사</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" id = "ddayProgramming" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 정보기술 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수기간 : 06.07(월)10:00 ~ 06.10(목)18:00</span></h6><br>
            <h6>필기시험일 : 2022.07.02(일) <span id = "informationCerti1"  style = "margin-left : 263px;"><a href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" class="card-link" target="_blank">&nbsp;&nbsp;<u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 2022.09.03(토)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span id = "informationCerti2"> <a href="https://www.comcbt.com/xe/iz" class="card-link" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>기출문제(링크클릭)</u></a>
            <span class = "linkButton">
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
        <div class="container" id = "MSAzure" style = "float : left; margin-top:20px;">
         <table  class = "Cloud">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/MSAzure.do" class="card-link">MS Azure</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; margin-top : 5px; padding: 0px; box-shadow: none;">
                    <span class="badge badge-light" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">상시접수</span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 클라우드 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수기간 : 상시</span></h6><br>
            <h6>응시료 : $69 <span id = "informationMS1"><a href="https://docs.microsoft.com/ko-kr/learn/certifications/exams/az-900" class="card-link" target="_blank">&nbsp;&nbsp;<u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>시험 시간 : 60분, 합격점 : 700/1000점 &nbsp;&nbsp;<span id = "informationMS2" style = "margin-left : 200px;"> <a href="https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWSRk3" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
        <div class="container" id = "networkManage"style = "float : left; margin-top:20px;">
         <table  class = "Network">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/networkManagement.do" class="card-link">네트워크 관리사</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 네트워크&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수기간 : 2022.07.19(화) ~ 2022.07.22(금)</span></h6><br>
            <h6>필기시험일 : 2022.08.21(일)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id = "informationMS2"><a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 2022.09.25(일)<span style = "margin-left : 278px;" id = "informationMS2"> <a href="https://www.icqa.or.kr/cn/board/dataroom" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
    <div class="container" id = "linux" style = "float : left; margin-top:20px;">
         <table  class = "OS">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/linuxMaster.do" class="card-link">리눅스 마스터</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayLinux" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 운영체제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class = "sqldinfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;접수기간 : 2022.07.25(월) ~ 2022.08.03(수)</span></h6><br>
            <h6>1차시험일 : 2022.7.26(일)<span style = "margin-left : 292px;" id = "informationMS2"><a href="https://www.ihd.or.kr/introducesubject1.do" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>2차시험일 : 2022.9.03(토)<span style = "margin-left : 290px;"id = "informationMS2"> <a href="https://www.comcbt.com/xe/r2" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
    <div class="container" id = "informationSecure" style = "float : left; margin-top:20px;">
         <table  class = "Secure">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/informationSecure.do" class="card-link">정보보안 산업기사</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayInformationSecure" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 정보보안 <span style = "margin-left : 370px;" class = "sqldinfo">접수기간 : 2022.05.31(화) ~ 2022.06.03(금)</span></h6><br>
            <h6>필기시험일 : 2022.06.25(토)<span style = "margin-left : 280px;"><a href="https://www.cq.or.kr/qh_quagm05_001.do" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 2022.08.13(토)<span style = "margin-left : 277px;"> <a href="https://www.q-net.or.kr/cst006.do?id=cst00601&code=1203&gSite=&gId=" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
    <div class="container" id = "informationManage" style = "float : left; margin-top:20px;">
         <table  class = "Programming">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/informationManage.do" class="card-link">정보관리기술사</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayInformationManagement" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 정보기술 <span style = "margin-left : 370px;">접수기간 : 2022.06.08(수) ~ 2022.06.13(월)</span></h6><br>
            <h6>필기시험일 : 2022.07.02(토)<span style = "margin-left : 280px;"><a href="https://www.q-net.or.kr/rcv001.do?id=rcv00103&gSite=&gId=" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 2022.10.01(토)<span style = "margin-left : 277px;"> <a href="https://q.fran.kr/%EC%8B%9C%ED%97%98/%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC%EA%B8%B0%EC%88%A0%EC%82%AC" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
    <div class="container" id = "comUse" style = "float : left; margin-top:20px;">
         <table  class = "etc">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/computerUse.do" class="card-link">컴퓨터활용능력</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">상시접수</span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 기타 <span style = "margin-left : 395px;">접수기간 : 상시가능</span></h6><br>
            <h6>필기시험일 : 매주 주말<span style = "margin-left : 321px;"><a href="https://license.korcham.net/indexmain.jsp" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 매주 주말<span style = "margin-left : 319px;"> <a href="https://license.korcham.net/co/examguide02.do?cd=0103&mm=21" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
     <div class="container" id = "word" style = "float : left; margin-top:20px;">
         <table  class = "etc">
        <tr>
           <td style = "width : 1100px;">
            <h2><a href="${contextPath}/board/word.do" class="card-link">워드프로세서</a>
            <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                  margin: 0px; padding: 0px; box-shadow: none;">
                   <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);">상시접수</span>
                </button>
                </h2>
            <hr/>
            <h6>분류 : 기타 <span style = "margin-left : 395px;">접수기간 : 상시가능</span></h6><br>
            <h6>필기시험일 : 매주 주말<span style = "margin-left : 321px;"><a href="https://license.korcham.net/indexmain.jsp" class="card-link" target="_blank"><u>접수하기(링크클릭)</u></a></span></h6><br>
            <h6>실기시험일 : 매주 주말<span style = "margin-left : 319px;"> <a href="https://license.korcham.net/co/examguide02.do?cd=0102&mm=22" class="card-link" target="_blank"><u>기출문제(링크클릭)</u></a>
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
<script>
   $("#certi option:selected").val();
   $("select[name=certi]").val();
   $("#certi option").index($("#certi option:selected"));
   $(document).ready(function() {
        $('#certi').change(function() {
          var result = $('#certi option:selected').val();
          if (result == 'Programming') {
             $('#informationProcessing, #informationManage').show();
            $('#comUse, #word, #sqld, #MSAzure, #networkManage, #linux, #informationSecure, #amazon').hide();
          }
          else if (result == 'Database') {
            $('#sqld').show();
            $('#comUse, #word, #informationProcessing, #MSAzure, #networkManage, #linux, #informationSecure, #amazon, #informationManage').hide();
          }
          else if (result == 'Cloud') {
           $('#MSAzure,#amazon').show();
           $('#comUse, #word, #sqld, #informationProcessing, #networkManage, #linux, #informationSecure, #informationManage').hide();
         }
          else if (result == 'Network') {
           $('#networkManage').show();
           $('#comUse, #word, #sqld, #informationProcessing, #MSAzure, #linux, #informationSecure, #amazon, #informationManage').hide();
         }
          else if (result == 'OS') {
              $('#linux').show();
              $('#comUse, #word, #sqld, #informationProcessing, #MSAzure, #networkManage, #informationSecure, #amazon, #informationManage').hide();
         }
          else if (result == 'Secure') {
              $('#informationSecure').show();
              $('#comUse, #word, #sqld, #informationProcessing, #MSAzure, #networkManage, #linux, #amazon, #informationManage').hide();
         }
          else if (result == '') {
              $('#informationSecure, #comUse, #word, #sqld, #informationProcessing, #MSAzure, #networkManage, #linux, #amazon, #informationManage').show();
         }
          else{
            $('#comUse, #word').show();
            $('#sqld, #informationProcessing, #MSAzure, #networkManage, #linux, #informationSecure, #amazon, #informationManage').hide();
          }
        }); 
      });
</script>

</body>
</html>