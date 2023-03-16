<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function loadDoc(){
   var xhttp = new XMLHttpRequest();//비동기통신에 대한 정보를 담을 객체 생성
   var currentState = " "; 
   
   if(this.readyState == XMLHttpRequest.UNSET)//this는xhttp를 나타냄
      currentState += "XMLHttpRequest 객체의 현재 상태는 UNSET(0)입니다.-XMLHttpRequest 객체가 생성된 .<br>";
      
      xhttp.onreadystatechange = function(){//0을 무조건받을수없어요 레디체인지는 디폴트값이 애초에 0이여서 0은 스위치에서 절대 실행될수없음
         switch (this.readyState){ //1,2,3,4다 모두다 갔다오게해요
         case XMLHttpRequest.UNSET://XMLHttpRequest.UNSET 이것 자체가 상수를 나타냄 상수명칭
            currentState += "XMLHttpRequest 객체의 현재 상태는 UNSET(0)입니다.-XMLHttpRequest 객체가 생성된 .<br>"
            break;
         case XMLHttpRequest.OPENED://상수1
            currentState += "XMLHttpRequest 객체의 현재 상태는 OPENED(1)입니다.-open() 메소드가 성공적으로 실행됨 .<br>"
            break;
         case XMLHttpRequest.HEADERS_RECEIVED://상수2
            currentState += "XMLHttpRequest 객체의 현재 상태는 HEADERS_RECEIVED(2)입니다.-모든요청에 대한 응답이 도착함 .<br>"
            break;
         case XMLHttpRequest.LOADING://상수3
            currentState += "XMLHttpRequest 객체의 현재 상태는 LOADING(3)입니다.-요청한 데이터를 처리중.<br>"
            break;
         case XMLHttpRequest.DONE://상수4
            currentState += "XMLHttpRequest 객체의 현재 상태는 DONE(4)입니다.-요청한 데이터의 처리가 완료되어 응답할 준비가 완료됨.<br>"
            break;
         }
         document.getElementById("status").innerHTML = currentState; //4를 받아요
         
         if(this.readyState == 4 && this.status == 200){ //status : 200 요청이 성공적으로 완료되었다는 의미
            document.getElementById("demo").innerHTML = xhttp.responseText;//xhttp.responseText;응답에 대해서 내용을 갖다가 html형식으로 만들어라
         }
      };
//       형식 :open(전달방식, URL주소, 동기여부);
//       xhttp.open("GET", "ajax_info.txt" , true); //객체가 생성되는 순간 0을 담아요 상황이 완료되야지만 
      xhttp.open("GET", "Gesipan/test.do" , true);
      
//       send() 메소드는 작성된 Ajax 요청을 서버로 전달한다
      xhttp.send(); //요기까지 와야지만 값을 위로 올려보내줌
}
//       function loadDoc(){
//          $("#demo").load("ajax_info.txt");
//          $("#demo").load("Gesipan/test.do");
//       }


</script>
</head>
<body>
<div id="status"></div><br><hr><br>
<div id ="demo">
<h2>The XMLHttpRequest Object</h2>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>
</body>
</html>