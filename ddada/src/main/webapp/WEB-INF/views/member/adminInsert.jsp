<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

   <form action="${contextPath}/member/adminInser.do" id="ist_fm"
      method="post">
      <table border="1" align="center" width="80%">
         <tr align="center">
            <th>ȸ�� ���̵�</th>
            <th>ȸ�� ��й�ȣ</th>
            <th>ȸ�� �̸�</th>
            <th>ȸ�� ����ȣ</th>
            <th>ȸ�� �̸���</th>
            <th>ȸ�� �ּ�</th>
         </tr>
         <tr align="center">
            <td><input type="text"  name="STUDENT_ID"></td>
            <td><input type="text"  name="STUDENT_PWD"></td>
            <td><input type="text"  name="STUDENT_NAME"></td>
            <td><input type="tel"  name="STUDENT_PHONE"></td>
            <td><input type="email"  name="STUDENT_EMAIL"></td>
            <td><input type="text"  name="STUDENT_ADDR"></td>
         </tr>
      </table>

      <input type="submit" value="���"/>

   </form>

</body>
</html>