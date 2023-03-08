<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%!int data = 50;%> <!-- 클래스같기때문에 자동 초기화값을 가짐,전역변수는 어느위치에서든 쓸 수 있음-->
	<%
	out.print("Value of the variable is:" + data + "<br>"); //웹브라우저에 출력하기위해서

	String data = "하하하";
	out.print("2_Value of the variable is:" + data);
	%>

































</body>
</html>