<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<title>totalGrade</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Furnyish Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link
	href='http://fonts.useso.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Playfair+Display:400,700,900'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Aladin' rel='stylesheet'
	type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script src="js/menu_jquery.js"></script>
<script src="js/simpleCart.min.js"></script>
<style type="text/css">
    th{
      font-size: 30px;
     height: 50px;
    }
    td{
     font-size:30px;
     height: 50px;
    }
   .footer{
    width: 100%;
    height: 50px;
    background:#007979;
    text-align: center;
   }
  </style>

</head>
<body>
	<!-- header -->
		<div class="top_bg">
		 <div class="container">
			<div class="header_top-sec">
				<div class="top_right">		
					<img alt="" src="images/b.png" width="100px" height="100px">
					<ul>
					<font size="7">北华大学第二届“互联网+”大学生创新创业大赛</font><br>
					</ul>
				</div>
				
			</div>
		</div> 
		
	</div>
<br>

	<!------>
	<div class="mega_nav">
		<div class="container">
			<div class="menu_sec">
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li class="active grid"><a class="color1" href="index.jsp">首页</a>
	                </li>
					<li><a class="color4" href="creative.action">创意组排名</a></li>
					<li><a class="color7" href="start.action">初创组排名</a>
					</li>
					<li><a class="color5" href="growth.action">成长组排名</a>
					</li>
					<li><a class="color3" href="#">成绩录入处</a></li>
					<li><a class="color6" href="#">赛队信息录入处</a></li>
				</ul>			
				<div class="clearfix"></div>
			</div>
		</div>
	</div><br>
	<!---->
	<div class="container">		
		<div class="registration">
			<div class="registration_left">
				<h2>总排名 </h2>
				<div class="menu_sec" style="width: 1150px">
					<table width="100%" border="0" cellpadding="1" cellspacing="1">
						<tr>
						    <th>赛队编号</th>							
							<th>赛队名称</th>
							<th>队长</th>
							<th>总成绩</th>	
							<th>总排名</th>					
						</tr>
						<c:forEach var="entry" items="${list}" varStatus="status">						
							<tr>
								<td>${entry.team_Code}</td>
								<td>${entry.team_Name}</td>
								<td>${entry.header}</td>
								<td>${entry.grade}</td>
								<td><c:out value="${status.count}" /></td>																																										
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div><br>
	<div class="footer">
	 <div class="container">
		 <div class="copywrite">
			 <font size="3">Copyright &copy; 2016.7.16  计算机科学技术院数据库实验室————李常</font>
		 </div>			 
	 </div>
</div>
</body>
</html>

