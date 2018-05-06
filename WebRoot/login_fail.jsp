<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Loginfailure</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body {
	background-image: url(images/1.jpg);
	background-repeat: no-repeat;
}
</style> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  
  <body>
    <center>
    	<h1 style="position:relative;left:0;top:300">密码或者用户名错误！</h1><br>
    	<a  style="position:relative;left:0;top:300" href="Loginpage.jsp">返回重试</a>
    </center>
  </body>
</html>
