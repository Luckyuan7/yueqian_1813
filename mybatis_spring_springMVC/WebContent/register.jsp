<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>注册</title>
		<!-- 引入JQuery -->
		<script src="js/jquery-1.11.1.js"></script>
		<style type="text/css">
			body{
			background: url(风景.jpg) no-repeat;
			background-size: 100% 130%;
			color: #E0E0E0;
			}
			div{
				border: 1px solid pink;
				width:20%;	
				margin: 250px auto;	
			}
		</style>
		<script type="text/javascript">
			function f1() {
				//获取用户信息
				var $userValue = $("#user").val();
				console.log($userValue);//测试在浏览器控制台是否输出用户文本框中的值
				
				//通过Ajax，将用户信息发生后台
				$.ajax({
					url:"register/checkUser.do",
					method:"post",
					data:{"username":$userValue},//请求参数
					dataType:"json",//数据返回类型
					success:function(data){//ajax接收后端数据成功，并将信息封装到data中
						console.log(data);//测试观察后端返回的数据
						
						$("#resultUser").text(data.msg);
						
					},
					error:function(){
						alert("服务器异常！");
					}				
				});
				
				
			}	
		
		</script>
	</head>
	<body>
	  <div align="center">
		<form action="">
			用户名：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" id="user" onblur="f1();"/>
				 <span id="resultUser"></span>
			<br/>
			<br/>
			密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password"/>
			<br/>
			<br/>
			确认密码：<input type="password"/>
			<br/>
			<br/>
			<input type="submit" value="注册"/>
		</form>
	  </div>
	
	</body>
</html>