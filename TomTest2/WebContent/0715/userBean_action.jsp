<%@page import="com.encore.t0715.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%--userBean_action.jsp
	<userBean>태그는 특정 클래스의 객체 생성을 하는 역할.
 --%>
 <jsp:useBean id="p" class="com.encore.t0715.Person" scope="page"></jsp:useBean>
 <jsp:setProperty property="name" name="p" value="san"/>
 <jsp:setProperty property="age" name="p" value="15"/>
 <jsp:setProperty property="job" name="p" value="학생"/>
 <%
 	// useBean id와 같은 값으로 변수 선언시오류남
 	//Person p= new Person(); --오류
 	Person p2= new Person(); // 가능
 %>
<body> 
	<h3>useBean_action.jsp</h3>
	<hr>
	<% p.setName("siri");%>
	
	<%=p %><br>
	이름:<jsp:getProperty property="name" name="p"/><br>
	이름2: <%= p.getName() %><br>
</body>
</html>