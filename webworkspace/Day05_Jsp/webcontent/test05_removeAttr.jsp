<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_removeAttr.jsp</title>
</head>
<body>
<%
	out.write("���� ID:"+session.getId()+"<br>");
	
	session.removeAttribute("userName");
	out.write("���� ���ǿ��� userName �Ӽ��� �����Ͽ����ϴ�.<br>");
%>

</body>
</html>