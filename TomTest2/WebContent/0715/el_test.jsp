<%@page import="com.encore.t0715.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL(표현언어=출력언어) 테스트</h3>
	<%
		// 영역에 데이터 저장 -- MVC에서는 주로 Controller가 담당
		pageContext.setAttribute("k1", "홍길동");
		request.setAttribute("k2", "siri");
		session.setAttribute("k3", "hana");
		application.setAttribute("k4", "yuna");
		
		request.setAttribute("k5", new Person("김유신",14,"화랑")); 
		session.setAttribute("k5", "송혜교");
		application.setAttribute("k5", "송중기");
		
		int su=33;
	%>	
	
	<h4>EL 테스트</h4>
	<hr>
	k1: ${k1}<br>
	k2: ${k2} <br>
	k3: ${k3} <br>
	k4: ${k4} <br>
	k5: ${requestScope.k5} <br>
	k5: ${sessionScope.k5} <br>
	k5: ${applicationScope.k5} <br>
	su: ${su } <br>
	k6: ${k6 }<font color="red">없는 키값</font><br> 
	
	<hr color="orange">
	<h3>입력폼</h3>
	<form action="print.jsp" method="post">
		이름: <input type="text" name="username"><br>
		나이: <input type="text" name="userage"><br>
		<button type="submit">전송</button>
	</form>
	
</body>
</html>