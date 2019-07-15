<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Insert title here</title>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
	<form>
		<table class="table table-striped" >
			<tr >
				<th>2단</th>
				<th>3단</th>
				<th>4단</th>
				<th>5단</th>
				<th>6단</th>
				<th>7단</th>
				<th>8단</th>
				<th>9단</th>
			</tr>
			<%!int i;
	int j;
	int result;%>
			<tr>
			<%
				for (i = 1; i < 10; i++) {
					for (j = 2; j < 10; j++) {
						result = j * i;
			%>
				<td><%=j %>*<%=i %>=<%=result%></td>

			<%}%>
			</tr>
			<%}%>
			
		</table>
	</form>
</body>
</html>