<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test03_get.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("userId");	
	String pw = request.getParameter("userPw");
%>
<h1>�ݰ����ϴ�.</h1>
����� ���̵� : <%=id%><br>
����� �н����� : <%=pw%><br>

<%
	if (id.equals("admin") && pw.equals("1234")) {
		// �����ڷ� �α��� ����
%>
<h2>�����ڷ� �α��� �Ǽ̽��ϴ�.</h2>
<%
	} else {
		// �α��� ����
%>
<h2>�α��� �����Դϴ�. ���̵�� ��й�ȣ�� Ȯ���� �ٽ� �õ����ּ���.</h2>
<a href="test03_form.jsp">[������ ���ư���]</a>
<%
	}
%>

</body>
</html>