<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<%!//선언부 - 클래스처럼 작동함
int sum(int a, int b) {
	return a + b;
}//메소드안이라서 자바에 관한 콘솔 출력문만 가능

//System.out.printnln("하하하"); 안됨
%>

<%

out.println("2 + 3 = " +sum(2,3)); //ln 안됨 

%>
</body>
</html>