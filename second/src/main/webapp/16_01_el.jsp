<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setAttribute("person", "이츠키");
pageContext.setAttribute("person", "아마기");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 기본객체</title>
</head>
<body>
	<h2>기본객체를 사용한 EL</h2>
	<fmt:requestEncoding value="utf-8" />
	요청 URI : ${pageContext.request.requestURI}
	<!-- 가져오는 방법  -->
	<br> request에 설정한 person 속성 : ${requestScope.person}
<!-- 	request영역에 있는걸로 가져와라 동일한 이름으로 설정했을때 쓰는거 requestScope  -->
	<br>
	<hr>
	<%-- request에 설정한 person 속성 : ${person} --%>
	<%-- request에 설정한 person 속성 :<%= request.getAttribute("person") %> --%>
<!-- param.code = > request.getParameter("code"); -->
	
<!-- 	표현언어에서 제공하는 기본객체 param name이 code인 걸 가져와라 -->
	<c:choose>
		<c:when test="${param.code ne null}">
			<p>code 파라미터 : ${param.code}</p>
		</c:when>
		<c:otherwise>
			<p>
				code 파라미터가 없습니다.<br>code파라미터를 전송해주세요.
			</p>
		</c:otherwise>
	</c:choose>
	<form method="post">
		<input type="text" name="code"> 
		<input type="submit" value="전송">
	</form>

</body>
</html>