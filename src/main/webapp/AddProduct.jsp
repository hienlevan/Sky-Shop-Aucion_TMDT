<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./Css/Style.css">
<link rel="stylesheet" href="./Css/Base.css">
<link rel="stylesheet" href="./Css/grid.css">
<link rel="stylesheet" href="./Css/Product.css">
<link rel="stylesheet" href="./Css/InfoUser.css">
<link rel="stylesheet"
	href="./Icon/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet" href="./Css/DetailProduct.css">
<link rel="stylesheet" href="./Css/Home.css">
<link rel="stylesheet" href="./Css/Addproduct.css">
<title>Document</title>
</head>
<body>
	<script defer src="./Js/DetailProductTiem.js"></script>
	<div class="">
		<div class="header__primary">
			<div class="header__primary-content">
				<i class="header__icon fa-solid fa-house"></i> <a
					href="./Login.html" class="header-link">
					<p class="header__title">HOME</p>
				</a>
			</div>
			<div class="header__primary-content">
				<i class="fa-solid fa-cart-shopping"></i> <a href="./Login.html"
					class="header-link">
					<p class="header__title">My Cart</p>
				</a>
			</div>
			<div class="header__primary-content">

				<i class="header__icon fa-regular fa-user"></i> <a
					href="./Login.html" class="header-link">
					<p class="header__title">My account</p>
				</a>
			</div>

		</div>



		<div class="container__title">
			<div class="container__title-img">
				<img src="./Img/Logo.jpg" alt="" class="container__title-img">
			</div>

			<div class="container__title-search">
				<input type="text" class="container__title-search-input"
					placeholder="Search..">
				<button class="container__title-search-btn">
					<i
						class="container__title-search-btn-icon fa-solid fa-magnifying-glass"></i>
				</button>
			</div>
		</div>


		<div class="grid wide">
			<div class=" home__menu">
				<ul class="home__menu-list">
					<li class="home__menu-item"><a href=""> <img
							src="./Img/dashboard-65-16.png"> Dashboard
					</a></li>
					<li class="home__menu-item"><a href=""> <i
							class="fa-regular fa-user"></i> My account
					</a></li>
					<li class="home__menu-item"><a href=""> <i
							class="fa-solid fa-cart-shopping"></i> My cart
					</a></li>
					<li class="home__menu-item"><a href=""> <i
							class="fa-solid fa-cart-flatbed"></i> My product
					</a></li>
					<li class="home__menu-item"><a href=""> <i
							class="fa-solid fa-gavel"></i> Auctioned
					</a></li>
					<li class="home__menu-item"><a href=""> <i
							class="fa-solid fa-comment"></i> Feedback
					</a></li>
				</ul>
			</div>
		</div>
		</br>
		</br>
		</br>
		</br>
		</br>
		</br>
		<div class="detail__product-title">
			<div class="grid wide">
				<div class="AddProduct">
					<div>
						<p class="AddProduct-content">Add Product</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Tên sản phẩm: <input type="text" class="AddProduct-info-text">
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Loại: <input type="text" class="AddProduct-info-text">
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Số lượng: <input type="text" class="AddProduct-info-text">
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Màu sắc: <input type="text" class="AddProduct-info-text">
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Giá: <input type="text" class="AddProduct-info-text">
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Hình ảnh: <span class="AddProduct-info-div"> <span
								class="AddProduct-info-fix"> <input type="button"
									value="Upload image" class="AddProduct-info-upload"> <input
									type="button" value="Delete image"
									class="AddProduct-info-delete">
							</span> <input type="text" class="AddProduct-info-show">

							</span>
						</p>
					</div>
					<div>
						<p class="AddProduct-info">
							Mô tả:
							<textarea></textarea>
						</p>
					</div>
					<div>
						<input type="button" value="Confirm" class="AddProduct-confirm">
					</div>

				</div>
			</div>

		</div>
		</br>
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