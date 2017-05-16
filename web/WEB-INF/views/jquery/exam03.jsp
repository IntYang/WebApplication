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
			function changeDivContent(){
				//내용 전체를 바꿈
				$("#div1").html(" <p>변경된 내용</p>");
				//내용을 추가
				$("#div2").append(" <p>변경된 내용</p>");				
			}
			
			function changeCSS(){
				//속성 변경
				$("#div3").css("background-color", "#FFFF00");
				$("#div3").css("width", "300px");						
			}
		</script>
	</head>
	<body>
		<h1>DOM 내용 변경</h1>
		
		<h3>DIV 내용 변경</h3>
		<a href="javascript:changeDivContent()">DIV 내용 변경</a>
		<div id="div1">
			<img src="/WebApplication/resources/images/photo01.jpg" width="100px" height="100px"/>
		</div>
		<div id="div2">
			<img src="/WebApplication/resources/images/photo01.jpg" width="100px" height="100px"/>
		</div>
		
		<h3> CSS 변경 </h3>
		<a href="javascript:changeCSS()">변경</a>
		<div id="div3">
			<img src="/WebApplication/resources/images/photo01.jpg" width="100px" height="100px"/>
		</div>
		
		
	</body>
</html>