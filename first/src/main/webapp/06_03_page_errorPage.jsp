<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage="06_03_page_errorPage_error.jsp" %> ><!--error페이지  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<%
out.print("에러테스트");
String str = null;
out.println(str.toString());/*nullpointexception  */
%>
</body>
</html>