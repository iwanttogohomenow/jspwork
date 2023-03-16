<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String userid = request.getParameter("id");
	String password = 
			request.getParameter("password");
	String username = request.getParameter("name");
	String year = request.getParameter("year");
	String mon = request.getParameter("mon");
	String date = request.getParameter("date");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String tel = request.getParameter("cnum");
	%>
	
		<p>
		아이디:
		<%=userid%></p> <!-- 아무것도 보내지 않으면 빈문자열로 보내짐 -->
	<p>
		비밀번호:
		<%=password%></p>
		
		<p>
		이름:
		<%=username %></p>
		<p>
		생년월일
		<%=year+"년"+mon+"월"+date+"일"%>		</p>
		<p>성별:
		<%=gender %></p>
		<p>이메일:
		<%=email %></p>
		<p>번호:
		<%=phone %></p>
		<p>tel:
		<%=tel %></p>
		
		

</body>
</html>