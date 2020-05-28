<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>EL의 자료형</h1>
<hr>


정수형: ${123 }<br>
실수형: ${123/456 }<br>
단일문자: ${'A' }<br>
문자열: ${"Apple" }<br>
논리형: ${true }&nbsp;&nbsp;&nbsp;${false }<br>
null: ${null }<br>
<hr>
<%-- null은 출력하면 아무것도 안나온다 --%>

<h1>EL의 연산자</h1>

${123 eq 123}<br>

${10 > 20 }<br>
${10 gt 20 }<br>

${10 / 4 }<br>
${10 div 4 }<br>

str : ${str }<br>
empty str : ${empty str }<br>


<hr>

${str = "Banana" }<br>
${str }<br>

<hr>
<% int num = 333; //Java 영역에 선언된 변수 %>

<h3>자바 영역의 변수를 EL로 출력하기</h3>
num : ${num }<br>
empty num : ${empty num }<br>
<%-- EL을 자바 영역의 변수를 사용하지 못한다 --%>

<hr>
<% pageContext.setAttribute("num", num); //page context 영역에 변수 저장 %> 
<h3>자바 변수를 컨텍스트 영역에 저장하고 EL로 출력하기</h3>
num : ${num }<br>
empty num : ${empty num }<br>


<hr>
${data = "Cherry" }<br>

<%  //EL에서 선언된 변수는 page contextx scope에 저장된다
	String d = (String)pageContext.getAttribute("data"); 
   out.print("String d : " + d );
   %>







</body>
</html>
