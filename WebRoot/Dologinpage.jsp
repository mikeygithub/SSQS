<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<%@ page import="DAO.ItemsDAO" %>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");

String username=request.getParameter("username");
String password=request.getParameter("password");

boolean result=ItemsDAO.checklogin(username, password);
	if(result==true){
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}else{
			response.sendRedirect("login_fail.jsp");
		}
%>
<%--<%
       request.setCharacterEncoding("utf-8");
       //首先判断用户是否选择了记住登录状态
       String[] isUseCookies = request.getParameterValues("isUseCookie");
       if(isUseCookies!=null&&isUseCookies.length>0)
       {
          //把用户名和密码保存在Cookie对象里面
          String usernames = URLEncoder.encode(request.getParameter("username"),"utf-8");
          //使用URLEncoder解决无法在Cookie当中保存中文字符串问题
          String passwords = URLEncoder.encode(request.getParameter("password"),"utf-8");
          
          Cookie usernameCookie = new Cookie("usernames",usernames);
          Cookie passwordCookie = new Cookie("passwords",passwords);
          usernameCookie.setMaxAge(864000);
          passwordCookie.setMaxAge(864000);//设置最大生存期限为10天
          response.addCookie(usernameCookie);
          response.addCookie(passwordCookie);
       }
       else
       {
          Cookie[] cookies = request.getCookies();
          if(cookies!=null&&cookies.length>0)
          {
             for(Cookie c:cookies)
             {
                if(c.getName().equals("username")||c.getName().equals("password"))
                {
                    c.setMaxAge(0); //设置Cookie失效
                    response.addCookie(c); //重新保存。
                }
             }
          }
       }
    %>--%>