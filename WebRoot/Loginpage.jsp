<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.*" %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Login page</title>
    
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
	background-repeat: no-repeat;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/1.jpg);
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
#container {
	margin: 0px;
	padding: 5px;
	height: 98%;
	width: 98%;
}
#main {
	margin: 0px;
	height: 650px;
	width: 300px;
	text-align: center;
	padding-top: 220px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
}
#time {
	margin: 0px;
	padding: 2px;
	float: right;
	height: 100px;
	width: 200px;
}
#text {
	font-size: 40px;
	margin: 0px;
	float: left;
	height: 100px;
	width: 300px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 60px;
	padding-left: 0px;
}
#login {
	margin: 0px;
	padding: 0px;
	clear: left;
	height: 300px;
	width: 300px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	
<div id="container"><font color="#FFFFFF">当前时间:
   <%
   Date d = new Date();
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日hh点mm分");
   String s = sdf.format(d);
   out.println(s);
%>
</font>

    <center>
      <div id="main" >
        <div id="text"><strong>用户登入界面</strong></div>
        <div id="login">
        <form action="Dologinpage.jsp" method="post">
          <table width="296" height="229">
            <tr>
              <td align="center" valign="middle">用户名：</td>
              <td><input type="text" name="username" value=""/></td>
            </tr>
            <tr>
              <td align="center" valign="middle">登入密码：</td>
              <td><input type="password" name="password" value="" style="width: 153px; " /></td>
            </tr>
            <tr>
              <td colspan="2"><input type="checkbox" name="isusecookie" checked="checked" /> 记住密码
                <input type="radio" name="selct1" /> 学生
                <input type="radio" name="selct2" /> 教师
                <input type="radio" name="selct3" />管理员</td>
            </tr>
            <tr>
              <td colspan="2" align="center" valign="middle" class="login"><input type="submit"  value="登入"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="取消" /></td>
            </tr>
            <tr>
              <td colspan="2" align="center"><a href="#">还没有账号？戳我立即注册！</a></td>
            </tr>
          </table>
          </form>
        </div>
      </div>
    </center>
    </div>
</body>
</html>
