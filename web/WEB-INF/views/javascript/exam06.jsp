<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<title>JSP Page</title>
		<link href="/WebApplication/resources/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<script src="/WebApplication/resources/jquery/jquery.js" type="text/javascript"></script>
		<script src="/WebApplication/resources/bootstrap-3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
		<script>			
			var now = new Date();
			console.log(now.getFullYear());
			console.log(now.getMonth() + 1);
			console.log(now.getDate());
			console.log(now.getDay());
		</script>			
	</head>
	<body>
		<h1>날짜 정보 얻기</h1>
	</body>
</html>
