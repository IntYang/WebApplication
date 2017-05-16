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
			function handleBtn1() {
				$.ajax({
					url: "/WebApplication/jquery/exam04_html_fragment",
					success: function(data) {
						$("#div1").html(data);
					}
				});
			}
			function handleBtn2() {
				$.ajax({
					url: "/WebApplication/jquery/exam04_json",
					success: function(data) {
						for(var i=0; i<data.length; i++){
							var fileName = data[i].fileName;
							var message = data[i].message;
							var html_fragment = "";
							html_fragment += '<div>';
							html_fragment +='<img src="/WebApplication/resources/images/' + fileName + '"width="30px" height="30px"/>';
							html_fragment += '<span>'+ message + '</span>';
							html_fragment += '<div>';
							$("#div2").append(html_fragment);
						}
					}
				});
			}
		</script>
	</head>
	<body>
		<h1>AJAX</h1>
		
		<div class ="container">
			<div class ="row">
						<div class="col-sm-6">
							<button onclick ="handleBtn1()">HTML 조각 받아오기</button>
							<div id="div1">								
							</div>						
						</div>
				<div class="col-sm-6">
					<button onclick ="handleBtn2()">JSON 데이터 받아오기</button>
					<div id="div2">						
					</div>						
				</div>
			</div>
		</div>
	</body>
</html>
