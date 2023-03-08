<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.net.URL"%>
<!DOCTYPE html>
<html>
<head>
<title>Application기본 객체 사용하여 자원 읽기</title>
</head>
<body>
	<%
	String resourcePath = "/message/notice.txt";
	//URL url = application.getResource(resourcePath);
	URL url = new URL("https://www.naver.com");
	%>
	자원의 실제 경로:
	<br>
	<%=application.getRealPath(resourcePath)%>
	<!--getRealPath(물리적주소 하드웨어에 저장돼있는 위치)   -->
	<br>
	<%=url%>
	<br> --------------
	<br>
	<%=resourcePath%>
	의 내용
	<br> --------------
	<br>
	<%
	char[] buff = new char[128];
	int len = -1;

	try {

		InputStreamReader br = new InputStreamReader(application.getResourceAsStream(resourcePath), "UTF-8");
		while ((len = br.read(buff)) != -1) {
			
			out.print(new String(buff, 0, len));/* 어떻게 출력되는 지 모르겠는데? */
			/*out.print 웹에 출력  */
			/*(파일)외부 데이터 통신이 일어나면 반드시 예외처리를 해야한다.  */
		}
		out.print("<br>"); 
		br.close();
		/* Stream객체를 사용했으면 닫아야 함 */
		
	} catch (IOException ex) {
		out.println("익셉션 발생: " + ex.getMessage());

	}

// 	try {
// 		InputStreamReader br = new InputStreamReader(url.openStream(), "UTF-8");
// 		while ((len = br.read(buff)) != -1) {
// 			out.print(new String(buff, 0, len));

// 		}
// 		out.print("<br>");
// 		br.close();

// 	} catch (IOException ex) {
// 		out.println("익셉션 발생: " + ex.getMessage());
// 	}
	%>

</body>
</html>