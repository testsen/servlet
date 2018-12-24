<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<H2>数字当てゲーム</H2>

0～9の数字をいれてください

<form action="../servlet/GuessServlet">
<input type="text" name="number">
<input type="submit" value="送信">
</form>

</body>
</html>