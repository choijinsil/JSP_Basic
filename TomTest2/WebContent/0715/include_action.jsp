<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>include_action.jsp</h3>
	<hr>
	<%
		int su=300;
	%>
	<!--<jsp:include page="application_test.jsp"></jsp:include>-->
	<%@include file="application_test.jsp" %>
	
</body>
</html>