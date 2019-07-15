<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="true">
		<font><strong>나는 Siri다.</strong></font>
		<br>
	</c:if>

	<c:if test="${param.age <20}">
		<font color="blue">나이가 20미만입니다.</font>
	</c:if>

	<c:if test="${param.age>20}">
		<font color="blue">나이가 20이상입니다.</font>
	</c:if>

	<hr>
	<%-- 나이 20대,30대 체크 --%>
	<c:choose>
		<%-- if~else if~else문과 유사 --%>
		<c:when test="${param.age<20 || param.age>39}">
			<font color="green">나이가 20대 또는 30대가 아닙니다!!</font>
			<br>
		</c:when>
		<c:when test="${param.age < 30 }">
			<%--  20~39 --%>
			<font color="green">나이가 20대 입니다!!</font>
			<br>
		</c:when>
		<c:otherwise>
			<font color="green">나이가 30대 입니다!!</font>
			<br>
		</c:otherwise>
	</c:choose>
	
	<hr>
	<h4>forEach 테스트</h4>
	<%-- JSL 안녕!  --%>
	<c:forEach begin="1" end="5" var="i" varStatus="stat" step="1">
		인덱스: ${stat.index}, 카운트: ${stat.count}
		
		<c:if test="${stat.count%2==0 }">
		<font color="red">JSTL안녕!>>>>>>>>${i }</font><br>
		</c:if>

		
		<c:if test="${stat.count%2!=0 }">
		<font color="blue">JSTL안녕!>>>>>>>>${i }</font><br>
		</c:if>
		
	</c:forEach>

</body>
</html>