<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_getAttr.jsp</title>
</head>
<body>
<%
	String userName = (String) session.getAttribute("userName");
	out.write("���� ID:"+session.getId()+"<br>");
	
	if(userName!=null){
		out.write("���ǿ� ��ϵ� �̸�:<b>" +userName+ "</b>");
	}else{
		out.write("<h3>���ǿ� ��ϵ� �̸��� �����ϴ�.</h3>");
	}
%>
</body>
</html>