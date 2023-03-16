<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import ="java.util.Date , com.dto.MemberBean"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>

	<jsp:useBean id="date" class="java.util.Date" /> <!-- jsp:useBean 객체: id - > 객체명 class=이 클래스를 끌고와라 
	import 후 Date date= new Date();랑 똑같음-->
	<p>
		<%
		out.print("오늘의 날짜 및 시각");
		%>
	</p>
	<p><%=date.toLocaleString()%></p> <!-- 객체 끌어오기 -->
	<br>
	<br>
	<hr>

	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
	<%
	memberBean.setId(1);
	memberBean.setName("김효진");
	out.print("아이디:" + memberBean.getId() + "<br>");
	out.print("이름:" + memberBean.getName());
	%>

</body>
</html>