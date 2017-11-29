<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
<title>book_list.jsp</title>
</head>
<body>
<h2>books ���̺��� å ����Դϴ�.</h2>
	<table border="1">
		<c:if test="${empty bookList}">
			<tr>
				<td colspan="5">������ å�� �����ϴ�.</td>
			</tr>
		</c:if>
		<c:if test="${not empty bookList}">
			<tr>
				<th>å��ȣ</th>
				<th>����</th>
				<th>���ǻ�</th>
				<th>����</th>
				<th>���ǳ⵵</th>
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
	<a href="http://localhost:9999/Day06_db2/">[��������]</a>
</body>
</html>