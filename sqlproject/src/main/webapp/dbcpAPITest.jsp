<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import="javax.sql.*" %>
    <%@ page import ="javax.naming.*" %>
<%
Connection conn =null;
try {
	Context init = new InitialContext(); //context 객체를 만들어라
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB"); //정해진값 jdbc까지 /뒤는 알아서 이름 붙이는거라는데......ㅎ.ㅎ,lookup 이름이 jdbc부터 되어있는 자원을
	//찾아와라,참조해라 
	conn = ds.getConnection();
	
	out.println("<h3>연결되었습니다.</h3>");

	
}catch(Exception e) {
	
	out.println("<h3>연결에 실패하였습니다.</h3>");
	e.printStackTrace();
}
%>
<!-- 따로빼서 dbconn으로 만들어도댐 -->