<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>insert_form.jsp</title>
</head>
<body>
	<form action="book.do" method="post">
		<input type="hidden" name="type" value="insert">
		<table border="1">
			<tr>
				<td>å ����</td>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td>���ǻ�</td>
				<td>
					<input type="text" name="pub">
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<input type="text" name="price">
				</td>
			</tr>
			<tr>
				<td>���ǳ⵵</td>
				<td>
					<input type="text" name="year">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="����">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>