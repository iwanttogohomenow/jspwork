<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Implicit Objects</title>
</head>
<body>
	<%
	response.sendError(500, "요청 페이지를 찾을 수 없습니다");
	application.log("로그기록", new Exception());
	/*내페이지에서 에러? 쓰읍  */
	%>

</body>
</html>