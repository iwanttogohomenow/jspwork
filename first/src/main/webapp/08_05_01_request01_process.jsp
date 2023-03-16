<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
	//request .setCharacterEncoding("utf-8");
	String userid = request.getParameter("id");
	String password = 
			request.getParameter("passwd");
	%>
	<p>
		아이디:
		<%=userid%></p> <!-- 아무것도 보내지 않으면 빈문자열로 보내짐 -->
	<p>
		비밀번호:
		<%=password%></p>

</body>
</html>