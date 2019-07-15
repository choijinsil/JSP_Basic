<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tld/myTag.tld" prefix="my" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="you" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>내가만든 커스텀 태그</h3>
	<hr>
	<my:gildong/>
	<hr color="orange">
	<you:juwon>상품목록</you:juwon>
</body>
</html>