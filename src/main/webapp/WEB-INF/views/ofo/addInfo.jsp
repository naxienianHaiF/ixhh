<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>添加纪录</title>
</head>
<body>
	<br>
	<a href="" onclick="window.history.go(-1);" style="margin-left: 20px;
		text-decoration: none;">上一页 </a><br>
	<br>
	<br>
	<br> 
	<h1 align="center">添加数据</h1>
	<form action="addxhc.do" method="post">
<!-- 		车牌号&nbsp;<input type="text" name="bikenumber"> <br>
		密&nbsp;&nbsp;码&nbsp;<input type="text" name="bikeps"> <br>
		<input type="submit" value="添加"> <br> -->
		<table align="center">
			<tr>
				<td>车牌号</td>
				<td><input type="text" name="bikenumber"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="bikeps"></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="提交"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>
