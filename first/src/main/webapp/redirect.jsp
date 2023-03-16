<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<%
String value = "자바";
String encodedValue = URLEncoder.encode(value, "utf-8");
//response.sendRedirect("08_06_index.jsp?name=" + value);
 response.sendRedirect("08_06_index.jsp?name=" + encodedValue);//여기에서 이미 decode처리가 됨 */
//redirect 'querystring'으로 보냄 받는곳에선 decode로 안 보내도 됨 
//인코딩 관련 케바케로 정리
/* 여기에 올 수 있는 건 문자열이 아님 */
%>
