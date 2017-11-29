<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test01_a.jsp</title>
</head>
<body>
<h1>이곳은 test01_a.jsp 가 만든 화면입니다.</h1>
<%
	response.sendRedirect("test01_b.jsp");
%>

</body>
</html>