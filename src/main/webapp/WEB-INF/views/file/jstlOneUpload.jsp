<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
contentType="text/html; charset=utf-8" isELIgnored="false"%>
<!-- 国际化核心标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>单文件上传</title>
    
  </head>
  
  <body>
  
	<fmt:bundle basename="i18n/msg">
    <div style="margin-left: 100px;margin-top: 100px;">
    	<form action="oneUpload.do" method="post" enctype="multipart/form-data">
    		<p>
    			<span>
    				<fmt:message key="file"></fmt:message>
    			</span>
    			<input type="file" name="imageFile">
    		</p>
    		<p>
    			<input type="submit" value="<fmt:message key="filesubmit" />">
    		</p>
    	</form>
    </div>
	</fmt:bundle>      
  </body>
</html>
