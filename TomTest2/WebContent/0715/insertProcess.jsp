<%@page import="com.encore.t0715.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="vo" class="com.encore.t0715.Person"/>
<jsp:setProperty property="*" name="vo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>DB입력처리</h3>
	<hr>
	<%
		out.print(vo);
	%>

</body>
</html>