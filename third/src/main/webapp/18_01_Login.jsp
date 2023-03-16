<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>로그인</title>
</head>
<body>
<%
	String memberId = request.getParameter("memberId");
	out.print("memberId" +memberId+"<br>");
	session.setAttribute("MEMBER" , memberId); //session설정
%>
로그인 성공<br>
	<a href="<%= request.getContextPath() %>/board/boardList.jsp">게시판 보기</a> 
<!-- 	/third ,폴더 안에 있어서 바깥에 폴더명까지 기재했음-->

</body>
</html>