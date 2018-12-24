<%@ page language="java" contentType="text/html; charset=Windows-31J"
    pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Windows-31J">
<title>Insert title here</title>
</head>
<body>
<h2>MethodServletの入力</h2>

<a href="../servlet/MethodServlet?message=hello">リンクでGET送信</a>

<form action="../servlet/MethodServlet" method="GET">
<input type="text" name="message">
<input type="submit" value="フォームでGET送信">
</form>

<form action="../servlet/MethodServlet" method="POST">
<input type="text" name="message">
<input type="submit" value="フォームでpost送信">
</form>

</body>
</html>