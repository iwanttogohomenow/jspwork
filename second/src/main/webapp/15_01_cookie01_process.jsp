<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
<!--cookie는 session과 다르게 내장객체가 아닌 클래스임 ,객체 생성해야함  -->
	<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");

	if (user_id.equals("admin") && user_pw.equals("1234")) {
		//쿠키 객체 생성
		Cookie cookie_id = new Cookie("userID", user_id);//key, value 생성만
		Cookie cookie_pw = new Cookie("userPw", user_pw);
		//응답객체에 쿠키 추가(클라이언트 브라우저에 저장)
		response.addCookie(cookie_id);//
		response.addCookie(cookie_pw);
		out.println("쿠키 생성이 성공했습니다<br>");
		out.println(user_id + "님 환영합니다");

	} else {

		out.println("쿠키 생성이 실패했습니다");
	}
	

	%>

</body>
</html>