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

<p>（画面遷移＆リクエスト属性バージョン）<br>
<p>0～9の数字を入れてください
<form action="../servlet/GuessServletSession">
<input type="text" name="number">
<input type="submit" value="送信">
</form>

<%
String result =  (String)request.getAttribute("result");
if(result != null){
	out.print(result);
}

%>


</body>
</html>