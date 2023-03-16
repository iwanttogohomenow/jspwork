<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<% String id = request.getParameter("id");
	String password = 
			request.getParameter("passwd");
	String username = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender=request.getParameter("gender");
	
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment").replace("\n","<br>");
	%>
	
	<p>
	아이디 : <%=id %>
	<p>비밀번호: <%= password %>
	<p>이름: <%= username %>
	<p>폰: <%= phone1 %>- <%= phone2 %>-<%= phone3 %>
	<p>성별: <%= gender %>
	<p>취미: <%-- <%=hobby1%> <%=hobby2%> <%=hobby3%> --%>
	<% 
	if (hobby != null) {
		for (int i = 0; i < hobby.length; i++){
			out.println(" "+hobby[i]);
		}
	}else{
		out.print("선택한 취미가 없습니다.");
		
	}
	%>
	</p>
	<p>가입 인사: <%=comment %></p>
	<% pageContext.setAttribute("LF","\n");
	%>
<%-- 	<% pageContext.setAttribute("comment" , comment);%> --%>
<c:set var="com" value="<%=comment %>"/>
<p>

<textarea name="comment" cols="30" rows="3" placeholder="가입인사를 입력해주세요"><%= comment %></textarea>
</p>
<p>
<%-- <c:out escapeXml ="false" value="${fn:replace( com , LF , '<br>')}"></c:out></p> --%>
	
</body>
</html>