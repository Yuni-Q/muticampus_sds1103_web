<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test02_b.jsp</title>
</head>
<body>
	<h1>�̰��� test02_b.jsp�� ���� ȭ���Դϴ�.</h1>
	<%
		String msg = (String) request.getAttribute("msg");
		Date time = (Date) request.getAttribute("requestTime");
	%>
	test02_a.jsp�� ����س��� ������<br>
	msg : <%=msg%><br>
	��û�ð� : <%=time%><br>
</body>
</html>