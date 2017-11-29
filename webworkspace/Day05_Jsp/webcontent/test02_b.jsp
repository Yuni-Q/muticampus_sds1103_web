<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test02_b.jsp</title>
</head>
<body>
	<h1>이곳은 test02_b.jsp가 만든 화면입니다.</h1>
	<%
		String msg = (String) request.getAttribute("msg");
		Date time = (Date) request.getAttribute("requestTime");
	%>
	test02_a.jsp가 기록해놓은 데이터<br>
	msg : <%=msg%><br>
	요청시간 : <%=time%><br>
</body>
</html>