
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<c:set var="path" 
	value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>VGBOX</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="index-images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="index-images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${path}/vgbox_front/store/css/store.css">
	<link rel="stylesheet" href="${path}/vgbox_front/store/css/reset.css">
	<link rel="stylesheet" href="${path}/vgbox_front/store/css/global.css">
    <link rel="stylesheet" href="${path}/vgbox_front/index/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="${path}/vgbox_front/index/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${path}/vgbox_front/index/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${path}/vgbox_front/index/css/custom.css">

	
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
</head>

<body>
 <%@include file="header.jsp" %>

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->
    <table>
    <thead>
    </thead>
    <tbody>
    
     
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <!-- Owl Carousel 추가 -->
        <div class="owl-carousel owl-theme">
            <c:forEach var="productandimg" items="${emerList}">
                <div class="col mb-5">
                    <div class="card h-100">
                        <div class="card-img-container">
                            <!-- 상품이미지 -->
                            <img class="card-img-top" src="${path}/vgbox_front/store/img/product-img/${productandimg.img}" alt="Product Image" />
                        </div>
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- 상품명 -->
                                <h5 class="fw-bolder">${productandimg.product_name}</h5>
                                <!-- 가격 -->
                                <fmt:formatNumber value="${productandimg.price}" pattern="#,###원" />
                            </div>
                        </div>
                        <!-- Product actions -->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center">
                               <a class="btn btn-outline-dark mt-auto"
											onclick="buyprd(${productandimg.product_num})"> 구매하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
 
	    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                <img src="${path}/vgbox_front/index/img/banner-01.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>The Veggie Box</strong></h1>
                            <p class="m-b-40">베기박스는 못난이채소 판매사이트 입니다. </p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="${path}/vgbox_front/index/img/banner-02.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>못난이 채소란?</strong></h1>
                            <p class="m-b-40"> <br>못난이 채소란 모양이 이상하거나 흠집이 있어서 상품성이 떨어지는 채소입니다.</p>                           
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
        </div>
    </div>
    <!-- End Slider -->

    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-top-box">
							<h3>영업시간</h3>
							<ul class="list-time">
								<li>월요일 - 금요일: 08:00 ~ 18:00</li> <li>토요일: 10:00 ~ 08:00 </li> <li>일요일: <span>Closed</span></li>
							</ul>
						</div>
					</div>
					
					
				</div>
				<hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

   

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <!-- Owl Carousel CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<!-- Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="${path}/vgbox_front/index/js/jquery-3.2.1.min.js"></script>
    <script src="${path}/vgbox_front/index/js/popper.min.js"></script>
    <script src="${path}/vgbox_front/index/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="${path}/vgbox_front/index/js/jquery.superslides.min.js"></script>
    <script src="${path}/vgbox_front/index/js/bootstrap-select.js"></script>
    <script src="${path}/vgbox_front/index/js/inewsticker.js"></script>
    <script src="${path}/vgbox_front/index/js/bootsnav.js"></script>
    <script src="${path}/vgbox_front/index/js/images-loded.min.js"></script>
    <script src="${path}/vgbox_front/index/js/isotope.min.js"></script>
    <script src="${path}/vgbox_front/index/js/owl.carousel.min.js"></script>
    <script src="${path}/vgbox_front/index/js/baguetteBox.min.js"></script>
    <script src="${path}/vgbox_front/index/js/form-validator.min.js"></script>
    <script src="${path}/vgbox_front/index/js/contact-form-script.js"></script>
    <script src="${path}/vgbox_front/index/js/custom.js"></script>
   <script src="${path}/vgbox_front/index/js/jquery-3.2.1.min.js"></script>
   <!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
   <script>
    // Owl Carousel 초기화
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 15,
            nav: true,
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                992: {
                    items: 3
                },
                1200: {
                    items: 4
                }
            }
        });
    });
    </script>
<script type="text/javascript">
		function buyprd(product_num) {
			location.href = "${path}/prdDetail.do?product_num=" + product_num;
		}
	</script>
</body>
</html>