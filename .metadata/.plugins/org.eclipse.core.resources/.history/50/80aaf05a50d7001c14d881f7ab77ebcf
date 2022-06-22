<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ASK</title>

<link rel="stylesheet" href="css/bootstrap.css">
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css" /> -->
</head>
<body>
<!-- content start -->   
      <div class="col" >
      
      <br>
      <br>

            <h1>1:1고객문의</h1>
                <hr>
                       <div>
                                <h2>고객 한분 한분의 목소리에도 귀 기울이겠습니다</h2>
                                
                                <br>
                                
                                <blockquote>
                                <P style="text-align:left">
                                    *수강중인 강의 관련자료는 홈페이지 내 수강관리  – 해당강좌 페이지에서 다운로드
                                    가능합니다. <br />
                                    * 환급관련 업무는 Ddada (대표번호:7942-7942)로 문의 주시기 바랍니다.<br /><br />
                                </p>
                                </blockquote>
                        
                        
                        <strong><p style="text-align:left">개인정보의 수집 및 이용에 관한 동의</p></strong>
                        <p style="text-align:left">
                        1. Ddada 홈페이지는 고객 문의사항 처리를 위하여 아래와 같이 개인정보를 수집ㆍ이용 합니다. <br /><br />
                        개인정보 수집ㆍ이용 내역 <br />
                                <table class="table_01" width="100%" style = "width : 886px; border : 1px solid #bcbcbc;">
                                    <!-- <caption class="blind">
                                        수집항목,수집 및 이용목적,보유 및 이용기간 -->
                                    </caption>
                                    
                                    <tr style = "border-bottom : 1px solid #bcbcbc; background-color : #cde9ff">
                                        <th style = "border-right : 1px solid #bcbcbc; padding-left : 20px;">수집항목</th>
                                        <th style = "border-right : 1px solid #bcbcbc; padding-left : 20px;">수집 및 이용목적</th>
                              			<th style = "padding-left : 20px;">보유 및 이용기간</th>
                                    </tr>
                                    
                                    <tr>
                                        <td style = "border-right : 1px solid #bcbcbc; padding-left : 20px;"align="left">이메일주소</td>
                                        <td style = "border-right : 1px solid #bcbcbc; padding-top : 11px; padding-left : 20px;"align="left"><strong><u>고객 문의사항 처리</u></strong></p>
                              			<td style = "padding-top : 11px; padding-left : 20px;"align="left"><strong><u>목적 달성 즉시 파기</u></strong></p>
                                    </tr>
                                    
                                </table>
                        </p>
                        
                        
                        <p  style="text-align:left">
                        위의 개인정보 수집ㆍ이용에 대한 동의를 거부할 권리가 있습니다.<br>
                        그러나 동의를 거부할 경우 문의사항에 대한 답변이 제한될 수 있습니다
                        <br>
                        <br>
                        2. Ddada 홈페이지는 만 14세 미만 정보주체의 개인정보를 처리하지 않으므로 만 14세 미만의 아동은 1:1문의를 할 수 없습니다.
                        <br>
                        <br>
                           <input type="checkbox" id="ckva1" name="ckva1" v-model="ckva_1" style="width:20px"> &nbsp; 본인은 만 14세 이상 입니다.
                        <br>
                           <input type="checkbox" id="ckva2" name="ckva2" v-model="ckva_2" style="width:20px"> &nbsp; 위와 같이 개인정보를 수집ㆍ이용하는데 동의합니다.
                        <br>
                        <hr>
                        </p>
                        
                        <br>
                        
                        
                      </div>
                            
                            
                            
                            
                            <div class="clear">
                            </div>
                            <div class="con">
                                <table class="table_01">
                                    <caption class="blind">
                                        이메일, 분류선택, 제목, 내용입력으로 구성된 1:1 고객문의 등록
                                    </caption>
                                    <colgroup>
                                        <col width="100px" />
                                        <col width="600px" />
                                    </colgroup>
                                    
                                    <tr class="block1" style="display: none;">
                                        <th scope="row" title="성명">ㆍ성명</th>
                                        <td>
                                            <input type="text" id="txtName" name="txtName" style="width:200px;" v-model="name" title="성명" />
                                        </td>
                                    </tr>
                                    
                                    <tr class="block2">
                                        <th scope="row">ㆍ이메일</th>
                                        <td>
                                            
                                                <input type="text" id="txtEmail1" name="txtEmail1"  title="이메일 아이디 (직접 입력)" />&nbsp;@&nbsp;
                                                <input type="text" id="txtEmail2" name="txtEmail2" title="이메일 도메인 주소 (직접 입력)" />
                                            
                                            
                                                <select id="ddlEmail" name="ddlEmail" title="이메일 도메인 주소 (선택 입력)" class="styled" onChange="f_email(); return false;">
                                                    <option selected="selected" value="직접입력">직접입력</option>
                                                    <option value="nate.com">nate.com</option>
                                                    <option value="naver.com">naver.com</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="daum.net">daum.net</option>
                                                    <option value="hotmail.com">hotmail.com</option>
                                                </select>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr class="block4">
                                        <th scope="row">ㆍ분류선택</th>
                                        <td>
                                            
                                                <select id="ddlType" class="styled" style="width:300px;" v-model="type" title="분류 선택">
                                                    <option value="" selected>선택</option>
                                                    <!-- <option v-for="(val,key) in _types.qnaTypesKOR" v-bind:key="key" v-bind:value="key">{{val}}</option> -->
                                                    <option value="A001">강좌 관련</option>
                                                    <option value="A001">환불 관련</option>
                                                    <option value="A001">기타</option>
                                                </select>
                                            
                                        </td>
                                    </tr>
                                    
                                    
                                    <tr class="block5">
                                        <th scope="row">ㆍ제목</th>
                                        <td>
                                            <input type="text" id="txtTitle" name="txtTitle" v-model="title" title="제목" style="width:99%;" />
                                        </td>
                                    </tr>
                                    <tr class="enter">
                                        <th scope="row">ㆍ내용입력</th>
                                        <td>
                                            <textarea id="txtContents" name="txtContents" rows="20" cols="20" style="width:99%;" v-model="contents" title="내용 입력" ></textarea>
                                            * 문의 내용 기재 시 성함, 연락처, 소속 등의 개인 정보는 기재하지 말아주시기 바랍니다.
                                        </td>
                                    </tr>
                                </table>

                            </div>
                            
                            
                           
                            <div class="btn_area" align="center">
                                <a href="${contextPath}/board/ask2.do" class="qna_btn" v-on:click.stop.prevent="save()">
						          <button class="btn btn-outline-success my-2 my-sm-0" type="submit"
						                  style="border-color: black; background-color: rgb(186, 222, 248); color: black;">
						                  등록</button>
                                </a>
                            </div>
               </div>
</body>
</html>