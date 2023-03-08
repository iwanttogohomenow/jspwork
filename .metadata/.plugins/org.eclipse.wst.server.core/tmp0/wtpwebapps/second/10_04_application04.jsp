<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
request.setAttribute("ccc", "하하하");
String name = request.getParameter("abc"); //"fruit"
if (name != null) {
	application.setAttribute(name, "orange"); //"fruit" : "orange"

}
%>
<html>
<head>

<title>application 속성 지정</title>
</head>
<body>
<%= request.getAttribute("ccc") %>
	<%
	if (name != null) {
		String str = (String)application.getAttribute(name);
		/*오브젝트 형변환  */
	%>
	application 기본 객체의 속성 설정:
	<%=name%>
	=
	<%=application.getAttribute(name)%>
	<%
	} else {
	%>
	application 기본 객체의 속성 설정 안 함
	<br> 쿼리스트링으로 추가하고 재설정해주세요.
	<br> 추가할 문자열 : ?abc=fruit
	<%
	}
	%>

</body>
</html>