<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
<!--setAttribute로 값 설정 session의 기능 네이버 창 끄면 로그아웃되는거 생각하기  -->
<%-- <% --%>
// if(request.getParameter("no")!= null ) {
// 	out.println("<script>alert('세션 설정이 실패했습니다.');</script>");
// }
<%-- %> --%>



	<form action="14_01_session01_process.jsp" method="POST">
		<p>
			아 이 디 : <input type="text" name="id">
		</p>
		<p>
			비 밀 번 호 : <input type="password" name="passwd">
		</p>
		<p>
			<input type="submit" value="전송">
	</form>
</body>
</html>