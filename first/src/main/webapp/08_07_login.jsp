<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ request.setCharacterEncoding %> 다국어가 깨지는것을 방지하기 위해서 쓰는것이라 영어나 숫자를 보내면 안 써도 됨 --%>
<!DOCTYPE html>
<%
String id = request.getParameter("memberid"); //user1
String pw= request.getParameter("memberPass"); //1111
if (id != null && id.equals("admin") && pw!= null && pw.equals("1234")) {
	/* && 그리고 -4가지의 조건이 true가 돼야 넘어감, admin이랑 user1이 안 맞을 때 else문을 탐*/
	response.sendRedirect("08_06_index.jsp");
	/* redirect는 데이터 전송을 하지 못함. 데이터 전송을 하기 위해서 필요한 게 쿼리스트링  */
	
	
} else {
	%>
	
	
	<html>
	<head>
	<title>
	로그인에 실패</title></head>
	<body>
	잘못된 아이디입니다.
	</body>
	<%
	}
	
 %>

</html>
