<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="20_01_dbconn.jsp" %>
<%
	//request.setCharacterEncoding("utf-8"); 필터때메 노필요
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
// 	Statement stmt = null;
	PreparedStatement stmt = null;
	
	try {
// 		String sql = "insert into member(id , passwd , name) "+"values('"+id + "','" + passwd + "','" +name +"')"; //개헷갈려
		String sql ="insert into member(id,passwd , name) values(?,?,?)";
		stmt= conn.prepareStatement(sql);
		stmt.setString(1,id);
		stmt.setString(2, passwd);
		stmt.setString(3,name);
// 		stmt = conn.createStatement();
		stmt.executeUpdate(); 
		out.println("Member 테이블 삽입이 성공했습니다.");
	}catch (SQLException ex) {
	
	out.println("Member 테이블 삽입이 실패했습니다.<br>");
	out.println("SQLException : "+ ex.getMessage());
		
	}finally {
		
		if(stmt != null) 
			stmt.close();
		if(conn != null) 
			conn.close();
}	
	
	%>
</body>
</html>