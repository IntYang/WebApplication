<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%for (int i = 1; i <= 4; i++) {%>
	<div>
		<img src="/WebApplication/resources/images/member0<%=i%>.png" width="30px" height="30px"/>
		<span>메세지<%=i%></span>
	</div>
<%}%>