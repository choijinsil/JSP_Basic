<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	request.setCharacterEncoding("utf-8");
%>
<head>
<meta charset="UTF-8">
<title>파라미터 데이터 출력</title>
</head>
<body>
	<h3>파라미터 데이터 출력</h3>
		이름:<%=request.getParameter("username") %> <br>
		나이:<%=request.getParameter("userage") %>  <br>
		아무거나(존재하지 않는 파라미터):<%=request.getParameter("any") %> <br>
		<hr color="orange">
		이름: ${param.username }<br>
		나이: ${param.userage }<br>
		아무거나: <br>
</body>
</html>