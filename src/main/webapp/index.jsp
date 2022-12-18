<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="./Icon/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet" href="./Css/index.css">
<link rel="stylesheet" href="./Css/base.css">
<title>Trang chủ</title>
</head>
<body>
	<div class="header_primary">
		<div class="header_primary-content">
			<a href="register.jsp" class="header-link">
				<p class="header_title">Đăng Ký</p>
			</a>
		</div>
		<div class="header_primary-content">
			<a href="loginServlet" class="header-link">
				<p class="header_title">Đăng Nhập</p>
			</a>
		</div>
	</div>

	<div class="main">
		<div class="container_title">
			<div class="container_title-img">
				<img src="./Logo.jpg" alt="" class="container_title-img">
			</div>

			<div class="container_title-search">
				<input type="text" class="container_title-search-input"
					placeholder="Search..">
				<button class="container_title-search-btn">Tìm kiếm</button>
			</div>
		</div>

		<div class="grid-wide">
			<div class=" home_menu">
				<ul class="home_menu-list">
					<li class="home_menu-item"><a href=""> <i
							class="fa-regular fa-user"></i> My account
					</a></li>
					<li class="home_menu-item"><a href=""> <i
							class="fa-solid fa-cart-shopping"></i> My cart
					</a></li>
					<li class="home_menu-item"><a href=""> <i
							class="fa-solid fa-cart-flatbed"></i> My product
					</a></li>
					<li class="home_menu-item"><a href=""> <i
							class="fa-solid fa-comment"></i> Feedback
					</a></li>
				</ul>
			</div>
		</div>

	</div>

	<div class="footer">
		<p>Copyright SkyShop © 2022. All rights reserved</p>
	</div>

</body>
</html>