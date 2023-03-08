<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!--파일을 업로드 할 수 있게 준비  -->
<%
/* DefalutFileRenamePolicy()에서 드는 파일이름이 중복될 경우 파일명 뒤에
1과 같은 숫자를 붙여 파일 이름을 rename해주는 역할을 한다.

MultipartRequest는 객체를 생성하자마자 파일을 바로 업로드한다.
파일을 저장할 경로는 직접 써주기보다는 톰캣의 내장 객체인 application객체의 getRealPath()메서드를 사용하는 것이 좋다
String savePath = application.getRealPath("파일을 저장할 폴더");
예시: String savePath = application.getRealPath("\product"); 
MultipartRequest multi = new MultipartRequest(request, savaPath);
용량 :1024 * 1024 * 5 => 5MB / 1024 * 1024 * 1024 * 5 =>5GB
*/

String savePath = "C:\\upload";
File targetDir = new File(savePath);

//디렉토리가 없을 경우 생성하기
if (!targetDir.exists()) {
	targetDir.mkdirs();
}

MultipartRequest multi = new MultipartRequest(request, savePath, 5 * 1024 * 1024, "utf-8",
		new DefaultFileRenamePolicy());      
//감싼다음에 파라미터로 떼올 수 잇음 (타입이 파일이 아닌것들의 name들을 떼옴) 
/* MultipartRequest(request객체, "파일이 저장될 경로", 모든 파일 최대 허용 용량, "파일 인코딩 설정" , new DefaultFileRenamePolicy()); 동일한 이름이 있다면 알아서 파일명을 변경
/* 파일 업로드는 위 한 줄로 쌉가넝 */

//전송된 파일 타입의 파라미터 이름들을 Enumeration타입으로 반환한다
//Enumeration 은 객체타입을 저장하는것으로서 형변환이 없이 객체 타입을 자유롭게 저장하고
//꺼내기 위해서 사용한다.

//MultipartRequest를 사용하게 되면 톰캣의 request객체의 getParameter메서드를 이용하여
//값을 전달받지 못한다

//따라서 MultipartRequest를 사용하고 값을 전달 받기 위해서는 MultipartRequeest객체의
//getParameter메서드를 이용하여 값을 전달받아야 한다.
//파일에 대한 정보는 파라미터로 가져올 수사 없다.

Enumeration params = multi.getParameterNames(); //"name", "subject"  
/*Enumeration 엘리먼트로 떼옴  */
while (params.hasMoreElements()) {
	String name = (String) params.nextElement();
	String value = multi.getParameter(name); 
	out.println(name + " = " + value + "<br>"); 
}
out.println("---------------------------------<br>");

Enumeration files = multi.getFileNames(); //"filename"
while (files.hasMoreElements()) {
	String name = (String) files.nextElement();
	String original = multi.getOriginalFileName(name); //실제로 업로드한 이름을 가져와라 0번째 파일이름밖에 인식 못 함
	String filename = multi.getFilesystemName(name);
	String type = multi.getContentType(name);
	File file = multi.getFile(name);

	out.println("요청 파라미터 이름: " + name + "<br>");
	out.println("실제 파일 이름 : " + original + "<br>");
	out.println("저장 파일 이름 : " + filename + "<br>");
	out.println("파일 콘텐츠 타입 : " + type + "<br>");

	if (file != null) {

		out.println("파일 크기 : " + file.length());
		out.println("<br>");
	}
 
}
%>


%>
