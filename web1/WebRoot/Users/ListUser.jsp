<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>User List</title>
    <style type="text/css">
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        
        table thead tr th {
            border: 1px solid black;
            padding: 3px;
            background-color: #cccccc;
        }
        
        table tbody tr td {
            border: 1px solid black;
            padding: 3px;
        }
    </style>
  </head>
  <body style="text-align:center">
    <h2>Users</h2>
    
    <a href ="Load.action">Add User</a>
    
         <table cellspacing="0">
            <thead>
                <tr>
                    <th>name</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>description</th>
                      <th>Operation</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="users">
                    <tr>
                        <td><s:property value="name" /></td>
                        <td><s:property value="Mobile" /></td>
                        <td><s:property value="Email" /></td>
                        <td><s:property value="Adress" /></td>
                         <td><s:property value="description" /></td>
                        <td>
                            <a href='<s:url action="Load"><s:param name="fid" value="id" /></s:url>'>
                                Edit
                            </a>
                            &nbsp;
                            <a href='<s:url action="Del"><s:param name="fid" value="id" /></s:url>'>
                                Delete
                            </a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>

  </body>
</html>
