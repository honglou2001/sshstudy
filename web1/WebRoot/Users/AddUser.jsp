<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.Box" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <jsp:useBean id="box" class="bean.Box" scope="page" >
</jsp:useBean>   
    <%
      box.setHeight(12);
      box.setWidth(11);
      box.setLength(10);
      out.println("在JSP中使用JavaBean<br>");
      out.println("盒子的长度为: "+box.getLength()+"<br>");
      out.println("盒子的宽度为: "+box.getWidth()+"<br>");
      out.println("盒子的高度为: "+box.getHeight()+"<br>");
      out.println("盒子的容积为: "+box.volumn()+"<br>");
      out.println("盒子的表面积为: "+box.surfaceArea()+"<br>");
    %>
用户注册. <br>
    
     <form action="reg.action" method="post" name="form">
帐号: <input type="text" name="user.name" ><br/>
密码: <input type="text" name="user.Pwd" ><br/>
邮箱:   <input type="text" name="user.Email" ><br/>
手机:    <input type="text" name="user.Mobile" ><br/>
地址:    <input type="text" name="user.Adress" ><br/>
描述:     <input type="text" name="user.description" ><br/>
 <input type="submit" value="提交struts" name="submit">
 </form>
  </body>
</html>
