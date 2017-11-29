<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test04_makeCookie.jsp</title>
</head>
<body>
<h1>이 서블릿은 쿠키를 만들어서 발급하였습니다.</h1>
<%
	Cookie cookie = new Cookie("cookie2","cookie2 value");
	cookie.setMaxAge(60*5);
	response.addCookie(cookie);
%>
</body>
</html>