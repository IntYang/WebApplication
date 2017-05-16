<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Page</title>
		<script>
				//변수 선언
				var v1 = 10;
				console.log("v1: " + v1 + " " + typeof(v1));
				
				var v2 = "자바스크립트";
				console.log("v2: " + v2+ " " + typeof(v2));
				
				var v3 = true;
				console.log("v3: " + v3 + " " + typeof(v3));
				
				var v4 = [10, 20, 30];
				console.log(v4);
				console.log("v4: " + v4 + " " + typeof(v4));
				
				var v5 = { "mid":"white", "mname":"홍길동", "mage":30 };
				console.log(v5);
				console.log("v5: " + v5 + " " + typeof(v5));
				
				var v6 = new Date();				
				console.log("v6: " + v6 + " " + typeof(v6));
				
				var v7 = null;
				console.log("v7: " + v7 + " " + typeof(v7));
				
				//v8이 함수이름
				var v8 = function() { console.log("function() 실행");};
				console.log("v8: " + v8 + " " + typeof(v8));
				v8();
		</script>
	</head>
	<body>		
	</body>
</html>
