<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>多文件上传</title>
    
  </head>
  
  <body>
  
    <div style="margin-left: 100px;margin-top: 100px;">
    	<form action="moreUpload.do" method="post" enctype="multipart/form-data">
    		<p>
    			<span>文件：</span>
    			<input type="file" name="imageFile1">
    		</p>
    		<p>
    			<span>文件：</span>
    			<input type="file" name="imageFile2">
    		</p>
    		<p>
    			<span>文件：</span>
    			<input type="file" name="imageFile3">
    		</p>    		    		
    		<p>
    			<input type="submit" value="提交">
    		</p>
    	</form>
    </div>
  </body>
</html>
