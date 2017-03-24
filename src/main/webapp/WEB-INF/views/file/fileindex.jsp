<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<link rel="short icon" href="image/file.ico">
	<title>文件上传</title>
</head>
<body>
	<br>
	<a href="" onclick="window.history.go(-1);" style="margin-left: 20px;
		text-decoration: none;">上一页 </a><br>
	<br>
	<br>
	<br>
	<br>
	<br> &nbsp;&nbsp;&nbsp;&nbsp;
	<a href="one.do">单文件上传</a> &nbsp;&nbsp;&nbsp;&nbsp;
	<a href="more.do">多文件上传</a> &nbsp;&nbsp;&nbsp;&nbsp;
	<a href="download.do">文件下载</a>

</body>
</html>
