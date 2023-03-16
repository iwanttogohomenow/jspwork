<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function() {
	$("button").click(function() {
	$.ajax({
		url : "loginCheck", //서블릿을 호출하라
		type : "post", //ajax는 type이 post면 post형식으로 전송함,data속성은 전송할 파라미터를 정의하는 속성임 json형식으로 정의해야한다
		//data : {id : document.frm.id.value}, //파라미터가 되는 것 name으로 접근가능한 건 form태그 요소들만 가능
		cache : false;
		success : function(data) {//{"map" : {"str" : 사용하실 수 없는 아이디입니다., "id" : admin}}
			console.log("success");
			alert(data.map.id + "는" + data.map.str);
			
		},
		error : function() {
			alert('error'); //아이디 중복체크할때 사용
		}
		});
	});
});
</script>
</head>
<body>
	<form name="frm">
	<input type="text" name="id">
	<button type="button">아이디 중복체크</button>
	</form>
</body>
</html>