<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <!-- 요청을 보내는 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>파라미터 전송 테스트</h3>
	<p>request 객체 표현</p>
	<br> jsp:param 액션 태그로 전송한 데이터는 request영역을 공유하며,
	<br> 데이터 전송은 눈에 보이지는 않지만 쿼리스트링방식처럼 url뒤에 key=value형식으로 붙여 보낸다.
	<!-- 어떤 방식으로 보내든 request에 저장됨 -->
	
	<br>
	<br>
	<jsp:forward page="08_03_requestInfo.jsp">
	
		<jsp:param name="id" value="admin" />
		<jsp:param name="name"
			value='<%=java.net.URLEncoder.encode("관리자")%>' /><!-- URLEncoder아스키코드값으로 변환해주는 것 아스키코드로 포장해줘 -->
	</jsp:forward>
<!-- forward사이에 기술할 거 없으면 안 써도 됨 , jsp:forward 포워딩 방식으로 이동하라(url 변경x),액션태그는 예민해서 forward사이에 주석치면 안 됨
,단 표현태그와 스크립트릿태그(출력문이 포함되는)는 들어갈 수 있음-->


</body>
</html>