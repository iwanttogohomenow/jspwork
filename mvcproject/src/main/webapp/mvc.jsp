<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MVC</title>
</head>
<body>
<!-- http://localhost:8090/mvcproject/ControllerServlet -->
	<form method="post" action="ControllerServlet">
<!-- 	<form method="get" action="ControllerServlet"> -->
	<p>아이디 : <input type="text" name="id"></p>
	<p>비밀번호 : <input type="password" name="passwd"></p>
	<p> <input type="submit" value="전송"></p>
	</form>
	
<!-- 	request객체 (post방식) -->
<!-- 	파라미터 -->
<!-- 	id  = abc -->
<!-- 	passwd =  1111 -->
<!-- 	submit을 누르면 action을 실행 -->

</body>
</html>