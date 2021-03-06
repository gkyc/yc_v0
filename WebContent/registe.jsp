<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>YC-高考志愿辅导-注册</title>
	 <link rel="icon" href="img/YC-title.png">
	<link rel="stylesheet" href="https://cdn.bootcss.com/animate.css/3.5.2/animate.min.css">
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<style>
* { margin: 0; padding: 0;}
body { overflow-x: hidden; overflow-y: hidden; font-family: "Microsoft Yahei";}
.dowebok { margin: 0 auto;}
.dowebok ul { list-style-type: none;}
.dowebok .row{ font-size: 0; text-align: center; margin-top:30px;}
.dowebok .wow { display: inline-block; width: 280px; height: 280px; margin: 30px 15px 0; border-radius: 50%; font: 30px/280px "Microsoft Yahei"; vertical-align: top; *display: inline; zoom: 1;}
.bg-green { background: #5bd5a0;}
.bg-blue { background: #1daee9;}
.bg-purple { background: #c843a5;}
.bg-red { background: #eb3980;}
.bg-yellow { background: #ffcc35;}
#YC-registe-username{ height: 40px;width: 80%;margin-top: 5%}
#YC-registe-password{ height: 40px;width: 80%;margin-top: 10%}
#YC-registe-repassword{ height: 40px;width: 80%;margin-top: 10%}
.YC-login-button{cursor:pointer;border:0;background:none;margin-top:43%;font-size:30px;color:white}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(".error").hide();
});
</script>
</head>
<body>
<div class="dowebok">
<form id="YC-registe-form" action="registe" method="post" onsubmit="return YC_registe_check();" style="display:block">
	<div class="row">
		<div class="wow flipInY bg-blue" style="visibility: visible; animation-name:flipInY; animation-duration: 1.5s">大数据</div>
		<div class="wow pulse " data-wow-iteration="8" data-wow-duration="0.15s" style="visibility: visible; animation-duration: 0.15s; animation-iteration-count: 8; animation-name: pulse;">
			<a href="index.jsp"><img alt="" src="img/YC-logo3.png" ></a>
			<input type="text" placeholder=" 用户名" id="YC-registe-username" name="registe-username" class="YC-login-input">
			<span class="error" id="username-registe-err" style="color:#f66495;font-size:15px;float:left;width:100%;height:0;position: relative;top: -45%;text-align:center">请输入用户名</span>
			<span style="color:#f66495;font-size:15px;float:left;width:100%;height:0;position: relative;top: -45%;text-align:center">${requestScope.erro}</span>
			<input type="password" placeholder=" 密码" id="YC-registe-password" name="registe-password" class="YC-login-input">
			<span class="error" id="password-registe-err" style="color:#f66495;font-size:15px;float:left;width:100%;height:0;position: relative;top: -45%;text-align:center">请输入密码</span>
			<span class="error" id="repassword-registe-err" style="color:#f66495;font-size:15px;float:left;width:100%;height:0;position: relative;top: -45%;text-align:center">两次输入密码不一样</span>
			<input type="password" placeholder=" 确认密码" id="YC-registe-repassword" name="registe-repassword" class="YC-login-input">
		</div>
		<div class="wow swing bg-purple" style="visibility: visible; animation-name: swing;">可视化</div>
	</div>

	<div class="row">
		<div class="wow rollIn bg-red" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: rollIn;animation-duration:1s">
			<input type="submit" value="注册" id="YC-sb-registe" class="YC-login-button">
		</div>
		<div class="wow bounceInUp bg-green" style="visibility: visible; animation-name: bounceInUp;animation-duration:1s">志愿辅导</div>
		<div class="wow lightSpeedIn bg-yellow" style="visibility: visible; animation-name: lightSpeedIn; animation-duration:2s">
			<input type="button" value="登录" id="YC-bt-login" class="YC-login-button">
		</div>
	</div>
	</form>
</div>

<script src="https://cdn.bootcss.com/wow/1.1.2/wow.js"></script>
<script>
if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
	new WOW().init();
};
</script>

<script type="text/javascript">
	$("#YC-bt-login").click(function(){
		window.location.href="login.jsp";
	});
	
	function YC_registe_check(){
		var username = document.getElementById("YC-registe-username").value;
		var password = document.getElementById("YC-registe-password").value;
		var repassword = document.getElementById("YC-registe-repassword").value;
		if (username == "") {
			$("#username-registe-err").show();
			document.getElementById("YC-registe-username").focus();
			return false;
		}
		else{
			$("#username-registe-err").hide();
		}
		if (password == "") {
			$("#password-registe-err").show();
			document.getElementById("YC-registe-password").focus();
			return false;
		}
		else{
			$("#password-registe-err").hide();
		}
		if(repassword != password){
			$("#repassword-registe-err").show();
			document.getElementById("YC-registe-repassword").focus();
			return false;
		}
		else{
			$("#repassword-registe-err").hide();
		}
	}
</script>

</body>
</html>