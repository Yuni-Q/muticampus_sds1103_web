<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test04_makeCookie.jsp</title>
</head>
<body>
<h1>�� ������ ��Ű�� ���� �߱��Ͽ����ϴ�.</h1>
<%
	Cookie cookie = new Cookie("cookie2","cookie2 value");
	cookie.setMaxAge(60*5);
	response.addCookie(cookie);
%>
</body>
</html>