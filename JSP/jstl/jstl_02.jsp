<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>c:out</h1>
<hr>

<c:out value="Hello! JSTL!"/><br>
Hello! JSTL!
<hr>

eldata : <c:out value="${eldata } "/><br>
empty eldata :<c:out value="${empty eldata }" />
<hr>

<c:out value="" default="null값 출력함" /><br><%-- 빈 문자열 --%>
<c:out value="null" default="null값 출력함" /><br><%-- "null" 문자열 --%>
<c:out value="${null }" default="null값 출력함" /><br><%-- null 값 --%>

<c:out value="${eldata }" default="null값 출력함" /><br><%-- null 값 --%>

<c:out value="<%=null %>" default="null값 출력함" /><br><%--null 값 --%>
<hr>

<c:out value="<h3>태그 출력</h3>"/><%-- innerText 와 비슷한 동작 --%>
<c:out value="<h3>태그 출력</h3>" escapeXml="false"/>

<%="<h3>태그 출력</h3>"%><%-- innerHTML 과 비슷한 동작  --%>
<%="&lt;h3&gt;태그 출력&lt;/h3&gt;" %>


&nbsp;<br>

&laquo;<br>
&raquo;<br>

&larr;<br>
&rarr;<br>
<hr>

<% String str = "테스트 문자열"; //Java 영역 변수 %>
str 출력 : <c:out value="${str }" /><br>
str 출력 : <c:out value="${pageScope.str }" /><br>
str 출력 : <c:out value="<%=str %>" /><br> 
<!-- expression 만 java코드를 취급 -->

<%-- 스크립트릿은 JSTL의 속성값으로 적용되지 않는다 --%>
<%-- EL과 Expression을 주로 사용해야 한다 --%>
str 출력 : <c:out value="<% out.print(str); %>"/><br>

<hr>
<% request.setAttribute("str", str); //request컨텍스트 영역에 추가 %>
str 출력 : <c:out value="${str }" /><br>
str 출력 : <c:out value="${requestScope.s }"/><br>
<%-- str 출력 : <c:out value="<%=s %>" /><br> --%>


</body>
</html>
