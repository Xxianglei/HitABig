<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<title>rigester</title>
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
   .footer{
    width: 100%;
    height: 165px;
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
	<!------>
	<div class="mega_nav">
		<div class="container">
			<div class="menu_sec">
				<!-- start header menu -->
				<ul class="megamenu skyblue">
					<li class="active grid"><a class="color1" href="index.jsp">首页</a>
	                </li>
	                <li ><a class="color2" href="findAll.action">总排名</a>
	                </li>
					<li><a class="color4" href="creative.action">创意组排名</a></li>
					<li><a class="color7" href="start.action">初创组排名</a>
					</li>
					<li><a class="color5" href="growth.action">成长组排名</a>
					</li>
					<li><a class="color3" href="#">成绩录入处</a></li>					
				</ul>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div><br>

	<!---->
<!---->
<div class="container">
	 <div class="registration">
		 <div class="registration_left">
			 <h2>new teamInfo? <span> 赛队信息录入处 </span></h2>
			 						<h1>${result}</h1>
			 <!-- [if IE] 
				< link rel='stylesheet' type='text/css' href='ie.css'/>  
			 [endif] -->  
			  
			 <!-- [if lt IE 7]>  
				< link rel='stylesheet' type='text/css' href='ie6.css'/>  
			 <! [endif] -->  
			 <script>
				(function() {
			
				// Create input element for testing
				var inputs = document.createElement('input');
				
				// Create the supports object
				var supports = {};
				
				supports.autofocus   = 'autofocus' in inputs;
				supports.required    = 'required' in inputs;
				supports.placeholder = 'placeholder' in inputs;
			
				// Fallback for autofocus attribute
				if(!supports.autofocus) {
					
				}
				
				// Fallback for required attribute
				if(!supports.required) {
					
				}
			
				// Fallback for placeholder attribute
				if(!supports.placeholder) {
					
				}
				
				// Change text inside send button on submit
				var send = document.getElementById('register-submit');
				if(send) {
					send.onclick = function () {
						this.innerHTML = '...Sending';
					}
				}
			
			 })();
			 </script>
			 <div class="registration_form">
			 <!-- Form -->
				<form id="registration_form" action="addTeamInfo.action" method="post">
					<div>
						<label>
							<input placeholder="赛队编号:" type="text"  name="team_code"  tabindex="1" required autofocus>
						</label>
					</div>	<br>															
						<div>
						<label>
							<input placeholder="队长:" type="text"  name="header"  tabindex="1" required autofocus>
						</label>
					</div>	<br>
					<div>
						<label>
							<input placeholder="赛队名称:" type="text" name="team_name" tabindex="2" required autofocus>
						</label>
					</div><br>		
					
						<div class="sky_form1">
							<ul>
								<li><label class="radio left"><input type="radio" name="team_type" checked="" value="创意组"><i></i>创意组</label></li>
								<li><label class="radio"><input type="radio" name="team_type" value="初创组"><i></i>初创组</label></li>
								<li><label class="radio"><input type="radio" name="team_type" value="成长组"><i></i>成长组</label></li>
								 <div class="clearfix"></div> 
							</ul>
						</div>	<br>
					
							
					
					<div>
						<input type="submit" value="提交信息" id="register-submit">
					</div>
					<div class="sky-form">
						<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>i agree to mobilya.com &nbsp;<a class="terms" href="#"> terms of service</a> </label>
					</div>
          </form>
				<!-- /Form -->
			 </div>
		 </div>
			 </div>
		 </div>
		 <div class="clearfix"></div><br>
<div class="footer">
	 <div class="container">
		 <div class="copywrite">
			<font size="3">Copyright &copy; 2016.7.16  计算机科学技术院数据库实验室————李常</font>
		 </div>			 
	 </div>
</div>
<!---->
</body>
</html>

