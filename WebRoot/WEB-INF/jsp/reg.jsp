<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生管理系统-用户注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/login/login.css">
  </head>
  
  <body>
       <div class="login">
<div class="message">管理员-注册账号</div>
<div id="darkbannerwrap"></div>
    <form method="post">
		<input name="userName" placeholder="用户名" required  type="text">
		<hr class="hr15">
		<input name="passWord" placeholder="密码" required type="password">
		<hr class="hr15">
		<input value="立即注册" style="width:100%;" type="submit">
		<hr class="hr20"> 
	    <a href="${pageContext.request.contextPath}/index.html">登录账号</a>
	</form>
</div>
  </body>
</html>
