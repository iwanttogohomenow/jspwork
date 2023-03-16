<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page buffer ="1kb" autoFlush="true"%> --%>  <!-- 1kb 모으면 붓고 하는 거  -->
<%-- <%@ page buffer="1kb" autoFlush="false" %> --%> <!--자동으로 비워지지 않음 : 버퍼 오버플로우 => 버퍼의 용량을 넘어섰다 ; -->
<!DOCTYPE html>
<html>
<head>

<title>autoFlush 속성</title>
</head>
<body>
	<h2>out 객체의 buffer속성</h2>
	<p>buffer속성을 사용하여 buffer를 지정하면 out객체는 기본적으로 설정한 값이 크기의 버퍼를 내부적으로
		사용한다.</p>
	<p>autoFlush속성은 버퍼가 가득차면 비울 지(브라우저로 출력 결과를 전송함)의 여부를 지정하는 속성인데,
		기본값은 true이다.</p>
	<%
	for (int i = 0; i < 1000; i++) {
	%>
	1234 <!--반복하는 게 1234 html텍스트라서 바깥에 있어야 함,스크립트릿은 연결될 수 있음-->
	<%
	//out.flush(); /* 수동으로 비워주는 방법 autoFlush = "false" ,out.flush */
	//out.clear(); /* 버퍼 내용을 제거한다. 정해진 용량이 채워지기도 전에 clear하면 나타나는 게 없음, 비울 게 없으면 오류남???이미 배출된 버퍼를 폐기하려는 시도 오류남    */
	//out.clearBuffer(); /* 버퍼에 내용이 있으면 지우고,없어도 에러를 발생시키지 않음(소스코드가 계속 돎) */
	//내보내는 기능이 flush , 8kb까지 내용을 쌓아놓고(8kb가 기본 용량),autoflush는 기본값이 true	}
	%>
	
실제 설정된 버퍼 크기: <%= out.getBufferSize() %> Byte<br>
남은 크기: <%=out.getRemaining() %> Byte<br>
autoFlush여부 : <%= out.isAutoFlush() %> 
<%}%>
</body>
</html>