<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_invalidate.jsp</title>
</head>
<body>
<%
	session.invalidate();
%>

세션을 폐기하였습니다.<br>
</body>
</html>