<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<link rel="icon" href="img/core-img/favicon.ico">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
<!-- Core Style CSS -->
<link rel="stylesheet" href="${path}/vgbox_front/store/css/store.css">
<link rel="stylesheet" href="${path}/vgbox_front/store/css/core-style.css">
<link rel="stylesheet" href="${path}/vgbox_front/store/css/global.css">
<link rel="stylesheet" href="${path}/vgbox_front/store/css/reset.css">
<meta charset="EUC-KR">
<title>VGBOX</title>
<script>
function warning(check){
	if(check==''){
		alert('로그인이 필요합니다. 로그인 페이지로 이동합니다.')
		location.href="${path}/login.do"
	}else{
		location.href="${path}/cartList.do?id="+check
	}
}

</script>
</head>
<body>
	<%@include file="header.jsp" %>
	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<c:set var="mem" value="${session}"/>
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix" >
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">
				<a href="${path}/emerList.do"><img src="img/core-img/logo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<!-- todo 좌측 카테고리 부분-->
			<nav class="amado-nav" style= "margin-top : -100px">
				<ul>
					<li><a href="${path}/emerList.do" style="font-weight: bold;">홈</a></li>
					<li><a href="${path}/prdList.do" style="font-weight: bold;">전체보기</a></li>
					<li class="active"><a href="${path}/prdDetail.do?product_num=${param.product_num}"
						style="font-weight: bold;">구매</a></li>
					<li><a href="#" style="font-weight: bold;">예약</a></li>
					<li><a onclick="warning('${mem.id}')" style="font-weight: bold;">결제</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<!-- todo 좌측 카테고리 할인 및 신상품 알림 -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="#" class="btn amado-btn mb-15" style="font-weight: bold;">긴급구출</a>
				<a href="#" class="btn amado-btn active" style="font-weight: bold;">예약상품</a>
			</div>
			<!-- Cart Menu -->
			<!-- todo 좌측 카테고리 카트, 최애, 검색 -->
			<div class="cart-fav-search mb-100">
				<a href="cart.html" class="cart-nav"><img
					src="img/core-img/cart.png" alt=""> Cart <span>(0)</span></a> <a
					href="#" class="fav-nav"><img src="img/core-img/favorites.png"
					alt=""> Favourite</a> <a href="#" class="search-nav"><img
					src="img/core-img/search.png" alt=""> Search</a>
			</div>
			<!-- Social Button -->
			<!-- todo 소셜 알림 -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">
				<!-- todo 사진 상단 부분 메뉴 흐름도 -->
				<div class="row">
					<div class="col-12" style= "margin-top : -65px">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt-50">
								<li class="breadcrumb-item"><a href="#">홈</a></li>
								<li class="breadcrumb-item"><a href="#">전체보기</a></li>
								<li class="breadcrumb-item"><a href="#">구매</a></li>
								<li class="breadcrumb-item active" aria-current="page"
									style="font-weight: bold;">${prdDetail.product_name}</li>
							</ol>
						</nav>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="single_product_thumb">
							<div id="product_details_slider" class="carousel slide"
								data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li class="active" data-target="#product_details_slider" data-slide-to="0"
                                style="background-image: url(${path}/vgbox_front/store/img/product-img/${prdDetail.img});"></li>
                            <li data-target="#product_details_slider" data-slide-to="1"
                                style="background-image: url(${path}/vgbox_front/store/img/product-img/${prdDetail.img_1});"></li>
                            <li data-target="#product_details_slider" data-slide-to="2"
                                style="background-image: url(${path}/vgbox_front/store/img/product-img/${prdDetail.img_2});"></li>
                            <li data-target="#product_details_slider" data-slide-to="3"
                                style="background-image: url(${path}/vgbox_front/store/img/product-img/${prdDetail.img_3});"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a class="gallery_img" href="${path}/vgbox_front/store/img/product-img/${prdDetail.img}">
                                    <img class="d-block w-100" src="${path}/vgbox_front/store/img/product-img/${prdDetail.img}"
                                         alt="First slide">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a class="gallery_img" href="${path}/vgbox_front/store/img/product-img/${prdDetail.img_1}">
                                    <img class="d-block w-100" src="${path}/vgbox_front/store/img/product-img/${prdDetail.img_1}"
                                         alt="Second slide">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a class="gallery_img" style = "height:640px; width:480px;" href="${path}/vgbox_front/store/img/product-img/${prdDetail.img_2}">
                                    <img class="d-block w-100" src="${path}/vgbox_front/store/img/product-img/${prdDetail.img_2}"
                                         alt="Third slide" style = "height:640px; width:480px;">
                                </a>
                            </div>
                            <div class="carousel-item">
                                <a class="gallery_img" href="${path}/vgbox_front/store/img/product-img/${prdDetail.img_3}">
                                    <img class="d-block w-100" src="${path}/vgbox_front/store/img/product-img/${prdDetail.img_3}"
                                         alt="Fourth slide">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-lg-5">
						<div class="single_product_desc">
							<!-- 물건 정보란 -->
							<div class="product-meta-data">
								<div class="line"></div>
								<p class="product-price" style="font-weight: bold;">${prdDetail.price}</p>
								<br> <a href="product-details.html">
									<h6>${prdDetail.product_name}</h6>
								</a>
								<!-- 평점(리뷰수) -->
								<div
									class="ratings-review mb-15 d-flex align-items-center justify-content-between">
									<div class="ratings">
										<i class="fa fa-star" aria-hidden="true" style = "font-size:17px; font-weight:bold;">  4.7(106)</i> 
									</div>
									<div class="review">
										<a href="#" style = "margin-left:-320px;">판매자: ${prdDetail.id}</a>
									</div>
								</div>
								<p class="avaibility" style="font-weight: bold;">
									<i class="fa fa-circle"></i> 유기농
								</p>
							</div>

							<div class="short_overview my-5">
								<p style="font-weight: bold; font-size: 14px;">재배 특징</p>
								<!-- 옵션 선택 셀렉트 박스 -->
								<div>
									<select class="nice-select" name="" id="">
										<option value="상품명 가져올" selected>옵션 선택</option>
										<option value="상품명 가져올">상품 옵션1</option>
										<option value="상품명 가져올">상품 옵션2</option>
									</select>
								</div>
							</div>
							<div></div>
							<!-- Add to Cart Form -->
							<form class="cart clearfix" method="post">
								<br> <br>

								<!-- todo 수량 선택 박스 -->
								<div class="cart-btn d-flex mb-50">
									<p>Qty</p>
									<div class="quantity" style="width: 255px;">
										<span class="qty-minus" onclick="minusQty();"><i
											class="fa fa-caret-down" aria-hidden="true"></i></span> <input
											type="number" class="qty-text" id="qty" step="1" min="1"
											max="300" name="quantity" value="1" style="width: 255px;">
										<span class="qty-plus" onclick="plusQty();"><i
											class="fa fa-caret-up" aria-hidden="true"></i></span>
									</div>
								</div>
								<button type="button" name="addtocart" value="5"
									class="btn amado-btn" onclick="addToCartAndNavigate(${prdDetail.product_num})">Add to
									Cart</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Product Details Area End -->
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Newsletter Area Start ##### -->
	<section class="newsletter-area section-padding-100-0">
		<div class="container">
			<div class="row align-items-center">
				<!-- Newsletter Text -->
				<div class="col-12 col-lg-6 col-xl-7">
					<div class="newsletter-text mb-100">
						<h2>
							Subscribe for a <span>25% Discount</span>
						</h2>
						<p>Nulla ac convallis lorem, eget euismod nisl. Donec in
							libero sit amet mi vulputate consectetur. Donec auctor interdum
							purus, ac finibus massa bibendum nec.</p>
					</div>
				</div>
				<!-- Newsletter Form -->
				<div class="col-12 col-lg-6 col-xl-5">
					<div class="newsletter-form mb-100">
						<form action="#" method="post">
							<input type="email" name="email" class="nl-email"
								placeholder="Your E-mail"> <input type="submit"
								value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Newsletter Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row align-items-center">
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-4">
					<div class="single_widget_area">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="index.html"><img src="img/core-img/logo2.png" alt=""></a>
						</div>
						<!-- Copywrite Text -->
						<p class="copywrite">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a> &
							Re-distributed by <a href="https://themewagon.com/"
								target="_blank">Themewagon</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-8">
					<div class="single_widget_area">
						<!-- Footer Menu -->
						<div class="footer_menu">
							<nav class="navbar navbar-expand-lg justify-content-end">
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#footerNavContent"
									aria-controls="footerNavContent" aria-expanded="false"
									aria-label="Toggle navigation">
									<i class="fa fa-bars"></i>
								</button>
								<div class="collapse navbar-collapse" id="footerNavContent">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item active"><a class="nav-link"
											href="index.html">Home</a></li>
										<li class="nav-item"><a class="nav-link" href="shop.html">Shop</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											href="product-details.html">Product</a></li>
										<li class="nav-item"><a class="nav-link" href="cart.html">Cart</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											>Checkout</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
</body>

<script src="${path}/vgbox_front/store/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="${path}/vgbox_front/store/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="${path}/vgbox_front/store/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="${path}/vgbox_front/store/js/plugins.js"></script>
<!-- Active js -->
<script src="${path}/vgbox_front/store/js/active.js"></script>
<!-- Addition js -->
<script src="${path}/vgbox_front/store/js/kcommas.js"></script>
<!-- Agreeterms js -->
<script src="${path}/vgbox_front/store/js/agreeterm.js"></script>

<script type="text/javascript">

		function addToCartAndNavigate(product_num) {
		    // 선택한 수량 값을 가져옵니다.
		    var qty = document.querySelector("#qty").value;
			var id = "${mem.id}"
			
			if(id==''){
				alert('로그인이 필요합니다. 로그인 페이지로 이동합니다.')
				location.href="${path}/login.do"
			}
			
		    fetch('${path}/cartInsert.do?product_num=' + product_num + '&count=' + qty+'&id='+id)
		        .then(function (response) {
		            if (response.ok) {
		                location.href = '${path}/cartList.do?id='+id;
		            } else {
		                // 요청이 실패한 경우에 대한 처리
		                console.error('실패:', response.statusText);
		            }
		        })
		        .catch(function (error) {
		            console.error('Error adding to cart:', error);
		        });
		}
	 
	
	/* $(document).ready(function() {
		var proc = "${proc}"
		if(proc == "ins") {
			confirm("장바구니에 상품이 담겼습니다\n장바구니로 이동하시겠습니까?")
			location.href = "${path}/cartIns.do?product_num=" + product_num+"&count="+qty; 
		}
		if(proc == "fail") {
			alert("처리실패")
			location.href = "${path}/prdDetail.do"
		}
	}) */
	
		<%--if(confirm("상품이 장바구니에 담겼습니다\n바로 이동하시겠습니까?")) {
		}else {--%>
	
	
</script>

</html>