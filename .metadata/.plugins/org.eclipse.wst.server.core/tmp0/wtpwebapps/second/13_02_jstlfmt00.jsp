<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 태그 이름을 만들어주는것이 prefix ->이름이 정해져있는 게 아니지만 권장 태그를 이걸로 시작해주세요       ~~fmt 문서 양식 인코딩 설정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt태그</title>
<!-- Java standard Tag library -->
</head>
<body>
	<h3>JSTL fmt태그 사용</h3>
	<span style="color: red">파라미터의 인코딩 설정하기</span>
	<br>
	<fmt:requestEncoding value="utf-8" />
	<%-- =<% request.setCharacterEncoding("utf-8"); %> --%>
	요청 파라미터 :
	<%=request.getParameter("name")%> <!--null반환 전송 누르면 김말이  -->
	<form method="post">
		<p>
			이름: <input type="text" name="name" value="김말이">
		</p>
		<p>
			<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>