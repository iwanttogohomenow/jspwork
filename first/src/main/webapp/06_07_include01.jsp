<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<%= a %>
<h4>------------------현재 페이지 영역 ------------------</h4>
<%@ include file="06_07_include01_header.jsp"%> <!-- include 소스코드가 통째로 들어옴, 변수선언도 이어서 쓸 수 있음 -->
</body>
</html>