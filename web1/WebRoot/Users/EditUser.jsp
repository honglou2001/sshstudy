<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>user</title>
</head>
<body>    
    <h2>
        <s:if test="null == user">
            Add user
        </s:if>
        <s:else>
            Edit user
        </s:else>
    </h2>
    <s:form action="reg.action" >
        <s:hidden name="user.id"> </s:hidden>
        <s:textfield name="user.name" label="帐号" />
        <s:textfield name="user.Pwd" label="密码" />
        <s:textfield name="user.Email" label="邮箱" />
        <s:textfield name="user.Mobile" label="手机" />
        <s:textfield name="user.Adress" label="地址" />
        <s:textfield name="user.description" label="描述" />  
        <s:submit />
    </s:form>
</body>
</html>