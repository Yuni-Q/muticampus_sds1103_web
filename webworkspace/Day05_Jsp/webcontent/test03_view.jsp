<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test03_view.jsp</title>
</head>
<body>
<h1>test03_view.jsp �� ����� ���ȭ��</h1>
������ �޴� : <%=request.getAttribute("menu")%> <br>
�����弭���� ���� �������� : <%= request.getAttribute("randomNum") %><br>

</body>
</html>