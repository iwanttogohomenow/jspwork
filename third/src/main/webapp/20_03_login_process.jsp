<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="20_01_dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
PreparedStatement ps=null;
ResultSet rs=null;

String id =request.getParameter("id");
String passwd = request.getParameter("passwd");

try {
	String sql= "select count(*) cnt from member where id= ? and passwd = ?";
ps = conn.prepareStatement(sql);
ps.setString(1,id );
ps.setString(2, passwd );

rs = ps.executeQuery();
int a = 0;

if(rs.next()) {
a =rs.getInt("cnt");  

}

if(a>0) {
session.setAttribute("id", id );
out.print("로그인 되었습니다.");
} else {
response.sendRedirect("20_03_update01.jsp"); //로그인페이지
}
}catch(Exception ex)
{
	
out.print("에러가 발생했습니다.");

 }finally{
	 if(rs != null)
		 rs.close();
	 if(ps != null)
		 ps.close();
	 if(conn != null) 
		 conn.close();
	 
 }
	


%>


</body>
</html>