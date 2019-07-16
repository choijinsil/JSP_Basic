<%@page import="com.encore.t0715.Person"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL(JSP Standard Tag Library) 테스트</h3>
	<hr>
	<%
		// Controller에서 ArrayList로 저장된 데이터가 있다는 가정
		ArrayList<String> list = new ArrayList<>();
		list.add("가");
		list.add("나");
		list.add("다");
		list.add("라");
		request.setAttribute("nameList", list); // 뷰(JSP)와 공유하기 위해, 

		ArrayList<Person> list2 = new ArrayList<>();
		list2.add(new Person("나길동", 13, "학생"));
		list2.add(new Person("송혜교", 33, "연예인"));
		list2.add(new Person("siri", 29, "학생"));
		list2.add(new Person("hana", 28, "학생"));

		request.setAttribute("personList", list2);
	%>
	<h3>이름목록</h3>
	<hr>
	<c:forEach var="i" items="${nameList }"><!-- 배열데이터 출력 -->
		<p>${i }</p>
	</c:forEach>
	<hr color="red">
	<h3>사람목록1(JsTL사용)</h3>
	<c:forEach items="${personList }" var="p">
		이름:${p.name }, 나이: ${p.age }, 직업: ${p.job }<br>
	</c:forEach>
	
	
</body>
</html>