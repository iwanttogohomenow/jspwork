<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>

<%
//request의 데이터 영역에 저장된 데이터(post방식)의 인코딩만 설정될 때 사용함.
//get방식은 인코딩 안 됨.get방식은 방식에 따라 웹페이지의 인코딩이나 브라우저의 인코딩으로 적용됨
request.setCharacterEncoding("utf-8");
%>
<html>
<head>

<title>request객체의 파라미터를 가져오는 메소드 종류</title>
</head>
<body>
	<h1>request객체의 파라미터를 가져오는 메소드 종류</h1>
	<b>request.getParameter(): </b> 한 개의 인자값만을 가져오는 경우 사용한다.
	<%
	String nm = request.getParameter("name");%> <!-- 변수명은 달라도 됨 ("name")과 id="name"의 이름을 맞춰야함 -->
	<br>
	<br> name 파라미터 =
	<%=request.getParameter("name")%>
	<br> address 파라미터 =
	<%=request.getParameter("address")%><br>
	<br>
	<hr>
	<br>
	<b>request.getParameterValues(): </b> 여러 개의 인자값 가져오는 경우 사용한다. 배열객체를
	이용하여 받을 수 있다.
	<br>
	<br>

	<%
	String[] values = request.getParameterValues("pet");
	if (values != null) {
		 for (int i = 0; i < values.length; i++) {

			out.println(values[i]);

		} 
		/* for(String i : values) {
			out.println(i);
		} */

	}
	%>
	<hr>
	<br>
	<b>request.getParameterNames(): </b> 인자값에 매칭되어 있는 name속성값을 가져온다.(키만,set으로 가져옴(중복값 배제하고)) 동일한
	속성명은 1개만 가져온다.
	<br>
	<br>

	<%
	int i = 0;
	Enumeration paramEnum = request.getParameterNames();
	while (paramEnum.hasMoreElements()) {
		i++;
		String name = (String)paramEnum.nextElement();
		out.println("폼 요소의 name속성명 [" + i + "번] :" + name + "<br>");

	}
	%>

</body>
</html>