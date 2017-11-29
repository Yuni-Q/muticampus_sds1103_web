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
		List<BookVO> bookList = dao.selectAll(); // å ��� ��ȸ
	%>
	
	<table border="1">
		<tr>
			<th>å��ȣ</th>
			<th>����</th>
			<th>���ǻ�</th>
			<th>����</th>
			<th>���ǳ⵵</th>
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
	
	<a href="http://localhost:9999/Day06_db/">[��������]</a>
</body>
</html>




