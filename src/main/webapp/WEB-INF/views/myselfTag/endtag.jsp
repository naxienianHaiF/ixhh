<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
	contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="my" uri="/myself-tag" %>	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>自定义结束标签</title>
    
  </head>
  
  <body>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <p align="center"><my:DateTag/></p>
	<my:EndTag/>
    <h1 align="center">自定义结束标签</h1>
  </body>
</html>
