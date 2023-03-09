<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 닫기</title>
</head>
<body>

	<%
	String name;
	String value;
	//"userID" = "admin" "userPW" = "1234"

	Enumeration en = session.getAttributeNames();
	int i = 0;

	while (en.hasMoreElements()) {
		i++;
		name = en.nextElement().toString();//오브젝트로 떼와서 TOSTRING해줌 //"userID" => "userPW"
		value = session.getAttribute(name).toString(); //"admin" =>1234
		out.println("설정된 세션의 속성 이름 [" + i + "] :" + name + "<br>");
		out.println("설정된 세션의 속성 값 [" + i + "] :" + value + "<br>");

	}
	%>

</body>
</html>