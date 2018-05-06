<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ page import="java.text.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>main_page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body,td,th {
	font-family: "微软雅黑";
}
body {
	background-image: url(images/1.jpg);
	background-repeat: no-repeat;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
#container {
	margin: 0px;
	padding: 0px;
	float: left;
	height: 70%;
	width: 100%;
}
#photo {
	margin: 0px;
	float: left;
	height: 200px;
	width: 100%;
	padding-top: 0px;
	padding-right: 100px;
	padding-bottom: 0px;
	padding-left: 100px;
}
#data {
	margin: 0px;
	padding: 0px;
	clear: left;
	height: 34%;
	width: 100%;
}
#userdata {
	margin: 0px;
	float: left;
	height: 400px;
	width: 100%;
	padding-top: 50px;
	padding-right: 40px;
	padding-bottom: 20px;
	padding-left: 40px;
}
#fundction {
	margin: 0px;
	clear: left;
	height: 200px;
	width: 100%;
	padding-top: 10px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-left: 40px;
}
#f1 {
	margin: 0px;
	height: 40px;
	width: 100%;
	text-align: center;
	float: left;
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
}
#f2 {
	margin: 0px;
	clear: left;
	height: 138px;
	width: 100%;
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 0px;
}
#banner {
	background-image: url(images/banner.jpg);
	margin: 0px;
	padding: 0px;
	float: left;
	height: 180px;
	width: 100%;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
#funtop {
	margin: 0px;
	padding: 8px;
	float: left;
	height: 50px;
	width: 100%;
}
#funbottom {
	margin: 0px;
	padding: 10px;
	clear: left;
	height: 550px;
	width: 100%;
}
#headtext {
	font-size: 36px;
	margin: 0px;
	clear: left;
	height: 200px;
	width: 600px;
	text-align: left;
	padding-top: 80px;
	padding-right: 0px;
	padding-bottom: 40px;
	padding-left: 0px;
}
#message {
	margin: 0px;
	padding: 0px;
	float: left;
	height: 80px;
	width: 28%;
}
#m01 {
	text-align: center;
	margin: 0px;
	float: left;
	height: 60px;
	width: 100%;
	padding-top: 20px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
	font-size: 20px;
}
#fund {
	margin: 0px;
	padding: 0px;
	float: left;
	height: 100%;
	width: 70%;
}
#titlemes {
	margin: 0px;
	padding: 1px;
	float: right;
	height: 100px;
	width: 300px;
	text-align: center;
}
#m11 {
	margin: 1px;
	padding: 10px;
	clear: left;
	height: 470px;
	width: 99%;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #009;
	border-right-color: #009;
	border-bottom-color: #009;
	border-left-color: #009;
}
</style>
</head>

<body>
<div id="container">
  <div id="banner">
    <div id="titlemes">
      <table width="300" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="59" height="59" align="center" valign="middle">欢迎</td>
          <td width="96" align="left" valign="middle"><%=request.getParameter("username") %></td>
          <td width="145" align="left" valign="middle">使用学生成绩系统</td>
        </tr>
        <tr>
          <td height="40" colspan="3" align="center" valign="middle">当前时间：<%
   Date d = new Date();
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
   String s = sdf.format(d);
   out.println(s);
%></td>
        </tr>
      </table>
    </div>
    <div id="headtext"><strong><em>学生成绩管理系统</em></strong></div>
  </div>
  <div id="message">
    <div id="userdata">
      <div id="photo">此处显示  id "photo" 的内容</div>
      <div id="data">
        <table width="357" height="133" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="76" height="30" align="center">姓名：</td>
            <td width="282" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td height="21" align="center">职位：</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr>
            <td height="21" align="center" valign="middle">ID号：</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr>
            <td height="21" align="center">班级：</td>
            <td align="center">&nbsp;</td>
          </tr>
          <tr>
            <td height="21" align="center">年级：</td>
            <td align="center">&nbsp;</td>
          </tr>
        </table>
      </div>
    </div>
    <div id="fundction">
      <div id="f1">功能选项</div>
      <div id="f2">
        <table width="358" height="129" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="184" align="center" valign="middle"><a href="#">修改密码</a></td>
            <td width="174" align="center" valign="middle"><a href="#">修改资料</a></td>
          </tr>
          <tr>
            <td align="center" valign="middle"><a href="#">添加学生</a></td>
            <td align="center" valign="middle"><a href="#">删除学生</a></td>
          </tr>
          <tr>
            <td align="center" valign="middle"><a href="#">修改成绩</a></td>
            <td align="center" valign="middle"><a href="#">查看公告</a></td>
          </tr>
          <tr>
            <td align="center" valign="middle"><a href="#">帮助说明</a></td>
            <td align="center" valign="middle"><a href="Loginpage.jsp">退出登入</a></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <div id="fund">
    <div id="funtop">
      <table width="1083" height="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="68" align="left" valign="middle">功能栏：</td>
          <td width="517" align="center">查询学生成绩<input type="text" name="lookup1" value="输入学号查询"><input type="submit" value="查询"/></td>
          <td width="498" align="center" valign="middle">查询学生成绩&nbsp;
            <input type="text" name="lookup2" value="输入姓名查询"><input type="submit" value="查询"/></td>
        </tr>
      </table>
    </div>
    <div id="funbottom">
      <div id="m01"><strong>信息展示栏</strong></div>
      <div id="m11">
        <table width="100%" height="86" border="0" align="left" cellpadding="1" cellspacing="1">
          <tr>
            <td width="74" height="35" align="center" valign="middle" nowrap="nowrap">学年</td>
            <td width="77" height="35" align="center" valign="middle" nowrap="nowrap">学号</td>
            <td width="77" align="center" valign="middle" nowrap="nowrap">姓名</td>
            <td width="77" align="center" valign="middle" nowrap="nowrap">班级</td>
            <td width="77" align="center" valign="middle" nowrap="nowrap">语文</td>
            <td width="77" align="center" valign="middle" nowrap="nowrap">数学</td>
            <td width="77" align="center" valign="middle" nowrap="nowrap">英语</td>
            <td width="74" align="center" valign="middle" nowrap="nowrap">Cpp</td>
            <td width="93" align="center" valign="middle" nowrap="nowrap">JAVA</td>
            <td width="61" align="center" valign="middle" nowrap="nowrap">JSP</td>
            <td width="89" align="center" valign="middle" nowrap="nowrap">MYSQL</td>
            <td width="72" align="center" valign="middle" nowrap="nowrap">C</td>
            <td width="79" align="center" valign="middle" nowrap="nowrap">总分</td>
          </tr>
          <tr>
            <td height="41" align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
            <td align="center" valign="middle" nowrap="nowrap">&nbsp;</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>
</body>
</html>