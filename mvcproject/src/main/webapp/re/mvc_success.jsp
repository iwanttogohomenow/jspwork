<%@ page language="java" contentType="text/html; charset=UTF-8""%>
<%@ page import="com.model.LoginBean" %>
<!DOCTYPE html>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<p>로그인 성공했습니다.</p>
	<p>
<%-- 	<% --%>
<!--  	LoginBean bean = (LoginBean) request.getAttribute("bean"); -->
<!-- 	out.print("아이디 : "+ bean.getId());   -->
<!-- 	%>  -->
	아이디${bean.id} 
<!-- 	위를 표현언어로 ,매개변수가 없는 getter만.가능 ,bean은 setAttribute로 설정한 객체-->
	
	</p>
	
</body>
</html>