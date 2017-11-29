<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
<title>book_list.jsp</title>
</head>
<body>
<h2>books 테이블의 책 목록입니다.</h2>
	<table border="1">
		<c:if test="${empty bookList}">
			<tr>
				<td colspan="5">보여질 책이 없습니다.</td>
			</tr>
		</c:if>
		<c:if test="${not empty bookList}">
			<tr>
				<th>책번호</th>
				<th>제목</th>
				<th>출판사</th>
				<th>가격</th>
				<th>출판년도</th>
			</tr>		
			<c:forEach var="book" items="${bookList}">
				<tr>
					<td>${book.bookNum}</td>
					<td>${book.title}</td>
					<td>${book.publisher}</td>
					<td>${book.price}</td>
					<td>${book.year}</td>
				</tr>
			</c:forEach>
		</c:if>	
	</table>
	<a href="http://localhost:9999/Day06_db2/">[메인으로]</a>
</body>
</html>