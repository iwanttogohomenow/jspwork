<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <jsp:useBean id="person" class="com.dto.Person"/> --%>
	<jsp:useBean id="person" class="com.dto.Person" scope="request" />
	<!-- request : 객체가 같은 경우는 서로 연결이 됨 -->
	<p>
		아이디 :
		<%=person.getId()%>
	</p>
	<br>
	<p>
		이 름 :
		<%=person.getName()%>
	</p>
	<br>
	<br>

	<%
	person.setId(20182005);
	person.setName("고희동");
	%>
	<p>
		아이디 :
		<%=person.getId()%></p>
	<br>
	<p>
		아이디 :
		<%=person.getName()%></p>
	<br>
	<hr>
	<jsp:include page="08_02_useBean03.jsp" />


</body>
</html>