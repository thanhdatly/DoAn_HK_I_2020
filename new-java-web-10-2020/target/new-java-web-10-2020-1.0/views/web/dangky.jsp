<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>Đăng ký</title>
</head>
<body>
<div class="main-w3layouts wrapper">
	<h1>Creative SignUp Form</h1>
	<div class="main-agileinfo">
		<div class="agileits-top">
			<form action="<c:url value='/dang-ky'/>" id="formReg"method="post">
				<input class="text" type="text" name="Username" placeholder="Username" required="">
				<br/>
				<input class="text" type="text" name="fullname" placeholder="Fullname" required="">
				<br/>
				<input class="text" type="password" name="password" placeholder="Password" required="">
				<input class="text w3lpass" type="password" name="password2" placeholder="Confirm Password" required="">
				<div class="wthree-text">
					<label class="anim">
						<input type="checkbox" class="checkbox" required="">
						<span>I Agree To The Terms & Conditions</span>
					</label>
					<div class="clear"> </div>
				</div>
				<input type="submit" value="SIGNUP">

				<input type="hidden" value="register"  name="action">

			</form>
			<p>Don't have an Account? <a href="#"> Login Now!</a></p>
			<div class="alert alert-${alert}" style="text-align: center">
				${message}
			</div>
		</div>
	</div>
	<!-- copyright -->
	<div class="colorlibcopy-agile">
		<p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
	</div>
	<!-- //copyright -->
	<ul class="colorlib-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<!-- //main -->

</body>
</html>
