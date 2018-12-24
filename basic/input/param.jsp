<%@ page language="java" contentType="text/html; charset=Windows-31J"
    pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Windows-31J">
<title>Insert title here</title>
</head>
<body>
<h2>いろんなパラメータ</h2>

<form action="../servlet/ParamListServlet">

<p>テキストフィールド
<input type="text" name="text1" value="テキストフィールド">

<p>テキストエリア
<textarea name="textarea1" rows="5" cols="30">テキストエリア</textarea>

<p>ラジオボタン
<input type="RADIO" name="radio1" value="value1" checked>左
<input type="RADIO" name="radio1" value="value2">右

<p>チェックボックス
<input type="CHECKBOX" name="check1">ゴルフ
<input type="CHECKBOX" name="check2">テニス
<input type="CHECKBOX" name="check3">サッカー


<p>セレクト
<select name="lang" size="3" multiple="true">
<option value="sel1">VB
<option value="sel2">C
<option value="sel3">java
</select>

<p>
<input type="SUBMIT">
<input type="RESET">

</form>
</body>
</html>