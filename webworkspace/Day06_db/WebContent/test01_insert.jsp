<%@page import="dao.BookDao"%>
<%@page import="vo.BookVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test01_insert.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");

	String title = request.getParameter("title");
	String publisher = request.getParameter("pub");
	String year = request.getParameter("year");
	String priceStr = request.getParameter("price");
	
	// �Ķ���ʹ� ������ �� String �ڷ������� �ν��ϹǷ�,
	// ���� �����ͷ� ��ȯ�ϴ� �۾��� �ʿ���.
	int price = Integer.parseInt(priceStr);
	
	// �������� ���� �ϳ��� VO ��ü�� ������.
	BookVO book = new BookVO(title,publisher,price,year);
	
	// �����ͺ��̽��� insert�϶�� ����
	BookDao dao = new BookDao();
	int result = dao.insert(book);	
%>

å �߰� ��� : <%=result %> <br>
<a href="http://localhost:9999/Day06_db/">[��������]</a>

</body>
</html>




