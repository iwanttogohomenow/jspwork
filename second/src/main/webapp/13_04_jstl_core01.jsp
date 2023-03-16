<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core태그</title>
<!-- ***core태그를 사용하는 if,else문*** -->
</head>
<body>
	<!--c:out을 사용하는 이유
http://2ham-s.tistory.com/274  -->
	<h2>c:set태그 - 변수의 값이나 객체를 설정(setAttribute 와 동일한 역할을 한다.)</h2>
	<c:set var="num" value="50" />
	<%--=
	<c:set var="num" >50</c:set>
<c:set var="num" value="50" scope="page"/> scope="page" 이 변수는 이 페이지에서만 사용 가능하다--%> 
	num값은 : ${num} <!--50담아서 출력  -->
	<br>
	<hr>

	<h2>c:out태그 - 변수의 값을 출력</h2>
	<c:out value="${num}" default="0" />
	<c:out value="작성자" default="Admin" />
	<c:out value="hello world!!!!!!!!" />
	<!-- c:out = out.print기능 -->
	<br>
	<hr>

	<h2>c:forEach태그 - 반복문 수행</h2>
	범위안에서 반복문을 수행한다. for와 동일한 역할을 한다.
	<br> begin : 초기 값, and : 마지막 값 , step : 증감값
	<br>
	<br>
	<c:out value="수식: resNum = {(i+num-2)%7}" />
	<br>
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:set var="resNum" value="${(i+num-2)%7}"></c:set>
		<c:out value="num: ${num}" />
		<c:out value="i: ${i}" />
		<c:out value="resNum: ${resNum}" />
		<br>
	</c:forEach>
<%--<c:forEach var="i" begin="1" end="10" step="1">=
<%for(int i; i<=10; i++) { --%>		
<%-- 	} %> --%>
	<!--forEach 시작태그와 종료태그 있어야 함 시작태그 뒤에 반복할 어떤것을 넣어줌 -->
	<hr>

	<h2>c:if태그 - 조건문 수행</h2>
	조건문을 수행한다. if와 동일한 역할을 한다.
	<br>
	<jsp:useBean id="memberBean" class="com.dto.MemberBean" />
	<c:if test="${memberBean.name eq '이루마'}">
		<p>이름은 ${memberBean.name}입니다.</p>
	</c:if>
	<!-- memberBean.name=getName을 줄인것 getter가 없으면 접근 불가 eq ->같니? ne ->같지 않니?-->
	<hr>

	<h2>c:choose / c:when태그 - 조건문 수행</h2>
	if, else 구문 역할을 한다.
	<br>
	<c:choose>
		<c:when test="${memberBean.name eq '고길동'}">
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:when>
		<c:when test="${memberBean.name eq '홍길순'}">
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:when>
		<c:otherwise>
			<p>이름은 ${memberBean.name}입니다.</p>
		</c:otherwise>
	</c:choose>
	<!-- otherwise ->else구문 ,조건 붙는 건 when 없을땐 otherwise -->
</body>
</html>