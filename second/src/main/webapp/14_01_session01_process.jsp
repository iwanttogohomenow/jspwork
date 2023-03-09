<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if (user_id.equals("admin") && user_pw.equals("1234")) {
		session.setAttribute("userID", user_id);
		session.setAttribute("userPW", user_pw);

		out.println("세션 설정이 성공했습니다<br>");
		out.println(user_id + "님 환영합니다");

	} else {
		
		out.println("세션 설정이 실패했습니다");
	}
	%>
<!-- 	  파라미터로 받는 값은 string이니까 .equals로 비교  -->
<!--  		session.getAttribute("userID"); /*admin  */ -->
<!--  		out.println("<script>alert('세션 설정이 실패했습니다');</script>"); -->
<!-- 		response.sendRedirect("14_01_session01.jsp?no=1"); /* 로그인으로 돌아가는 것 */ -->
	<br>
	<a href="14_01_session02.jsp">세션 확인하기</a>

</body>
</html>