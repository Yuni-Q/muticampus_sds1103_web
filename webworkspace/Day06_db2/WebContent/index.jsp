<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>index.jsp(또는 index.html로 만들어도 무방함.)</title>
</head>
<body>
	<h2>책 관리 화면입니다.</h2>

	<a href="book.do?type=bookList">[책 목록보기]</a>
	<a href="book.do?type=insertForm">[책 추가 폼]</a>
	<a href="book.do?type=updateForm">[책 수정 폼]</a>
	<a href="book.do?type=deleteForm">[책 삭제 폼]</a>

</body>
</html>