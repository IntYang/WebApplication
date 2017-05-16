<%--

[표현식]
1. 작성: ${ ... }
2. 용도: 객체의 Getter를 이용해서 리턴값을 얻고 출력

--%>


<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.mycompany.myapp.dto.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<title>JSP Page</title>
		<link href="/WebApplication/resources/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script src="/WebApplication/resources/jquery/jquery.js" type="text/javascript"></script>
		<script src="/WebApplication/resources/bootstrap-3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
	</head>
	<body>
		<div>
			<%String name = "홍길동";%>
			이름: <%=name%>
		</div>
		<div>
			<%Member member = new Member("홍길동", 30);%>
			이름: <%=member.getName()%>	<br/>
			나이: <%=member.getAge()%>
			
		</div>
				
		<hr/>
		
		<div>
			<%request.setAttribute("name", "홍길동");%>
			이름: <%=request.getAttribute("name")%> <br/>
			이름: ${name}
		</div>
		<hr/>
		<div>
			<%request.setAttribute("member", new Member("홍길동", 30));%>
			이름: <%=((Member)request.getAttribute("member")).getName()%>
			이름: ${member.name} <br/>
			나이: ${member.age}
		</div>
		<hr/>
		<div>
			<%request.getAttribute("name2");%>	<br/>
			이름: ${name2} <br/>			
			이름: ${member2.name} <br/>			
			나이: ${member2.age}
		</div>
		
	</body>
</html>
