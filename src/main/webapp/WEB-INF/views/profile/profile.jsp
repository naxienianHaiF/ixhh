<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<link rel="shortcut icon" href="image/wjh.ico" />
<title>个人简介</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
 <link href="css/dashboard.css" rel="stylesheet">
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Curriculum Vitae Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<!-- start menu -->
  
</head>
<body>
<!-- header -->
<div class="col-sm-3 col-md-2 sidebar">
		 <div class="sidebar_top">
			 <h1>魏金海</h1> 
			 <img src="image/197.jpg" alt=""/>
		 </div>
		<div class="details">
			 <h3>PHONE</h3>
			 <p>15201733125</p>  	 
			 <h3>EMAIL</h3>
			 <p><a href="mailto@example.com">1623631899@qq.com</a></p>
			 <address>
			 <h3>ADDRESS</h3>
			 <span></span>
			 <span>中国上海市闸北区.</span>
			 </address>
			 
		</div>
		<div class="clearfix"></div>
</div>
<!---->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!---//pop-up-box---->			
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	 <div class="content">
		 <div class="details_header">
			 <ul>
				 <li><a href="profile.do"><span class="glyphicon glyphicon-file" aria-hidden="true"></span>简历</a></li>
				 <li><a href="#"><span class="glyphicon glyphicon-print" aria-hidden="true"></span>打印</a></li>
				 <!-- <li><a href="contact.html"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email me</a></li> -->
				 <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span class="glyphicon glyphicon-picture" aria-hidden="true"></span>相册</a></li>
				 
				 <li><a  href="" onclick="window.history.go(-1);" style="margin-left: 20px;
					text-decoration: none;"><span class="glyphicon glyphicon-print" aria-hidden="true"></span>上一页</a></li>
				 
				 <div id="small-dialog" class="mfp-hide">
					 <img src="image/197.jpg" alt=""/>
				 </div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
			 </ul>
		 </div>
		 <div class="company">
			 <h3 class="clr1">工作经历</h3>
			 <div class="company_details">
				 <h4>爱豆科技（上海）有限公司<span>2016年06月 - 2016年05月</span></h4>
				 <h6>java开发工程师</h6>
				 <p class="cmpny1">在爱豆科技（上海）有限公司从事java后台开发，开发了保呗系统的业务下单模块。</p>
			 </div>
			 <div class="company_details">
				 <h4>上海华信证券有限公司<span>201706 - 至今</span></h4>
				 <h6>java开发工程师</h6>
				 <p>待续。期待未来发展顺利</p>
			 </div>
		 </div>
		 <div class="skills">
			 <h3 class="clr2">个人技能</h3>
			 <div class="skill_info">
			 <p>Duis egestas tortor metus, vitae venenatis tortor tristique at. Pellentesque dignissim purus vitae enim blandit, sed tristique enim malesuada. Maecenas dolor erat,
			 volutpat a tellus eu, euismod iaculis urna. Nulla dui purus, viverra viverra dolor non, malesuada dictum purus.</p>
			 </div>
			 <div class="skill_list">
				 <div class="skill1">
					 <h4>Software</h4>
					 <ul>					 
						<li>MyEclipse</li>
						<li>SPSS</li>
						<li>Matlab</li>
						<li>Office</li>
					 </ul>
				 </div>
				 <div class="skill2">
					 <h4>编程语言</h4>
					 <ul>					 
						<li>Java</li>
						<li>Mysql</li>
						<li>HTML/CSS</li>
						<li>JavaScript</li>
					 </ul>
				 </div>
				 <div class="clearfix"></div>
			 </div>
		 </div>
		 <div class="education">
			 <h3 class="clr3">学历</h3>
			 <div class="education_details">
				 <h4>上海大学<span>201509 - 201706</span></h4>
				 <h6>硕士学位</h6>
				 <p class="cmpny1">在校获得学业奖学金二等奖和学业奖学金三等奖，顺利通过CET6</p>
			 </div>
			 <div class="education_details">
				 <h4>湘潭大学 <span>201109 - 201506</span></h4>
				 <h6>学士学位</h6>
				 <p>曾获得三好学生、优秀团员、乙等奖学金、丙等奖学金、美国大学生数学建模比赛Honorable Mention等荣誉</p>
			 </div>
		 </div>
		 <div class="copywrite">
			 <p>COPYRIGHT © 2016-2020.naxienian1992 All rights reserved.  | Design by <a href="http://123.56.223.116:8080/ixhh/" target="_blank">ixhh</a> </p>
		 </div>
	 </div>
</div>
<!---->
</body>
</html>


