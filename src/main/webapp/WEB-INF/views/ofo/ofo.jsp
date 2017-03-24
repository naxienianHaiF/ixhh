<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<style>
	td{
		width:120px; 
		border-width:1px;
		text-align:center;
	}
</style>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<script type="text/javascript" src="<%=request.getContextPath() %>/
	js/jquery-3.1.0.min.js"></script>
	<title>ofo数据记录</title>
</head>
<script type="text/javascript">
	console.info("ofo  success");
</script>
<body>
	<br>
	<a href="" onclick="window.history.go(-1);" style="margin-left: 20px;
		text-decoration: none;">上一页 </a><br>
	<br>
	<br>
	<h1 style="color: blue;" align="center">ofo</h1>
	<br>
	<p style="text-align: center;">
		<a href="addpage.do" style="text-decoration: none;">添加数据</a>
		&nbsp;&nbsp;
		<input type="text" name="ofosearch" value="请输入车牌号" onfocus="this.value=''" 
		onblur="if(this.value==''){this.value='请输入车牌号'}" size="10" onchange="ofofind(this.value)" 
		width="20px">
	</p>
	<script type="text/javascript">
		function ofofind(va){
			/* alert(va); */
			var url="xhcfind.do";
			var bike={"bikenumber":va};
			$.post(url,bike,function(data){
				alert(data);
			});
		}
	</script>
	
	<br>
	
	<table border="1" align="center">
		<thead>
			<tr>
				<td >id</td>
				<td>车牌号</td>
				<td>密码</td>
			</tr>
		</thead>
		<c:forEach var="p" items="${ofolist }">
			<tr>
				<td>${p.oid }</td>
				<td>${p.bikenumber }</td>
				<td>${p.bikeps }</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>
