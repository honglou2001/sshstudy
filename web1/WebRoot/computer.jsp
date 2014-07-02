<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'computer.jsp' starting page</title>
    
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
  <% String first1=request.getParameter("first");
 %>
 <p>输入字符的长度为：<%=first1.length() %></p><br>
 
 <%
    	Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtest","root","");
		String sql = "insert into myclass (name,sex,degree) values (?,?,1.0)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,"name1");
		ps.setInt(2,1);
		ps.executeUpdate();
		ps.close();
		conn.close();
		

    	Class.forName("com.mysql.jdbc.Driver");
		Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtest","root","");
		String sql1 = "select * from myclass";
		PreparedStatement psQuery = conn1.prepareStatement(sql1);
		ResultSet rs = psQuery.executeQuery();
		while(rs.next()){
			int id = rs.getInt("sex");
			String title = rs.getString("name");
			Double degree = rs.getDouble("degree");
			System.out.println(id);
			System.out.println(title);
			System.out.println(degree);
		}
		rs.close();
		psQuery.close();
		conn.close();
		
     %>
  </body>
</html>
