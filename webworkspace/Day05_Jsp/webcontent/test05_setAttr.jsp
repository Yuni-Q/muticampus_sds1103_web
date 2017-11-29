<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_setAttr.jsp</title>
</head>
<body>
<%
	String name = request.getParameter("n");
	session.setAttribute("userName", name);
%>
당신의 이름 <b><%=name%></b> 이 세션에 기록되었습니다.

</body>
</html>