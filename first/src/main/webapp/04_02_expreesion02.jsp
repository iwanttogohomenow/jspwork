<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주석</title>
</head>
<body>
<%
int a = 10;
int b = 20;
int c = 30;
%>
<%= a + b+ c %>
<%-- <%=a + b + c %>  --%> <!-- jsp주석 -->
<!-- <p>test1</p> -->
<%-- <p>test2</p> --%>
<p>test3</p>
<!-- jsp주석은 브라우저에도 페이지에도 표현이 안됨 -->

</body>
</html>