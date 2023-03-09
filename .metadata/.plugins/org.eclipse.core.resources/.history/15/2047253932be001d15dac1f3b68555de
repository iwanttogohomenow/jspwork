<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함수 사용</title>
</head>
<body>
	<%
	String str1 = " Functions &lt;태그&gt;를 사용합니다.";
	%>
	<c:set var="str1" value="<%=str1%>" />
	<%--<c:set var="str1" value="Functions &lt;태그&gt;를 사용합니다."/> --%>
	<c:set var="str2" value="사용" />
	<!-- 	표현언어(expression Language (el)) 지역 변수 끌어올 수 없어도 에러 안냄 형식: ${ } -->
		 str1 = ${str1}
	<br> str2 = ${str2}
	<br> 
	
	
	tokens = ${tokens}
	<br>
	<hr>
	length(str1) = ${fn:length(str1)}
	<br> toUpperCase(str1) = "${fn:toUpperCase(str1)}"
	<br> toLowerCase(str1) = "${fn:toLowerCase(str2)}"
	<br> substring(str1, 3, 6) ="${fn:substring(str1, 3 ,6)}"
	<br> substringAfter(str1 , str2) = "${fn:substringAfter(str1, str2)}"
	<!--사용을 기준으로 잘라서 애프터는 뒤 before는 앞  -->
	<br> substringBefore(str1 ,str2) = "${fn:substringBefore(str1, str2)}"
	<br> trim(str1) = "${fn:trim(str1)}"
	<br> replace(str1, src, dest) = "${fn:replace(str1," " ,"-")}"
	<br> indexOf(str1, str2) = "${fn:indexOf(str1,str2)}"
	<br> startwWith(str1, 'Fun') = "${fn:startsWith(str1, 'Fun')}"
	<!-- 처음에 있으면 출력?한다고 하나 아무튼  -->
	<br> endsWith(str1, '합니다.')= "${fn:endsWith(str, '합니다.')}"
	<!--공백이 포함 안 돼있어서 false 에바다   -->
	<br> contains(str1, str2) = "${fn:contains(str1,str2)}"
	<br>

	<c:set var="smStr" value="java Server Page" />
	<c:set var="lgStr" value="JAVA" />
	containsIgnoreCase(str1, str2) = "${fn:containsIgnoreCase(smStr, lgStr)}"
	<!--대소문자 구분 안 하고 문자열이 포함되어있니?   -->
	<br>

	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
	<c:set var="arr" value="${fn:split(tokens, ',')}" />
	<!--배열로 반환 arr배열객체 만들어서 join마지막 꺼 없으면 구분자 안 붙임  -->
	join(arr , "-")="${fn:join(arr, '-')}"
	<br>

</body>
</html>