<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<title>Internationalization</title>
</head>
<body>
<p>----------기본 로케일 ------------</p>
	<fmt:setBundle basename="com.bundle.myBundle_m" var="resourceBundle" />
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"/></p> s인지 단수인지
<p><fmt:message key="username" var="userMsg" bundle="${resourceBundle}"/></p>
<!-- 출력하기 위해 변수객체 이름을 표현식으로 넣어준다(var없으면 출력 가능?) -->
이름: ${userMsg}
<%-- <fmt:setBundle basename="com.bundle.myBundle_m" var="resourceBundle" /> --%>


<p>----------영문 로케일-------------</p>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="com.bundle.myBundle_m" var="resourceBundle"/>
<!-- <fmt:setLocale value="en"/> 지역 변경 강제 설정 -->
<p>제목 : <fmt:message key="title" bundle="${resourceBundle} "/></p>
<p>이름 : <fmt:message key="username" bundle="${resourceBundle} "/></p>
</body>
</html>