<%@ page language="java" contentType="text/html; charset=Windows-31J"
    pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Windows-31J">
<title>Insert title here</title>
</head>
<body>
<h2>�����ȃp�����[�^</h2>

<form action="../servlet/ParamListServlet">

<p>�e�L�X�g�t�B�[���h
<input type="text" name="text1" value="�e�L�X�g�t�B�[���h">

<p>�e�L�X�g�G���A
<textarea name="textarea1" rows="5" cols="30">�e�L�X�g�G���A</textarea>

<p>���W�I�{�^��
<input type="RADIO" name="radio1" value="value1" checked>��
<input type="RADIO" name="radio1" value="value2">�E

<p>�`�F�b�N�{�b�N�X
<input type="CHECKBOX" name="check1">�S���t
<input type="CHECKBOX" name="check2">�e�j�X
<input type="CHECKBOX" name="check3">�T�b�J�[


<p>�Z���N�g
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