<%@page import="vo.BookVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.BookDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test01_booklist.jsp</title>
</head>
<body>
	<%
		BookDao dao = new BookDao();
		List<BookVO> bookList = dao.selectAll(); // 책 목록 조회
	%>
	
	<table border="1">
		<tr>
			<th>책번호</th>
			<th>제목</th>
			<th>출판사</th>
			<th>가격</th>
			<th>출판년도</th>
		</tr>
		<% 	for(BookVO book: bookList){ %>
		<tr>
			<td><%=book.getBookNum() %></td>
			<td><%=book.getTitle() %></td>
			<td><%=book.getPublisher() %></td>
			<td><%=book.getPrice() %></td>
			<td><%=book.getYear() %></td>
		</tr>
		<%	} %>
	</table>
	
	<a href="http://localhost:9999/Day06_db/">[메인으로]</a>
</body>
</html>




