<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% String s = request.getParameter("no"); %>
<!DOCTYPE html>
<html>
<head>

<title>Implicit Objects</title>
</head>
<body>
	<form action="08_06_reponse01_process.jsp" method="post">

		<p>
			아 이 디: <input type="text" name="id">
		</p>
		<p>
			비밀번호: <input type="text" name="passwd">
		</p>
		<p><%= s!=null ? "아이디나 비밀번호가 일치하지 않습니다." : "" %></p>
		<!-- 내페이지에서 경고문고만 뜨게 하는 방법 
		response_process에
		response.sendRedirect("08_06_response01.jsp?no=1");
		여기에
		String s= request.getParameter("no");
		바디에 <p><%= s!=null ? "아이디나 비밀번호가 일치하지 않습니다." : "" %></p>
		 -->
		<p>
			<input type="submit" value="전송">
		</p>

<!-- reponse 응답객체
url 제어
파일 다운로드 ->파일에 대한걸로 응답해야됨 웹문서에 대한
페이지 이동에 대한 -->
	</form>

</body>
</html>