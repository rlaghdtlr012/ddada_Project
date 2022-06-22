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
	<title>아마존AWS</title>
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
     	line-height : 30px;
     	width : 1050px;
     	margin-top : 10px;
     	margin-bottom : 5px;
     	}
	</style>
  </head>
  <body>
  	<div class = "certificate">
		<h3>자격증 정보 ></h3>
  	</div>
    <div class="container" id = "Programming" style = "float : left; margin-top:10px;">
   		<table>
		  <tr>
		     <td style = "width : 1100px;">
				<h2><a href="https://www.icqa.or.kr/cn/" class="card-link" target="_blank">아마존 AWS</a>
					<span class = "writebutton" style = "float : right;">
						<i class="fa-solid fa-pen"></i>
					</span>
                </h2>
				<hr/>
				asdasdasdasdasdasadas
		     </td>
		  </tr>
		</table>
	<table style = "border:1 align=center width=80%;">
		<c:forEach var = "a" items = "${takeCertiList}">
			<tr>
				<td>${a.cert_num}</td>
				<td>${a.cert_name}</td>
				<td>${a.cert_grade}</td>
				<td>${a.cert_testType}</td>
				<td>${a.subject_code}</td>
				<td>${a.subject_name}</td>
				<td>${a.cert_company}</td>
				<td>${a.cert_testDate}</td>
				<td>${a.cert_fee}</td>
				<td>${a.cert_passratio}</td>
			</tr>
		</c:forEach>
	</table>
    </div>
</body>
</html>