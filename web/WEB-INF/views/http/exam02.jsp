<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<title>JSP Page</title>
		<link href="/WebApplication/resources/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script src="/WebApplication/resources/jquery/jquery.js" type="text/javascript"></script>
		<script src="/WebApplication/resources/bootstrap-3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
	</head>
	<body>
		<h1>요청 HTTP 정보 얻기</h1>
		1. 요청 방식(method): ${method}<br/>
		2. 요청 URI: ${uri}<br/>
		3. 쿼리 문자열: ${queryString}<br/>
		4. 요청 파라미터(type): ${type}<br/>
		5. 요청 파라미터(bno): ${bno}<br/>		
		6. 요청 파라미터(hobby): 
		<c:forEach var="h" items="${hobby}" varStatus="status">
			${h} <c:if test="${!status.last}">,</c:if>
		</c:forEach>
		<br/>
		7. 요청 헤더값(User-Agent): ${userAgent} <br/>
		
	</body>
</html>
