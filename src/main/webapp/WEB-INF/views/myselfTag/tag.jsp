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
    
    <title>结束标签</title>
    
  </head>
  
  <body>
    <br><br>
	<a href="" onclick="window.history.go(-1);" style="margin-left: 20px;
		text-decoration: none;">上一页 </a>
    <br><br>
    <br><br>
    <br><br>
    <p align="center"><my:DateTag/></p>
    <h1 align="center">循环标签</h1>
    <form action="skiptag.do">
    	<p align="center">
	   		<input type="text" name="name" placeholder="请输入wjh，会有惊喜哟">
			<input type="submit" value="提交">
		</p>    
    </form>
    <my:SkipTag>
    	<h2 align="center">不忘初心，方得始终</h2>
    </my:SkipTag>
    <p align="center"><a href="endtag.do">自定义结束标签</a></p>
  </body>
</html>
