<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
<script>
function delUser () {
	let frm = document.forms[0];
	frm.action = "20_03_delete_process.jsp";
	frm.method = "post";
	frm.submit();
}	

function login() {
	let frm = document.forms[0];
	frm.action = "20_03_login_process.jsp";
	frm.method = "post";
	frm.submit();
}	


</script>
</head>
<body>


<%
if(session.getAttribute("id")!= null) {
	
	out.print(session.getAttribute("id").toString() + "자식아, 환영한다");
}else {
	

%>



<form method="post" action="20_03_update01_process.jsp">
	<p>아이디 : <input type="text" name="id"></p> 
	<p>비밀번호 : <input type="password" name="passwd"></p>
	<p>이름 : <input type="text" name="name"></p>
	<p>
	<input type="submit" value="회원수정" id="upUser">
	<input type="button" value="회원탈퇴"   onclick="delUser()">
	<input type = "button" value="로그인"  onclick ="login()">
	</p>
	</form>
<% 
}%>

</body>
</html>