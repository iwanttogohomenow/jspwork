<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dao.Thermometer"%>

<%
Thermometer thermometer = new Thermometer();
request.setAttribute("t", thermometer);
%>
<!DOCTYPE html>
<html>
<head>
<title>EL로 객체의 메소드 호출하기</title>
</head>
<body>
	
	
	<h2>EL로 객체의 메소드 호출하기</h2>
	${t.setCelsius('서울',27.3)} 서울 온도: 섭씨 ${t.getCelsius('서울')}도 / 
	화씨 ${t.getFahrenheit('서울')}
<!-- setter는 메소드 축약식불가 -->
	<br /> 정보 : ${t.info}
	<br> 테스트 : ${t.str}
<!-- 	매개변수가 있는 getter는 축약식이 안 됨 -->
</body>
</html>







</html>
