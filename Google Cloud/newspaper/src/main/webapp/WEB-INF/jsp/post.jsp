<%@page pageEncoding="UTF-8"%>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>The News Paper - News &amp; Lifestyle Magazine Template</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="static/style.css">

</head>

<body>
	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Top Header Area -->
		<div class="top-header-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div
							class="top-header-content d-flex align-items-center justify-content-between">
							<!-- Logo -->
							<div class="logo">
								<a href="/" style="color: white; font-size: 50px">NEWSPAPER</a>
							</div>

							<!-- Login Search Area -->
							<div class="login-search-area d-flex align-items-center"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Area -->
		<div class="newspaper-main-menu" id="stickyMenu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar justify-content-between"
						id="newspaperNav">

						<!-- Logo -->
						<div class="logo">
							<a href="" style="color: white; font-size: 50px">NEWSPAPER</a>
						</div>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li class="active"><a href="/">Trang chủ</a></li>

									<li><a href="category?type=thoisu">Thời sự</a></li>
									<li><a href="category?type=thegioi">Thế giới</a></li>
									<li><a href="category?type=congnghe">Công nghệ</a></li>
									<li><a href="category?type=thethao">Thể thao</a></li>
									<li><a href="category?type=chinhtri">Chính trị</a></li>

									<li><a href="/postmanagement">Quản lý bài đăng</a></li>

								</ul>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>



	<!-- ##### Blog Area Start ##### -->
	<div class="blog-area section-padding-0-80">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<div class="blog-posts-area">
						<c:forEach var="post" items="${posts}">
							<!-- Single Featured Post -->
							<div class="single-blog-post featured-post single-post">
								<div class="post-thumb">
									<a href="#"><img
										src="static/img/newspaper-img/${post.id}.jpg" alt=""></a>
								</div>
								<div class="post-data">
									<a href="#" class="post-catagory">${post.type}</a> <a href="#"
										class="post-title">
										<h6>${post.title}</h6>
									</a>
									<div class="post-meta">
										<p class="post-author">
											By <a href="#">${post.author}</a>
										</p>
										<p class="post-excerp">${post.description}</p>

										<p>${post.content1}</p>
										<img src="static/img/newspaper-img/${post.id}_1.jpg" alt="">
										<p style="padding: 20px">${post.content2}</p>
										<img src="static/img/newspaper-img/${post.id}_2.jpg" alt="">
										<p style="padding: 20px">${post.content3}</p>
										<img src="static/img/newspaper-img/${post.id}_3.jpg" alt="">
										<p style="padding: 20px">${post.content4}</p>
										<img src="static/img/newspaper-img/${post.id}_4.jpg" alt="">

										<div
											class="newspaper-post-like d-flex align-items-center justify-content-between">
											<!-- Tags -->
											<div class="newspaper-tags d-flex">
												<span>Tags:</span>
												<ul class="d-flex">
													<li><a href="#">${post.type}</a></li>

												</ul>
											</div>


										</div>
									</div>
								</div>
							</div>
						</c:forEach>



					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- ##### Blog Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">

		<!-- Main Footer Area -->
		<div class="main-footer-area">
			<div class="container">
				<div class="row">

					<!-- Footer Widget Area -->
					<div class="col-12 col-sm-6 col-lg-4">
						<div class="footer-widget-area mt-80">
							<!-- Footer Logo -->
							<div class="footer-logo">
								<a href="/" style="color: white; font-size: 50px">NEWSPAPER</a>
							</div>
							<!-- List -->
							<ul class="list">
								<li><a href="mailto:contact@youremail.com">quytrandev@gmail.com</a></li>
								<li><a href="tel:+4352782883884">+038 5918 111</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Widget Area -->
					<div class="col-12 col-sm-6 col-lg-2">
						<div class="footer-widget-area mt-80">
							<!-- Title -->
							<h4 class="widget-title">Politics</h4>
							<!-- List -->
							<ul class="list">
								<li><a href="#">Business</a></li>
								<li><a href="#">Markets</a></li>
								<li><a href="#">Tech</a></li>
								<li><a href="#">Luxury</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Widget Area -->
					<div class="col-12 col-sm-4 col-lg-2">
						<div class="footer-widget-area mt-80">
							<!-- Title -->
							<h4 class="widget-title">Featured</h4>
							<!-- List -->
							<ul class="list">
								<li><a href="#">Football</a></li>
								<li><a href="#">Golf</a></li>
								<li><a href="#">Tennis</a></li>
								<li><a href="#">Motorsport</a></li>
								<li><a href="#">Horseracing</a></li>
								<li><a href="#">Equestrian</a></li>
								<li><a href="#">Sailing</a></li>
								<li><a href="#">Skiing</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Widget Area -->
					<div class="col-12 col-sm-4 col-lg-2">
						<div class="footer-widget-area mt-80">
							<!-- Title -->
							<h4 class="widget-title">FAQ</h4>
							<!-- List -->
							<ul class="list">
								<li><a href="#">Aviation</a></li>
								<li><a href="#">Business</a></li>
								<li><a href="#">Traveller</a></li>
								<li><a href="#">Destinations</a></li>
								<li><a href="#">Features</a></li>
								<li><a href="#">Food/Drink</a></li>
								<li><a href="#">Hotels</a></li>
								<li><a href="#">Partner Hotels</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Widget Area -->
					<div class="col-12 col-sm-4 col-lg-2">
						<div class="footer-widget-area mt-80">
							<!-- Title -->
							<h4 class="widget-title">+More</h4>
							<!-- List -->
							<ul class="list">
								<li><a href="#">Fashion</a></li>
								<li><a href="#">Design</a></li>
								<li><a href="#">Architecture</a></li>
								<li><a href="#">Arts</a></li>
								<li><a href="#">Autos</a></li>
								<li><a href="#">Luxury</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Bottom Footer Area -->
		<div class="bottom-footer-area">
			<div class="container h-100">
				<div class="row h-100 align-items-center">
					<div class="col-12">
						<!-- Copywrite -->
						<p>
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							All rights reserved. Powered by Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- ##### Footer Area Start ##### -->

	<!-- ##### All Javascript Files ##### -->
	<!-- jQuery-2.2.4 js -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>

</html>