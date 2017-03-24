<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
contentType="text/html; charset=utf-8" isELIgnored="false"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<%
	Locale locale=(Locale)session.getAttribute("locale");
	if(locale==null){
		locale=request.getLocale();
	}else{
		System.out.println("国际化成功了");
	}
	ResourceBundle bundle = ResourceBundle.getBundle("i18n/msg",
			locale);
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>单文件上传</title>
    
  </head>
  
  <body>
  
  	<a href="chinese.do">中文</a>
  	<a href="english.do">English</a>
    <div style="margin-left: 100px;margin-top: 100px;">
    	<form action="oneUpload.do" method="post" enctype="multipart/form-data">
    		<p>
    			<span><%=bundle.getString("file") %></span>
    			<input type="file" name="imageFile">
    		</p>
    		<p>
    			<input type="submit" value="<%=bundle.getString("filesubmit") %>">
    		</p>
    	</form>
    </div>
  </body>
</html>
