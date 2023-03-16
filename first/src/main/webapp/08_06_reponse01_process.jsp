<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");

	if (userid.equals("admin") && password.equals("1234")) {
		response.sendRedirect("08_06_response01_success.jsp");

	} else {

		/* response.sendRedirect("08_06_response01_failed.jsp"); */
		response.sendRedirect("08_06_response01.jsp?no=1");
		//sendRedirect: 함수
		//응답제어나...? 
	}
	%>

</body>
</html>