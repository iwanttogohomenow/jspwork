<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<!--이거 하나만 기술해도 됨  -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//현재 파일 위치의 상대경로 지정가능
	//String savePath = application.getRealPath("파일을 저장할 폴더");
	//예시: String savePath = application.getRealPath("\product");
	String fileUploadPath = "C:\\uploadts";
	/* 디렉토리 없어도 실행됨 */

	//파일 업로드를 위해 객체 생성
	DiskFileUpload upload = new DiskFileUpload();
	//파일 업로드 할 때 용량을 제한하는 방법 :upload.setSizeMax(1000000);
	
	//홈페이지에서 전송된 요청 파라미터를 가져오기
	List items = upload.parseRequest(request);
	//요청 파라미터를 모아놓은 item배열객체를 가져오기 쉽게 iterator객체로 변환함.
	Iterator params = items.iterator();

	while (params.hasNext()) 
	{
		FileItem fileItem = (FileItem) params.next();
		if (!fileItem.isFormField()) {
			String fileName = fileItem.getName(); //파일name떼오는 법 
			//original file이름 
			out.print("fileName:" + fileName + "<br>");
			/* c:\\uploadt\\w1.png - > \\두개 /한개  */
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
// 			fileName = fileName.substring(fileName.lastIndexOf(".")) + "_1"+"."+fileName.substring);
			File file = new File(fileUploadPath + "/" + fileName);
// 			"C:/uploadts/w1.png"
			fileItem.write(file);
			// 파일이 실제로 업로드 되는 시점

		} else {

			//필드 이름
			String name = fileItem.getFieldName(); //"name"
			//필드 값, 한글 인코딩
			String value = new String((fileItem.getString()).getBytes("8859_1"), "utf-8");
			/*8851_9 입력한 데이터 한글 안깨지게 해주는 것  */
			out.print(name + ":" + value + "<br>");
		}

	}
	%>
	<!--file마일스 ?  -->

</body>
</html>