<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>干支計算</h2>

生まれた年を入力してください
<form action="../servlet/EtoServlet2">
西暦<input type="text" name="year">
<input type="submit" value="計算">
</form>

</body>
</html>