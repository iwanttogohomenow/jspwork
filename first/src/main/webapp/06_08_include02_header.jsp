<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!int pageCount = 0;

	void addCount() {
		pageCount++;
/* 전역변수는 웹서버를 끄지 않는 한 지속적으로 연결되어있어서 톰캣을 끄고 다시 실행할 것  */
	}

	void resetCount() {
		pageCount = 0;
		System.out.println("출력");

	}%>
<%
addCount();
%>
<p>
	이 사이트 방문은
	<%=pageCount%>번째 입니다.
</p>