<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--cos.jar를 이용하여 파일 업로드하는방법은 이거 하나다  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>
	<h2>MultipartRequest를 이용한 파일 업로드</h2>
	<dl>
		<dd>
			- cos.jar파일 필요: <a href="http://www.servlets.com/cos">다운받기</a>
		</dd>



	</dl>
	<form name="fileForm" method="post" enctype="multipart/form-data"
		action="11_01_fileupload01_process.jsp">
		<!--두가지 조건을 맞춰야지만 file을 전송할 수 있음  -->
		<fieldset>
			<legend>파일 업로드 폼</legend>
			<p>
				이 름 : <input type="text" name="name">
			</p>
			<p>
				제 목 : <input type="text" name="subject">
			</p>
			<p>
				파 일 : <input type="file" name="filename" multiple="multiple">
			</p>
			<p>
				<input type="submit" value="파일 올리기">
			</p>

		</fieldset>
</body>
</html>