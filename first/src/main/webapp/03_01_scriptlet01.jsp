<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<% //메소드안처럼 작동한다.
int a = 2;
int b = 3;
int sum= a + b;
out.println("2 + 3 = " + sum + "<br>");

int z = 7 ;
out.println("a + z = "+ (a+z));
%>



</body>
</html>