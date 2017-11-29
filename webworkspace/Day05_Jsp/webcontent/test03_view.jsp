<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test03_view.jsp</title>
</head>
<body>
<h1>test03_view.jsp 가 만드는 결과화면</h1>
오늘의 메뉴 : <%=request.getAttribute("menu")%> <br>
포워드서블릿이 뽑은 랜덤숫자 : <%= request.getAttribute("randomNum") %><br>

</body>
</html>