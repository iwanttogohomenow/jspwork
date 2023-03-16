<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>폼 생성</title><meta charset="UTF-8">
</head>
<body>
<form action="08_05_01_formParameter.jsp" method="post">
<!-- <form action="08_04_requestInfo.jsp?id=admin" method="post" accept-charset="utf-8"> --><!-- post와 get방식을 혼합해서 보내는 방식



 -->
이름: <input type="text" name="name" size="30"><br>
주소 : <input type="text" name="address" size="30"><br>
좋아하는 동물:

<label><input type="checkbox" name="pet" value="dog">강아지</label>
<label><input type="checkbox" name="pet" value="cat">고양이</label>
<label><input type="checkbox" name="pet" value="penguin">펭귄</label>
<br>
<input type="submit" value="전송">
</form>

</body>
</html>