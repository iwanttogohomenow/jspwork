<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String ids = request.getParameter("id") !=
null ? request.getParameter("id") : "아이디없음";
%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<form action="08_05_01_request01_process.jsp" method="get">
		<!-- <form method="get"> -->
		<p>
			아 이 디: <input type="text" name="id" value="<%=request.getParameter("id")%>">
		<%-- 	아 이 디: <input type="text" name="id" value="<%=ids%>"> ;;;? 어렵... ..... ..... .... .... --%>
		</p>
		<p>
			비밀번호 : <input type="password" name="passwd" value="<%= request.getParameter("passwd")%>">
			<!-- 나의 페이지로 돌려받는 방법 -->
		</p>
		<input type="submit" value="전송" />


	</form>

</body>
</html>