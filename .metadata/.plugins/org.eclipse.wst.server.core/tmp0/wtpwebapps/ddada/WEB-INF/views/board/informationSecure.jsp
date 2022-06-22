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
   <title>정보보안산업기사</title>
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
                  <h2><a href="#" class="card-link" target="_blank">정보보안산업기사</a>
                     <a class="btn btn-primary" href="https://www.q-net.or.kr/cst006.do?id=cst00601&code=1203&gSite=&gId=" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.cq.or.kr/qh_quagm05_001.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ정보보안산업기사이란?
                     </h4>
                     <p>IT 및 정보통신 기술에 대한 기초 이론 및 실무지식을 바탕으로 정보보안 시스템 및 솔루션 개발, 주요 운영체제 및 네트워크 장비, 정보보안 장비에 대한 운영 및 관리 직무를 수행하며, 정보보안 기사의 업무를 보조하는 역할을 담당</p><br>
                  </div>
                  <div class="certiExplain">
                  <h4 class="text-header">o진로 및 전망</h4>
                     <ul>
                        <li>2008년 기준 정보보안 전문 업체 종사자 수는 연구 및 개발직 2,167명, 관리직 1,740명, 영업직 738명, 기타 관련직 361명으로 총 5,006명</li>
                        <li>학점은행제 학점인정 : 1급 14학점, 2급 6학점</li>
                        <li>300여개 공공기관·공기업 등 채용·승진 우대</li>
                     </ul>
                  </div><br>
                  <div class = "certiExplain">
                           <h4 class = text-header>
                              ㅇ수행직무
                           </h4>
                           <p>IT 및 정보통신 기술에 대한 이론 및 실무 지식을 바탕으로 정보보안 시스템 및 솔루션 개발, 주요 운영체제 및 네트워크 장비, 정보보안 장비에 대한 운영 및 관리, 조직의 정보보안정책의 수립과 대책수립 및 관리, 정보보호 관련 법규 적용 등의 직무를 수행</p><br>
                           <p>정보보안 전문 업체 종사 인력 5,006명은 물론이고, 법률에 의하여 지정되어 활동하고 있는 개인정보 관리책임자, ISMS(정보보호관리체계인증)를 취득한 52개 기업과 안전진단 대상기업 250곳의 보안관련 담당자, 일반기업의 정보보안 담당자, 정보보안 관련 학과 재학생 2,367명 중 잠재 응시자 등을 합치면 자격 취득자의 수요는 약 9,000명 이상이 될 것으로 판단</p><br>
                           <p>매년 1,000명 이상이 향후 5년 안에 자격을 취득할 것으로 예상되고, 초기에는 많은 수의 인원이 해당 자격시험을 응시할 것으로 예상</p><br>
                           <p>정보보안 산업은 정부 차원에서 2008년부터 2013년까지 총 968억원의 예산을 투입하여 각 과제별로 R&D를 적극 지원할 예정</p><br>
                           <p>정보보안기사/정보보안산업기사 취득자는 기업 및 정부의 보안전문가로서, 국가기관(국정원 NCSC, 한국인터넷진흥원 등), 사이버 부대(기무사, 국방부 등),기업의 침해사고대응팀(CERT), 금융업종의 기관(금융결제원, 금융보안연구원, 시중 은행 등), 대형 포털(네이버, 다음 등), 온라인게임 및 모바일게임 개발 업체, 정보보안전문업체(백신, 컨설팅, 보안관제 등) 등에 활용이 가능</p><br>
                           <p>10년 후 직업전망이 밝은 직업목록 상위 20개 직업 중 하나로 포함되었으며, 향후 정보보안전문가의 고용은 증가할 것으로 예상</p><br>
                           <p>정보보안 분야 종사자의 평균소득은 297만원으로, 전체직업군 평균인 191만원보다 55% 이상 높은 수준</p><br>
                        </div>
                        <div class = "certiExplain">
                           <h4 class = text-header>
                              ㅇ주관처
                           </h4>
                           <p><a href="http://kisq.or.kr" class="card-link" target="_blank">한국인터넷진흥원(바로가기)</a></p><br>
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
                           <td><b>정보보안산업기사</b></td>
                            <td>18800원</td>
                            <td>20200원</td>
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
                 <td style = "width : 1200px; border-left : none;">
                  <h2><a href="#" target="_blank">정보보안산업기사</a>
                     <a class="btn btn-primary" href="https://www.q-net.or.kr/cst006.do?id=cst00601&code=1203&gSite=&gId=" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.cq.or.kr/qh_quagm05_001.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2>
                  <hr/>
                  
                  <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ필기 시험과목
                     </h4>
                  </div>
               <div>
               <table class="table_view_01 ty3 mt20" summary="등급, 시험방법, 시험과목, 출제형태, 시험시간을 제공하는 시험과목 목록입니다" cellspacing="0" cellpadding="0" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; height : 700px; text-align : center;">
                     <colgroup>
                        <col width="120px">
                        <col width="120px">
                        <col width="140px;">
                        <col width="200px;">
                        <col width="220px;">
                        
                     </colgroup>
                     <thead>
                        <tr style = "background-color : #6ca8d8;">
                           <th scope="col">필기 과목명</th>
                           <th scope="col">출제 문제수</th>
                           <th scope="col">주요항목</th>
                           <th scope="col">세부항목(출제기준)</th>
                           <th scope="col" class="last-item">세세항목</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td style = "background-color : #cde9ff;" rowspan="2" class="bg_no border02">시스템 보안</td>
                           <td rowspan="2">20문</td>
                           <td class="txt_left">1. 클라이언트 보안</td>
                           <td>1. 클라이언트 보안 관리</td>
                           <td class="last-item">1. 운영체제 이해 및 관리<br>2. 인증, 접근통제의 이해 및 관리<br>3. 파일시스템 이해 및 관리<br>4. 공격기술의 이해 및 대응관리<br>5. 최신 유,무선 단말기의 보안(공격기술 및 대응기술, 보안이슈 등) 아해 및 관리</td>
                        </tr>
                        <tr>
                           <td class="txt_left">2. 서버 보안</td>
                           <td>1. 서버 보안 관리</td>
                           <td class="last-item">1. 운영체제 이해(레지스터, 웹브라우저, 보안도구 등)<br>2. 인증·접근통제 이해 및 관리<br>3. 파일시스템 이해 및 관리<br>4. 공격 및 대응기술 이해 및 관리<br>5. 백업기술 이해 및 관리</td>
                        </tr>
                        <tr class="odd">
                           <td style = "background-color : #cde9ff;" rowspan="10" class="bg_no border02">네트워크 보안</td>
                           <td rowspan="10">20문</td>
                           <td class="txt_left" rowspan="2">1. 네트워크 일반</td>
                           <td>1. 네트워크 개념 이해</td>
                           <td class="last-item">1. 네트워크의 개요(OSI 7 Layers 및TCP, UDP, IP, ICMP 등 네트워크 프로토콜)<br>2. 네트워크의 종류별 동작 원리 및특징(Ethernet, LAN, Intranet, Extranet, Internet, CAN, PAN, HAN, SDN 등)<br>3. 네트워크 주소의 개요 (IPv4, IPv6 Addressing, Subnetting, CIDR,VLSM, 데이터 캡슐화, Multicast, Broadcast 등)<br>4. 네트워크 주소의 종류별 동작원리 및 특징(공인주소, 사설주소, 정적주소, 동적주소, NAT 등)<br>5. 포트(Port)의 개요</td>
                        </tr>
                        <tr>
                           <td>2. 네트워크의 활용</td>
                           <td class="last-item">1. 네트워크 장비별 원리 및 특징 (NIC, Router, Bridge, Switch, Hub, Repeater, Gateway, VLAN 등)<br>2. 네트워크 공유(Share)의 동작원리와 특징(Netbios, Netbeui, P2P 등)<br>3. 유‧무선 네트워크 서비스의 개요와 종류별 특징<br>4. 네트워크 도구(ping, arp, rarp, traceroute, netstat, tcpdump 등)의 이해 및 활용</td>
                        </tr>
                        <tr class="bg02">
                           <td rowspan="6">2. 네트워크 기반 공격기술의 이해 및 대응</td>
                           <td class="txt_left">1.서비스 거부(Dos) 공격</td>
                           <td>1. 서비스 거부(DoS) 공격 유형별 동작원리 및 특징<br>2. 각종 서비스 거부(DoS) 공격에 대한대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 분산 서비스 거부(Dos) 공격</td>
                           <td>1. 분산 서비스 거부(DDoS) 공격 유형별 동작원리 및 특징<br>2. 각종 분산 서비스 거부(DDoS) 공격에 대한대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">3. 스캐닝</td>
                           <td>1. 포트 및 취약점 스캐닝의 동작원리와 특징<br>2. 포트 및 취약점 스캐닝의 대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">4. 스푸핑 공격</td>
                           <td>1. 스푸핑 공격의 동작원리 및 특징(Spoofing)<br>2. 스푸핑 공격의 대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">5. 스니핑 공격</td>
                           <td>1. 스니핑 공격의 동작원리 및 특징 (Sniffing, Session Hijacking 등)<br>2. 스니핑 공격의 대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">6. 원격접속 공격</td>
                           <td>1. 원격접속 공격의 동작원리 및 특징 (Trojan, Exploit 등)<br>2. 원격접속 공격의 대응 방법</td>
                        </tr>
                        <tr class="bg02">
                           <td rowspan="2">3. 대응기술 및 응용</td>
                           <td class="txt_left">1. 보안 프로토콜 이해</td>
                           <td>1. 보안 프로토콜별 동작원리 및 특징(SSL, IPSec 등)<br>2. 보안 프로토콜 응용 사례</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 보안 솔루션 이해</td>
                           <td>1.  보안 솔루션의 종류별 동작원리 및 특징 (Firewall, IDS, IPS, VPN, ESM, UTM, NAC, 역추적시스템 등)<br>2. 보안 솔루션의 활용(Snort, 탐지툴, Pcap 등)<br>3. 로그 분석 이해 및 응용<br>4. 패킷 분석 이해 및 응용</td>
                        </tr>
                        <tr class="odd">
                           <td style = "background-color : #cde9ff;" rowspan="6" class="bg_no border02">어플리케이션 보안</td>
                           <td rowspan="6">20문</td>
                           <td class="txt_left" rowspan="5">1. 인터넷 응용 보안</td>
                           <td>1. FTP 보안</td>
                           <td class="last-item">1. FTP 개념<br>2. FTP 서비스 운영<br>3. FTP 공격 유형<br>4. FTP 보안방안</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 메일 보안</td>
                           <td>1. 메일 개념<br>2. 메일 서비스 운영<br>3. 메일 서비스 공격유형(스팸 메일, 악성 메일, 웜 등)과 대책<br>4. 메일 보안 기술</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">3. 웹 보안</td>
                           <td>1. 웹 개념<br>2. 웹 서비스 운영<br>3. 웹 서비스 장애 분석 및 대응<br>4. 웹 서비스공격 유형<br>5. 웹 보안 기술</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">4. DNS 보안</td>
                           <td>1. DNS 개념<br>2. DNS 서비스 운영<br>3. DNS 공격유형<br>4. DNS 보안 기술</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">5. DB 보안</td>
                           <td>1. DB 보안 개념<br>2. DB 공격 유형<br>3. DB 보안 기술</td>
                        </tr>
                        <tr class="bg02">
                           <td>2. 전자 상거래 보안</td>
                           <td class="txt_left">1. 전자상거래 보안 기술</td>
                           <td>1. 전자지불 수단별 보안 요소<br>2. 전자상거래 보안 프로토콜<br>3. 전자상거래 인증기술<br>4. 무선플랫폼에서의 전자상거래 보안</td>
                        </tr>
                        <tr class="odd">
                           <td style = "background-color : #cde9ff;" rowspan="8" class="bg_no border02">정보보안 일반</td>
                           <td rowspan="8">20문</td>
                           <td class="txt_left" rowspan="4">1. 보안요소 기술</td>
                           <td>1.인증</td>
                           <td class="last-item">1. 사용자 인증 방식 및 원리<br>2. 메시지에 대한 인증 방식 및 핵심기술<br>3. 디바이스에 대한 인증 기술의 원리</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 접근통제</td>
                           <td>1. 접근통제 정책의 이해 및 구성 요소<br>2. 접근통제 정책의 특징 및 적용 범위(임의적, 강제적, 역할 기반 등)<br>3. 접근통제 기법과 각 모델의 특징</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">3. 키 분배 프로토콜</td>
                           <td>1. 대칭 키 기반 분배 방식의 원리 및 운영<br>2. 공개 키 기반 분배 방식의 원리 (Diffie-Hellman, RSA, ECC 등)</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">4. 전자서명</td>
                           <td>1. 전자인증서 구조 및 주요 특징<br>2. 전자서명의 이해 (종류, 보안 요구 조건, 특징, 서명 방식 등)<br>3. PKI 구성방식 및 관리(계층구조, 네트워크 구조, 복합형 구조 등)<br>4. CRL 사용 목적 및 구조<br>5. 전자서명을 이용한 최신 응용프로그램의 특징 및 이해</td>
                        </tr>
                        <tr class="bg02">
                           <td rowspan = "2">2. 암호학</td>
                           <td class="txt_left">1. 암호 알고리즘</td>
                           <td>1. 암호 관련 용어 및 암호 시스템의 구성<br>2. 암호 공격의 유형별 특징<br>3. 대칭키 암호시스템 특징 및 활용(종류, 구조, 운영 모드, 공격 기술 등)<br>4. 공개키 암호시스템의 특징 및 활용(종류, 구조, 특징)<br>5. 암호 알고리즘을 이용한 최신 응용기술</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 해시함수</td>
                           <td>1. 해시함수의 개요 및 요구사항<br>2. 해시함수별 특징 및 구조<br>3. 메시지 인증 코드(MAC)의 원리 및 구조</td>
                        </tr>
                        <tr class="bg02">
                           <td rowspan = "2">3. 정보보호 및 개인정보보호 이해</td>
                           <td class="txt_left">1. 정보보호 및 개인정보보호 특성 이해</td>
                           <td>1. 정보보호 및 개인정보보호의 목적과 특징</td>
                        </tr>
                        <tr class="bg02">
                           <td class="txt_left">2. 정보보호 및 개인정보보호법 체계</td>
                           <td>1. 사이버 윤리(보안윤리 개념, 디지털 저작권 침해 및 보호기술, 유해정보유통, 사이버 폭력, 사이버 사기 등 범죄행위)<br>2. 정보보호 및 개인정보보호 법 체계의 이해</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ실기 시험과목
                     </h4>
               </div>
               <div>
               <table class="table_view_01 ty3 mt20" summary="등급, 시험방법, 시험과목, 출제형태, 시험시간을 제공하는 시험과목 목록입니다" cellspacing="0" cellpadding="0" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; height : 700px; text-align : center;">
                     <colgroup>
                        <col width="100px">
                        <col width="120px">
                        <col width="140px;">
                        <col width="240px;">
                        
                     </colgroup>
                     <thead>
                        <tr style = "background-color : #6ca8d8;">
                           <th scope="col">실기 과목명</th>
                           <th scope="col">주요항목</th>
                           <th scope="col">세부항목(출제기준)</th>
                           <th scope="col" class="last-item">세세항목</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td style = "background-color : #cde9ff;" rowspan="10" class="bg_no border02">정보보안실무</td>
                           <td rowspan="4">1. 시스템 및 네트워크 보안특성 파악</td>
                           <td class="txt_left">1. 운영체제별 보안특성 파악하기</td>
                           <td class="last-item">1. 조직의 보안목표 문서와 IT환경 설계도를 파악할 수 있다.<br>2. IT환경을 구성하고 있는 개인용 PC 또는 서버에 설치된 운영체제 및 버전정보를 파악할 수 있다.<br>3. 운영체제 및 버전별로 제공되는 보안서비스, 보안정책 설정, 보안 취약점들을 파악할 수 있다.<br>4. 내부 사용자와 네트워크 사용자에게 공유되는 객체들의 정보를 수집하고 보안목표에 따라 보안정책이 적절히 설정되었는지 점검할 수 있다.<br>5. 운영체제별로 동작하는 악성코드의 종류 및 특징을 파악할 수 있다.<br>6. 운영체제에서 생성되는 로그파일 관리가 되고 있는지 점검할 수 있다.<br>7. 보안 운영체제(SecureOS)가 제공하는 보안서비스를 이해하고, 접근 통제정책 등을 적용할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">2. 프로토콜 보안특성 파악하기</td>
                           <td class="last-item">1. OSI 7계층과 TCP/IP 프로토콜의 구성 그리고 각 계층별 기능, 동작 구조를 이해할 수 있다.<br>2. TCP/IP 각 계층에서 처리하는 PDU 구조 및 PDU 헤더별 필드 기능을 이해할 수 있다.<br>3. IP, ARP, RARP, ICMP 그리고 각 Routing 프로토콜 동작절차 및 취약점을 이해할 수 있다. <br>4. TCP, UDP, SSL, IPSec 프로토콜의 동작절차와 취약점을 이해할 수 있다.<br>5. 서비스 거부 공격 및 DDoS, DRDoS 공격 절차를 이해할 수 있다.<br>6. 무선 프로토콜 동작 구조 및 보안 취약점을 이해할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">3. 서비스별 보안특성 파악하기</td>
                           <td class="last-item">1. 조직의 보안목표 문서와 IT환경 설계도, 네트워크 구성도를 파악할 수 있다.<br>2. FTP 서비스 동작절차와 환경 설정, 보안 취약점을 이해할 수 있다.<br>3. 메일 서비스 동작절차와 환경 설정, 보안 취약점을 이해할 수 있다.<br>4. 웹 서비스 동작절차와 환경 설정, 보안 취약점을 이해할 수 있다.<br>5. DNS 서비스 동작절차와 환경 설정, 보안 취약점을 이해할 수 있다.<br>6. DB 서비스와 환경 설정, 보안 취약점을 이해할 수 있다.<br>7. 전자서명, 공개키 기반 구조 구성과 보안 특성을 이해할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">4. 보안장비 및 네트워크 장비별 보안특성 파악하기</td>
                           <td class="last-item">1. 조직의 보안목표 문서와 IT환경 설계도, 네트워크 구성도를 파악할 수 있다.<br>2. NIC, Hub, Switch, Bridge 장비의 역할과 동작을 이해할 수 있다.<br>3. VLAN 보안 서비스 및 설정 방법을 이해할 수 있다.<br>4. Router 설정 절차 및 트래픽 통제 기능을 이해할 수 있다.<br>5. Firewall, IDS, IPS 보안 장비의 보안 서비스 및 설정 방법을 이해할 수 있다.<br>6. NAT 종류 및 동작 절차를 이해할 수 있다.<br>7. VPN 구현 방법 및 동작 절차를 이해할 수 있다.<br>8. 조직의 보안대상 관리시스템과 네트워크 장비를 파악할 수 있다.<br>9. 네트워크 구성도를 분석하여 사용 중인 IP 주소, 서브넷 등의 네트워크 정보를 파악할 수 있다.<br>10. SNMP를 이용한 원격관리기능과 스캐닝 도구를 이용한 관리대상시스템의 제공 서비스를 파악할 수 있다.</td>
                        </tr>
                        <tr>
                           <td rowspan="4">2. 취향점 점검 및 보완</td>
                           <td class="txt_left">1. 운영체제 및 버전별 취약점 점검, 보완하기</td>
                           <td class="last-item">1. 불필요한 계정 존재 및 악성코드 설치여부에 대하여 점검·보완할 수 있다.<br>2. 운영체제별 보호 대상 객체(파일, 폴더) 권한 설정이 보안목표에 따라 설정되어 있는지 점검·보완할 수 있다.<br>3. 운영체제별 이벤트 로그정보 생성과 관리가 보안목표에 따라 설정되어 있는지 점검 ‧보완할 수 있다.<br>4. 운영체제 종류 및 버전 정보가 불필요하게 노출되어 있는지 점검․보완할 수 있다.<br>5. 원격접속 및 원격관리 기능이 보안목표에 따라 설정되어 있는지 점검‧보완할 수 있다.<br>6.  운영체제의 패치관리 또는 패치관리 시스템이 적절히 설정되어 있는지 점검·보완할 수 있다.<br>7. 보안운영체제(SecureOS)를 적절히 설정하고 운영할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">2. 서비스 버전별 취약점 점검, 보완하기</td>
                           <td class="last-item">1. 조직에서 제공하지 않는 서비스가 동작하고 있는지 점검한 후 제거 할 수 있다.<br>2. 파일서버, FTP서버에 권한이 없는 사용자가 접근할 수 있게 설정되어 있는지, 각 사용자별로 접근할 수 있는 파일/폴더가 적절히 설정되어 있는지 점검할 수 있다.<br>3. 공유폴더에 적절한 접근통제가 보안목표에 적합한지 점검하며, 폴더가 불필요하게 공유되어 있는지 점검·보완할 수 있다.<br>4. 메일 서버 설정에서 스팸메일 릴레이가 허용되어 있는지, 메일 송수신 프로토콜 (SMTP, POP, IMAP) 보안 설정이 적절한지 점검할 수 있다.<br>5. 웹 서버 설정에서 다양한 공격 유형들에 대비하여 보안 설정이 적절한지 점검할 수 있다.<br>6. DNS 서버 설정에서 불필요한 명령어 수행이 허가되어 있지 않은지, DNS 보안 조치가 적절히 설정되어 있는지 점검할 수 있다. <br>7. DB 서버 설정에서 중요 정보가 암호화되어 저장되고 있는지, DB객체(테이블, 칼럼, 뷰 등)별접근통제가 적절히 설정되어 있는지 점검할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">3. 보완장비 및 네트워크 장비 취약점 점검, 보완하기</td>
                           <td class="last-item">1. Switch, Router 장비의 관리자 계정 보안이 적절히 설정되어 있는지 점검할 수 있다.<br>2. 침입차단시스템(Firewall) 장비 및 Router의 보안 설정(IP별 통제, Port별 통제, 사용자 ID별 통제 등)이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다. <br>3. 침입탐지시스템(IDS) 보안 설정이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다.<br>4. 침입방지시스템(IPS) 보안 설정이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다.<br>5. NAT 설정이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다.<br>6. 무선접속 장비가 보안목표에 따라 암호화 및 접근통제가 적절히 설정되어 있는지 확인할 수 있다.<br>7. WAF 보안 설정이 보안목표에 따라 적절히 성정되어 있는지 점검할 수 있다.<br>8. AntiDDos 보안 설정이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다.<br>9. AntiAPT 또는 Sandbox 보안 설정이 보안목표에 따라 적절히 설정되어 있는지 점검할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">4. 취약점 점검 및 보완사항 이력 관리하기</td>
                           <td class="last-item">1. 운영체제별 보안점검 내용과 방법(도구), 발견된 보안취약점 및 보완 사항을 기록할 수 있다.<br>2.  조직에서 사용중인 주요 서비스에 대해 수행한 보안점검 내용과 방법(도구), 발견된 보안취약점 및 보완 사항을 기록할 수 있다.<br>3. 네트워크 장비에 대해 수행한 보안점검 내용과 방법(도구), 발견된 보안 취약점 및 보완사항을 기록할 수 있다.<br>4. 보안장비에 대해 수행한 보안점검 내용과 방법(도구), 발견된 보안 취약점 및 보완사항을 기록할 수 있다.</td>
                        </tr>
                        <tr>
                           <td rowspan="2">3. 관제 및 대응</td>
                           <td class="txt_left">1. 관제하기</td>
                           <td class="last-item">1. 조직의 보안목표에 따라 운영체제 및 버전별, 서비스별(FTP, 메일, WWW, DNS, DB 등) 보안 등 생성되는 로그 정보를 파악하고 로그 내용을 모니터링 및 통제할 수 있다.<br>2. 주요 보안장비(Firewall, IDS, IPS 등), 네트워크장비(Switch, Router, 무선접속AP 등) 등에서 제공되는 로그정보 관리 도구를 이용하여 로그정보의생성 수준, 구성요소 등을 설정 할 수 있다.<br>3. 최신 공격 및 대응기술에 대해 이해하고 모니터링 및 통제할 수 있다.</td>
                        </tr>
                        <tr>
                           <td class="txt_left">2. 대응하기</td>
                           <td class="last-item">1. 시스템별, 주요 서비스별, 유‧무선 네트워크 장비별, 보안장비별, 시간대별로 보안 로그정보를 수집 및 식별할 수 있다.<br>2. 시스템별, 주요 서비스별, 유‧무선 네트워크 장비별, 보안장비별 비정상 접근 및 변경 여부를 확인할 수 있다.<br>3. 업무 연속성을 위한 정보 및 보안 설정 정보를 백업 및 복구할 수 있다.<br>4. 최신 공격 및 대응기술에 대해 이해하고, 기본적인 초기대응을 할 수 있다.</td>
                        </tr>
                     </tbody>
                  </table>
               </div>
               <div class = "certiExplain" style = "margin-top : 20px;">
                     <h4 class = text-header>
                        <br>ㅇ검정 실시 일정
                     </h4>
               </div>
               <table class="b_list2" style = "border-right : 1px solid #bcbcbc; border-top : 1px solid #bcbcbc; width : 1000px; height : 700px; text-align : center;">
                  <colgroup>
                     <col width="6%">
                     <col width="11%">
                     <col width="10%">
                     <col width="9%">
                     <col width="15%">
                     <col width="12%">
                     <col width="12%">
                     <col width="">
                     <col width="">
                  </colgroup>
                  <thead>
                     <tr style = "background-color : #6ca8d8;">
                        <th class="bg_gray">회차</th>
                        <th class="bg_gray">필기시험<br>원서접수
                        </th>
                        <th class="bg_gray">필기<br>시험
                        </th>
                        <th class="bg_gray">필기합격<br>(예정자)발표
                        </th>
                        <th class="bg_gray">응시자격서류제출<br>(필기합격자 결정)
                        </th>
                        <th class="bg_gray">실기시험<br>원서접수
                        </th>
                        <th class="bg_gray">실기시험</th>
                        <th class="bg_gray">합격자<br>발표
                        </th><th class="bg_gray">시행종목</th>
                        
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <!-- 1-1 -->
                        <td class="bg_gray" rowspan="4" style = "background-color : #cde9ff;">제1회</td>
                        <td rowspan="4" class="board_l">2.14~2.18</td>
                        <td rowspan="4">
                           3.13.(일)
                        </td>
                        <td rowspan="4">3.25</td>
                        <td class="board_l" rowspan="4">3.14 ~ 3.31
                        </td>
                        <td class="board_l" rowspan="4">3.29~3.31
                        </td>
                        <td class="board_l" rowspan="3">4.9 ~ 4.11</td>
                        <td class="board_l" rowspan="3">4.22</td>
                        <td class="text_left" rowspan="3">항공무선통신사<br>
                           전파전자통신분야
                        </td>
                     </tr>
                     <tr>
                        <!-- 1-2 -->
                     </tr>
                     <tr>
                        <!-- 1-3 -->
                     </tr>
                     <tr>
                        <!-- 1-4 -->
                        <td rowspan="1" class="board_l">4.23 ~ 5.8</td>
                        <td rowspan="1">5.27</td>
                        <td rowspan="1" class="board_l text_left">⋅정보통신 분야<br>
                           ⋅무선설비 분야<br> ⋅방송통신 분야<br> ⋅정보보안 분야<br> ⋅통신선로 분야<br>
                           ⋅통신설비 기능장<br> ⋅통신기기기능사
                           <br> ⋅무선통신 분야
                           <br> ⋅아마추어 무선분야
                        </td>
                     </tr>
                     <tr>
                        <!-- 2-1 -->
                        <td class="bg_gray" rowspan="2" style = "background-color : #cde9ff;">제2회</td>
                        <td rowspan="2">5.31 ~ 6.3</td>
                        <td rowspan="2" class="ltt_small">6.25 (토)</td>
                        <td rowspan="2">7.8</td>
                        <td rowspan="2">6.27 ~ 7.15
                        </td>
                        <td rowspan="2">7.13 ~ 7.15</td>
                        <td class="board_l">7.23 ~ 7.26</td>
                        <td>8.5</td>
                        <td class="text_left">· 전파전자통신<br> 기능사</td>
                     </tr>
                     <tr>
                        <!-- 2-2 -->
                        <td class="board_l">8.13 ~ 8.23</td>
                        <td>9.8</td>
                        <td class="text_left ltt_small brd_left">⋅정보통신 분야<br>
                        ⋅무선설비 분야<br>
                        (기능사제외)<br>
                        ⋅정보보안분야<br>
                        ⋅통신선로기능사<br>
                        ⋅무선통신 분야<br>

                        </td>
                     </tr>
                     <tr>
                        <!-- 3-1 -->
                        <td class="bg_gray" style = "background-color : #cde9ff;">제3회</td>
                        <td colspan="4">산업수요 맞춤형 및 특성화 고등학교<br>필기시험면제자 검정<br>
                           ※ 일반인 필기시험 면제자 제외
                        </td>
                        <td>5.2 ~ 5.6</td>
                        <td class="text_left">6.11~6.22</td>
                        <td>7.1</td>
                        <td>기능사 전 종목</td>

                     </tr>
                     <tr>
                        <!-- 4-1 -->
                        <td class="bg_gray" rowspan="5" style = "background-color : #cde9ff;">제4회</td>
                        <td rowspan="4">
                           9.12.~9.16
                        </td>
                        <td rowspan="4" class="ltt_small">10.8 (토)</td>
                        <td rowspan="4">10.21</td>
                        <td class="board_l" rowspan="4">10.10 ~ 10.27
                        </td>
                        <td class="board_l" rowspan="4">
                           10.25.~10.27
                        </td>
                        <td class="ltt_small" rowspan="3">11.5 ~ 11.8</td>
                        <td class="board_l" rowspan="3">11.18</td>
                        <td class="text_left" rowspan="3">· 항공무선통신사 <br>· <span class="ltt_small">전파전자통신 <br>기사·기능사</span></td>
                     </tr>
                     <tr>
                        <!-- 4-2 -->
                     </tr>
                     <tr>
                        <!-- 4-3 -->
                     </tr>
                     <tr>
                        <!-- 4-4 -->

                        <td class="board_l ltt_small">11.26 ~ 12.11</td>
                        <td>
                           12.23
                        </td>
                        <td class="text_left">
                           ⋅정보통신 분야<br>
                           ⋅무선설비 분야<br>
                           ⋅방송통신 분야<br>
                           ⋅정보보안 분야<br>
                           ⋅통신선로 분야<br>
                           ⋅통신설비기능장<br>
                           ⋅통신기기기능사<br>
                           ⋅무선통신 분야<br>
                           ⋅아마추어 무선분야<br>
                        <a class="text_blue2">※아마추어2급제외</a><br>
                        </td>
                     </tr>
                     <tr>
                        <!-- 5-1 -->
                        <td class="board_l" colspan="4">기술훈련과정의 70/100 이상 이수자 검정<br>※
                           일반인 필기시험 면제자 제외
                        </td>
                        <td>10.31 ~ 11.3</td>
                        <td class="text_left">11.26~11.11</td>
                        <td class="ltt_small">12.16
                        </td>
                        <td>기능사 전 종목</td>

                     </tr>
                  </tbody>
               </table>
            </table>
         </div>
      </div>
         <%--  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="container">
            <table>
              <tr>
                 <td style = "width : 1200px; border-left : none; border-bottom : none;">
                  <h2><a href="#" class="card-link" target="_blank">정보보안산업기사</a>
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
            <h2><a href="#" class="card-link" target="_blank">정보보안산업기사</a>
                          <a class="btn btn-primary" href="https://www.q-net.or.kr/cst006.do?id=cst00601&code=1203&gSite=&gId=" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.cq.or.kr/qh_quagm05_001.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
                      <div class = "certiExplain">
                     <h4 class = text-header>
                        ㅇ정보보안산업기사 응시자격
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
                                    <p>'국가기술자격법 시행령' [별표1의2]에서 정한 기사, 산업기사 등급의 응시자격에 해당하는 자</p>
                                    <p>정보보안산업기사의 응시자격은「국가기술자격법 시행규칙」 제10조의2(응시자격) 별표 11의 2에 근거하여 모든 직무분야에서 응시가능</p>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <h4 class = text-header>
                        <br><br>ㅇ정보보안산업기사 세부응시자격
                     </h4>
                     <div class="border border-secondary">
                        <table class="table">
                           <colgroup>
                              <col class="col_auto">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="bg-light text-center">세부응시자격</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <p>기능사 등급 이상의 자격을 취득한 후 응시하려는 종목이 속하는 동일 및 유사 직무분야에 1년 이상 실무에 종사한 사람</p>
                                    <p>응시하려는 종목이 속하는 동일 및 유사 직무분야의 다른 종목의 산업기사 등급 이상의 자격을 취득한 사람</p>
                                    <p>관련학과의 2년제 또는 3년제 전문대학졸업자등 또는 그 졸업예정자</p>
                                    <p>관련학과의 대학졸업자등 또는 그 졸업예정자</p>
                                    <p>동일 및 유사 직무분야의 산업기사 수준 기술훈련과정 이수자 또는 그 이수예정자</p>
                                    <p>응시하려는 종목이 속하는 동일 및 유사 직무분야에서 2년 이상 실무에 종사한 사람</p>
                                    <p>고용노동부령으로 정하는 기능경기대회 입상자</p>
                                    <p>외국에서 동일한 종목에 해당하는 자격을 취득한 사람</p>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                     <div class = "certiExplain">
                        <h4 class = text-header>
                           <br><br><br><br>ㅇ정보보안산업기사 시험시간 및 합격기준
                        </h4>
                        <div class="border border-secondary">
                           <table class="table">
                           <colgroup>
                              <col width="12%">
                              <col width="">
                              <col width="29%">
                              <col width="29%">
                           </colgroup>
                           <thead>
                              <tr class="bg-light text-center">
                                 <th scope="col" class="board_r">구분</th>
                                 <th scope="col" class="board_r">과목</th>
                                 <th scope="col" class="board_r">출제유형(시험시간)</th>
                                 <th scope="col">합격기준</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td class="board_r"><b>필기</b></td>
                                 <td class="board_r text_left">
                                    1.시스템보안<br>
                                    2.네트워크보안<br>
                                    3.어플리케이션보안<br>
                                    4.정보보안일반<br>
                                 </td>
                                 <td class="board_r text_left">
                                    객관식 4지선다형(2시간)
                                 </td>
                                 <td class="text_left">100점을 만점으로 매과목 40점 이상, 전과목 평균 60점 이상 <br>: 과목당 20문항</td>
                              </tr>
                  
                              <tr>
                                 <td class="last_border_bottom board_r "><b>실기</b></td>
                                 <td class="last_border_bottom board_r text_left">정보보안 실무</td>
                                 <td class="last_border_bottom board_r text_left">필답형(2시간 30분)</td>
                                 <td class="last_border_bottom  text_left">100점을 만점으로 60점 이상</td>
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
               <h2><a href="#" class="card-link" target="_blank">정보보안산업기사</a>
                        <a class="btn btn-primary" href="https://www.q-net.or.kr/cst006.do?id=cst00601&code=1203&gSite=&gId=" role="button" style = "float:relative;">기출문제 풀어보기</a>
                        <a class="btn btn-primary" href="https://www.cq.or.kr/qh_quagm05_001.do" role="button" style = "float:relative;">접수하기</a>
                     <span class = "writebutton" style = "float : right;">
                        <i class="fa-solid fa-pen"></i>
                     </span>
                      </h2><hr/>
             <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border-left : none; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420019" class="card-link">정말 쉬운 정보산기 - 필기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/jisu.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px;margin-bottom:10px;">
                  <h6>분류 : 정보보안산업기사 필기</h6>
                  <h6>강사명 : 최지수 선생님</h6>
                  <h6>강의기간 : 25일</h6>
                  <h6>수강 비용 : 50,000원</h6>
                  <h6>교재 : 정보보안 기사*산업기사 필기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420019" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
                  </span></h6>
                 </td>
              </tr>
            </table>
          </div>
          <div class="container1" style = "margin-top:10px;">
               <table  class = "etc">
              <tr>
                 <td style = "width : 1100px; padding-left : 30px; border : none;">
                  <h2><a href="http://localhost:8085/myapp/Information1.do?lec_num=441420020" class="card-link">진짜 쉽다 정보산기 - 실기편</a>
                  <button type="button" class="btn btn-primary" style="font-size:medium; background-color: rgba(255, 255, 255, 255);
                        margin: 0px; padding: 0px; box-shadow: none;">
                         <span class="badge badge-light" id = "ddayNetwork" style="padding-top:0px; padding-bottom:0px; margin-top: 5px; color:rgb(255, 40, 40);"></span>
                      </button>
                      </h2>
                  <hr/>
                  <img src="${contextPath}/resources/Image/jisu1.PNG" class="card-img-top" alt="..." style = "float:left; width:100px; height:140px; margin-right:20px; margin-top:-10px; margin-bottom:10px;">
                  <h6>분류 : 정보보안산업기사 실기</h6>
                  <h6>강사명 : 최지수 선생님</h6>
                  <h6>강의기간 : 40일</h6>
                  <h6>수강 비용 : 70,000원</h6>
                  <h6>교재 : 이기적 정보보안 기사*산업기사 실기
                  <span class = "likebutton">
                     <i class="fa-regular fa-heart"></i>
                     <span class = "writebutton">
                     <i class="fa-solid fa-pen"></i>
                     </span>
                     <a class="btn btn-primary" href="http://localhost:8085/myapp/Information1.do?lec_num=441420020" role="button" style = "float:right; margin-top:-10px; margin-right : 30px;">수강하기</a>
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