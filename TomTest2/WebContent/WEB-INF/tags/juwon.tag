<%@tag import="com.encore.t0715.Product"%>
<%@ tag language="java" pageEncoding="UTF-8"%>

<h3><jsp:doBody/></h3>
<%
	Product p= new Product();
	String []list=p.getProductList();
	
%>
<table border="1" bgcolor="yellow" cellpadding="5">
	<%
		for(int i=0; i<list.length; i++){
			out.print("<tr><td>"+list[i]+"</td></tr>");
		}
	%>
</table>