<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
<form method="post" action="20_02_insert01_process.jsp">
	<p>아이디 : <input type="text" name="id"></p> 
<!-- 	pk라서 빈문자열 불가 -->
	<p>비밀번호 : <input type="password" name="passwd"></p>
	<p>이름 : <input type="text" name="name"></p>
	<p><input type="submit" value="전송"></p>
<!-- 	request객체에 post방식으로 담긴다(파라미터로 전송) -->
<!-- 	id=abc -->
<!-- 	passwd=1234 -->
<!-- 	name=홍길동 -->
</form>

</body>
</html>