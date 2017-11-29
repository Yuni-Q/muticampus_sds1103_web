<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>test01_insert_form.jsp</title>
</head>
<body>
	<form action="test01_insert.jsp" method="post">
		<table border="1">
			<tr>
				<td>책 제목</td>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<td>출판사</td>
				<td>
					<input type="text" name="pub">
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>
					<input type="text" name="price">
				</td>
			</tr>
			<tr>
				<td>출판년도</td>
				<td>
					<input type="text" name="year">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="제출">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>