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
			//function은 프로그램이 body부분까지 실행되고 나서 실행된다 (그것때문에 사용)
			$(function(){
				var img = $("#img1");
				img.attr("src", "/WebApplication/resources/images/photo01.jpg");
			});
			
			$(function(){
				var img = $("#img1");
				img.attr("src", "/WebApplication/resources/images/photo01.jpg");
			});
			
			$(function(){
				console.log("log1");
			});
			
			$(function(){
				console.log("log2");
			});		
		</script>
	</head>
	<body>
		<h1>로드 완료 함수</h1>
		<img id="img1" width="100px" height="100px"/>
		
	</body>
</html>
