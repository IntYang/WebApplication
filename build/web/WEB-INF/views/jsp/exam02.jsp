<%--

[지시자]
1. 작성: <%@ ... %>
2. 종류
<%@page ... %> 
<%@include ... %> : 외부 파일을 가져와서 합친다. (포함시킨다.)
<%@taglib ... %>

--%>
<%@page contentType="text/html; charset=UTF-8" %>

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
		<h1>다른 패키지 클래스 사용</h1>
		<%@include file="exam02_include.jsp"%>
	</body>
</html>
