<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test04_viewCookies.jsp</title>
</head>
<body>

<h3>����� ���� ��Ű ����Դϴ�.</h3>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length>0) {
		for (Cookie c : cookies) {
			out.write("��Ű�̸�:<b>" + c.getName() + "</b>");
			out.write("��Ű��:<b>" + c.getValue() + "</b>");
			out.write("<hr>");
		}
	}
%>

</body>
</html>