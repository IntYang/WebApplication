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
			//객체 생성
			var car = { 
				//필드(속성)
				"model": "승용차",
				"company": "현대",
				"speed": 0,
				//메소드
				"start" : function(){
					console.log("시동을 겁니다.");
				},
				"setSpeed" : function(speed){
					//필드변수 사용할때 this 필수
					this.speed = speed;
				},
				"getSpeed" : function(){
					return this.speed;
				}
			};
			//객체 필드(속성)값 읽기
			console.log(car);
			console.log(car.model);
			car.company = "기아";
			console.log(car.company);
			car.speed = 60;
			console.log(car.speed);
			//메소드 호출
			car.start();
			car.setSpeed(100);
			console.log(car.speed);
			console.log(car.getSpeed());
		</script>
	</head>
	<body>
		<h1>자바스크립트 객체</h1>
	</body>
</html>
