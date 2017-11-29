<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_removeAttr.jsp</title>
</head>
<body>
<%
	out.write("세션 ID:"+session.getId()+"<br>");
	
	session.removeAttribute("userName");
	out.write("현재 세션에서 userName 속성을 삭제하였습니다.<br>");
%>

</body>
</html>