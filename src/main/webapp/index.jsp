<%@page import="java.text.SimpleDateFormat"%>
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
	<link rel="shortcut icon" href="image/shu.ico" />
	<title>ixhh</title>
</head>
<body>
<div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<p align="center">
		<a href="filedemo.do" style="text-decoration: none;">文件上传</a>
		 &nbsp;&nbsp;&nbsp;
		<a href="baobei.do" style="text-decoration: none;">保呗系统</a>
		 &nbsp;&nbsp;&nbsp;
		<a href="xhc.do" style="text-decoration: none;">ofo系统</a>
		 &nbsp;&nbsp;&nbsp;
		<a href="qiandao.do" style="text-decoration: none;">签到系统</a>
		&nbsp;&nbsp;&nbsp;
		<a href="profile.do" style="text-decoration: none;">个人简介</a>
		&nbsp;&nbsp;&nbsp;
		<a href="myselfTag.do" style="text-decoration: none;">JSTL</a>		
	</p>
</div>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<br><br><br><br>
	<!-- 用来显示时间和显示页面访问量 -->
<%-- 	<div>
		<%
			SimpleDateFormat format = new SimpleDateFormat(
					"yyyy-MM-dd hh:mm:ss");
			String string = format.format(new Date());
			System.out.println(string);
		%>
		<p align="center">
			<%=string%>
		</p>
	</div> --%>

	<p align="center">
	COPYRIGHT © 2016-2020.<font color="red">naxienian1992</font> All rights reserved.
	</p>
	<div id="time" align="center">
	    <script>
	        document.getElementById('time').innerHTML = new Date().toLocaleString()
	                + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
	        setInterval(
	                "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
	                1000);
	    </script>
	</div>   
	<br>
	
</body>
</html>
