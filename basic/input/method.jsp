<%@ page language="java" contentType="text/html; charset=Windows-31J"
    pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Windows-31J">
<title>Insert title here</title>
</head>
<body>
<h2>MethodServlet�̓���</h2>

<a href="../servlet/MethodServlet?message=hello">�����N��GET���M</a>

<form action="../servlet/MethodServlet" method="GET">
<input type="text" name="message">
<input type="submit" value="�t�H�[����GET���M">
</form>

<form action="../servlet/MethodServlet" method="POST">
<input type="text" name="message">
<input type="submit" value="�t�H�[����post���M">
</form>

</body>
</html>