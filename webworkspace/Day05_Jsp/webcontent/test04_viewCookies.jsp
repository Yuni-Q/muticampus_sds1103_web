<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test04_viewCookies.jsp</title>
</head>
<body>

<h3>당신이 들고온 쿠키 목록입니다.</h3>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length>0) {
		for (Cookie c : cookies) {
			out.write("쿠키이름:<b>" + c.getName() + "</b>");
			out.write("쿠키값:<b>" + c.getValue() + "</b>");
			out.write("<hr>");
		}
	}
%>

</body>
</html>