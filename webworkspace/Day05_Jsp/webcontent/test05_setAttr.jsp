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
����� �̸� <b><%=name%></b> �� ���ǿ� ��ϵǾ����ϴ�.

</body>
</html>