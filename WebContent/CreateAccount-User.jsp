<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./Css/Style.css">
<link rel="stylesheet" href="./Css/grid.css">
<link rel="stylesheet"
	href="./Icon/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet" href="./Css/Base.css">
<link rel="stylesheet" href="./Css/CreateAccount.css">
<link rel="stylesheet" href="./Css/Product.css">
<title>Creat Account</title>
</head>
<body>
	<script defer src="./Js/UserName.js"></script>
	<div class="app">
		<div class="header">
			<i class="header__icon fa-solid fa-house"></i> <a href="#"
				class="header-link">
				<p class="header__title">HOME</p>
			</a>
		</div>

		<div class="container__create-account">
			<div class="container__title">
				<div class="container__title-img">
					<img src="./Img/Logo.jpg" alt="" class="container__title-img">
				</div>
				<div class="container__title-des">
					<div class="container__title-des-head">
						<h1>Create Account</h1>
						<i
							class="container__title-des-head-icon fa-solid fa-right-to-bracket"></i>
					</div>
					<p class="container__title-des-foot">
						Do you already have an account <a href="./Login.html"
							class="container__title-des-foot-link"> Log in </a>
					</p>
				</div>
			</div>

			<form method="get" class="container__create-account-form">
				<div class="container__create-account-form-control">
					<span> First Name : </span> <input type="text"
						id="container__create-account-fname"> <small></small>
				</div>

				<div class="container__create-account-form-control">
					<span> Last Name : </span> <input type="text"
						id="container__create-account-lname"> <small></small>
				</div>

				<div class="container__create-account-form-control">
					<span> Email : </span> <input type="text"
						id="container__create-account-email"> <small></small>
				</div>

				<div class="container__create-account-form-control">
					<span> Address : </span> <input type="text"
						id="container__create-account-address"> <small></small>
				</div>

				<div class="container__create-account-form-control">
					<span> Phone : </span> <input type="number"
						id="container__create-account-phone"> <small></small>
				</div>

				<div class="container__create-account-form-control">
					<span> UserName : </span> <input type="text"
						id="container__create-account-user"> <small></small>
				</div>


				<div class="container__create-account-form-control">
					<span> Password : </span> <input type="password"
						id="container__create-account-password"> <small></small>
				</div>

				<input type="submit" value="Create" class="create-btn">

			</form>
		</div>


		<footer class="footer">
			<div class="footer_icon">
				<i class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-instagram"></i> <i class="fa-brands fa-twitter"></i>
				<i class="fa-brands fa-reddit"></i>
			</div>


			<div class="footer__text">
				<p>Copyright SkyShop © 2022. All rights reserved</p>
			</div>
		</footer>

	</div>
</body>
</html>