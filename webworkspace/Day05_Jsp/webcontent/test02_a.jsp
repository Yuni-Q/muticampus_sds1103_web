<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test02_a.jsp</title>
</head>
<body>
	<h1>test02_a.jsp가 만든 화면입니다.</h1>
	
	<%
		request.setAttribute("msg", "안녕하세요");
		request.setAttribute("requestTime", new Date());
	%>
	<jsp:forward page="test02_b.jsp"/>
</body>
</html>