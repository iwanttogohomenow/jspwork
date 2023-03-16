<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@ page trimDirectiveWhitespaces = "true"%> --%><!--태그들의 공백을 제거 http주석의 공백은 못 없앰  -->
<html>
<head>
<title>로그 페이지 기록</title>
</head>
 <%application.setAttribute("fruit", "apple"); %> 
<body>
	속성 설정 :
	<%=application.getAttribute("fruit")%> <!--setAttribute로 설정된 것만 갖고 올 수 있음(값이 없을땐 null로 반환) , 값을 반환할때 무조건 object형식으로 반환(string으로 떼오더라도)  -->
	<!--리퀘스트,애플리케이션,세션에 전부 쓸 수 있는 것  -->
	<%
	application.log("로그 메시지 기록");
	/* 콘솔창에 찍힘  */
	%>
	로그 메시지를 기록합니다.
<!--톰캣 끄면 application 객체는 소멸됨  -->
</body>
</html>