<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>

	<p>------세션을 삭제하기 전-----</p>

	<%
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");

	out.println("설정한 세션 이름 userID : " + user_id + "<br>");
	out.println("설정된 세션 값 userPW : " + user_pw + "<br>");

	if (request.isRequestedSessionIdValid() == true)
		out.print("세션이 유효합니다.");
	else
		out.print("세션이 유효하지 않습니다.");

	//다중 세션삭제,
	session.invalidate();
	%>
	<h4>-----세션을 삭제한 후 -----</h4>

	<%
	if (request.isRequestedSessionIdValid() == true)
		out.print("세션이 유효합니다.");
	else
		out.print("세션이 유효하지 않습니다.");
	%>

</body>
</html>