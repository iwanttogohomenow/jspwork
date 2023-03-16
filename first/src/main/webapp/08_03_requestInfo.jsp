<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 요청을 보내는페이지와 요청을 받는 페이지 사이에 request객체가 있음,request객체는 자동으로 생성됨-->
<!DOCTYPE html>
<% request.setCharacterEncoding("utf-8");%><!-- post형식에서 encoding할때 쓰는 방법 -->
<html>  
<head>
<title>클라이언트 및 서버 정보</title><meta charset="UTF-8">

</head>
<body>
<h2>현재페이지 url : http://localhost:8090/first/08_03_requestInfo.jsp</h2>
<h3>프로토콜 : http</h3>
<h2>ip주소(=서버이름) : localhost</h2>
<h3>포트번호 : 8090</h3>
<h3>경로 : first/08_03_requestInfo.jsp</h3>
http://localhost:8090/first/08_03_requestInfo.jsp?id=admin&name=관리자
<dl>
<dt><strong>localhost 정보</strong></dt>
<dd>IPv4 주소 형식 값으로 표시: 127.0.0.1</dd>
<dd>IPv6 주소 형식 값으로 표시: 0:0:0:0:0:0:0:1</dd>

</dl>

<ul>
<li>요청 정보 인코딩= <%= request.getCharacterEncoding() %><br>?
<small style="color:red">클라이언트가 전송한 요청 정보의 문자셋을 구함.String으로 반환</small>
</li>
<li>
파라미터 정보1 = <%= request.getParameter("id") %><br> 
파라미터 정보2 = <%= java.net.URLDecoder.decode(request.getParameter("name")) %><br><!-- 풀어줘 -->
<%-- 파라미터 정보 2= <%=request.getParameter("name")%><br> --%>
</li>

</ul>

</body>
</html>