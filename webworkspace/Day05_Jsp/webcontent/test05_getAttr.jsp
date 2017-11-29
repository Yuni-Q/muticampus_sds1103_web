<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test05_getAttr.jsp</title>
</head>
<body>
<%
	String userName = (String) session.getAttribute("userName");
	out.write("세션 ID:"+session.getId()+"<br>");
	
	if(userName!=null){
		out.write("세션에 기록된 이름:<b>" +userName+ "</b>");
	}else{
		out.write("<h3>세션에 기록된 이름이 없습니다.</h3>");
	}
%>
</body>
</html>