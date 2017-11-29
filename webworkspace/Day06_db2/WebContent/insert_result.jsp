<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>insert_result.jsp</title>
</head>
<body>
	책 추가 결과 : <%=request.getAttribute("insertResult") %><br>
	책 추가 결과 : ${insertResult}<br>
	
	<a href="http://localhost:9999/Day06_db2/">[메인으로]</a>	

</body>
</html>