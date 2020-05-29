<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_03</title>
</head>
<body>

<h1>c:set</h1>
<hr>

<%-- 세션 컨텍스트 정보 삽입 --%>
<c:set var="sessionData" value="SESSION_DATA_123123" scope="session" />

<a href="./jstl_03_session.jsp">세션 확인</a>

<hr>

<% Map map = new HashMap(); //Java 영역%>

map : %{map }<br><br> <%-- Context 영역을 찾음 --%>

<%-- JSTL을 이용한 Map객체의 프로퍼티 삽입 (map.put(key, value) ) --%>
<c:set target="<%=map %>" property="A" value="Alice"/>
<c:set target="<%=map %>" property="B" value="Bob"/>

<hr>
A key : <%=map.get("A") %><br>
B key : ${map.B }<br>
<!--el은 컨텍스트 영역이기 때문에 출력이 되지않는다  -->

<hr>
<%-- JSTL을 이용한 map 객체를 session 컨텍스트 정보로 등록하기 --%>
<c:set var="m" value="<%=map %>" scope="session" />

m : ${m }<br>

<hr>
<jsp:useBean id="userBean" class="dto.User" />

<%-- 자바빈의 프로퍼티에 값 넣기 --%>
<jsp:setProperty property="id" name="userBean" value="AAA" />
<c:set target="${userBean }" property="pw" value="BBB"/>

user : ${userBean }<br>

<%-- JSTL을 이용하여 자바빈 userBean을 세션으로 등록하기 --%>
<c:set var="sessionUser" value="$[userBean ]" scope="session"/>

<%-- 모든 컨텍스트 영역에서 "sessionData" 로 등록된 변수 제거 --%>
<c:remove var="sessionData"/>

<%-- 세션 컨텍스트 영역에서 "sessionData" 로 등록된 변수 제거 --%>
<c:remove var="sessionData" scope="session"/>

<% session.removeAttribute("sessionData"); %>



</body>
</html>
