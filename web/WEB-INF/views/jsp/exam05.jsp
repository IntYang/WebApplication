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
		이름: ${name3} <br/>
		멤버 이름: ${member3.name} <br/>
		멤버 나이: ${member3.age} <br>
		
		<hr/>
		
		<h3>게시물 정보</h3>
		번호: ${board.bno} <br/>
		제목: ${board.btitle} <br/>
		내용: ${board.bcontent} <br/>
		글쓴이: ${board.bwriter} <br/>
		날짜: ${board.bdate} <br/>
		
		<hr/>
		
		<h3>게시물 목록</h3>
		<table class="table table-bordered">
			<tr class="success">
				<td>번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>글쓴이</td>
				<td>날짜</td>
			</tr>
			<c:forEach var="b" items="${list}">
				<tr>
					<td>${b.bno}</td>
					<td>${b.btitle}</td>
					<td>${b.bcontent}</td>
					<td>${b.bwriter}</td>
					<td>${b.bdate}</td>
				</tr>
			</c:forEach>
		</table>
		
		
	</body>
</html>
