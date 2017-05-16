<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset=UTF-8">
		<title>JSP Page</title>
		<script>
			//전역 변수
			var v1 = "A";
			
			//함수단위의 변수 (Javascript는 함수단위)
			function fun1(){
				//로컬 변수
				var v2 = "B";				
				if(true){
					var v3 = "C";
					//v4는 전역변수 (함수 안에서 var없이 사용)
					v4 = "D";
				}
				console.log(v1);
				console.log(v2);
				console.log(v3);
				console.log(v4);
			}
			fun1();
			console.log(v1);
			//console.log(v2);
			//console.log(v3);
			//v4는 전역변수이므로 사용가능
			console.log(v4);
		</script>
	</head>
	<body>

	</body>
</html>
