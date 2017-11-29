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
<h1>반갑습니다.</h1>
당신의 아이디 : <%=id%><br>
당신의 패스워드 : <%=pw%><br>

<%
	if (id.equals("admin") && pw.equals("1234")) {
		// 관리자로 로그인 성공
%>
<h2>관리자로 로그인 되셨습니다.</h2>
<%
	} else {
		// 로그인 실패
%>
<h2>로그인 실패입니다. 아이디와 비밀번호를 확인후 다시 시도해주세요.</h2>
<a href="test03_form.jsp">[폼으로 돌아가기]</a>
<%
	}
%>

</body>
</html>