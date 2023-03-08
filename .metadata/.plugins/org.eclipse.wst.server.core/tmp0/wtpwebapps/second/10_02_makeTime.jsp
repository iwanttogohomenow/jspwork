<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%
Calendar cal = Calendar.getInstance();//static 붙어있어서.으로 접근가능한거
request.setAttribute("time", cal);
/* 키는 문자열이어야 하지만 값은 객체단위로 보내도 됨 */
%>
<jsp:forward page="10_02_viewTime.jsp" /> <!-- 기존페이지를 지우고 연결된 url의 내용들을 넣음 -->
<jsp:include page="10_02_viewTime.jsp"/>
<%-- <%@ include page="10_02_viewTime.jsp"%> --%>