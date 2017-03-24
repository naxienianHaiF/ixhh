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
    
    <title>成功上传多文件</title>
    
  </head>
  
  <body>
  
  	<h1>文件上传结果</h1>
    <div style="margin-left: 100px;margin-top: 100px;">
    	<form action="moreUpload.do" method="post" enctype="multipart/form-data">
		<%
			List<String> list=(ArrayList)session.getAttribute("list");
			for(String url:list){
		%>
			<%-- <a href="<%=url %>"></a> <br> --%>
			<%=url %>
		<%
			}
		 %>	
    	</form>
    </div>
  </body>
</html>
