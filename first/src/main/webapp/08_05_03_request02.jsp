<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #000;
}

th {
	background-color: #ccc;
}

td, th {
	padding: 10px 20px;
}
</style>
</head>

<body>
	<%
	String hostValue = request.getHeader("host");
	String alValue = request.getHeader("accept-language");
	/* request에는 내가 보낸 값만이 아닌 다른값들도 담겨있음 f12 개발자도구 network header 확인 */
	%>
	<table>
		<tr>
			<th>호스트명</th>
			<th>설정된 언어</th>
		</tr>
		<tr>
			<td><%=hostValue%></td>
			<td><%=alValue%></td>
		</tr>

	</table>

</body>
</html>