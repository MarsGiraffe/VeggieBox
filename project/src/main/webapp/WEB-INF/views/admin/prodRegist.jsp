<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="utf-8"/>
<c:set var="path" 
   value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="header.jsp" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<script type="text/javascript">
	$(document).ready(function() {				
		var msg = "${ins}"
		if (msg == "등록성공"){
			alert(msg)
			location.href = "${path}/ADmemship.do"
		} 
		if (msg == "등록실패"){
			alert(msg)
			location.href = "${path}/ADprodRegist.do"
		}
	})
</script>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@include file="sidebar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
            <%@include file="topbar.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="card o-hidden border-0 shadow-lg my-5">
						<div class="card-body p-0">
							<!-- Nested Row within Card Body -->
							<div class="row border-bottom-primary">
								<div class="col-lg-6 d-none d-lg-block" id="thumbBox">
									<img src="" id="thumbnails"/>	
								</div>
								<div class="sellerRegForm">
									<div class="p-5">
										<div class="text-center">
											<h1 class="h4 text-gray-900 mb-4">상품 등록</h1>
										</div>
										<form method="post" class="user" id="frm" enctype="multipart/form-data">
											<div class="form-group row">
												<div class="col-sm-6">
													<label for="id" class="form-label mt-4">판매자ID</label>
													<select class="form-select" id="id" name="id">
														<option value="">선택</option>
														<c:forEach var="s" items="${sellerId}">
															<option value="${s}">${s}</option>
														</c:forEach>
													</select>
												</div>
												<div class="col-sm-6">
													<input type="text" class="form-control form-control-user" name="product_name" id="product_name" placeholder="상품명">
												</div>
											</div>
											<div class="form-group">
												<input type="number" class="form-control form-control-user" name="price" step="100" id="price" placeholder="가격">
											</div>
											<div class="form-group">
												<label for="imgFile" class="form-label mt-4">상품 이미지 첨부</label>
												<input class="form-control" type="file" id="imgFile" name="imgFiles" multiple="multiple">
											</div>
											<div class="form-group row" id="checkRadio">
												<div class="col-sm-6 saleRadio">
													<input type="radio" class="form-check-input" id="for_saleN" name="for_sale" value="0">
													<label class="form-check-label" for="member">준비중</label>
												</div>
												<div class="col-sm-6 saleRadio">
													<input type="radio" class="form-check-input" id="for_saleY" name="for_sale" value="1">
													<label class="form-check-label" for="seller">판매중</label>
												</div>
											</div>
											<hr>
											<button type="button" id="regBtn" class="btn btn-primary btn-user btn-block" disabled>등록</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
			<%@include file="footer.jsp" %>
	<script type="text/javascript">
		$("#checkRadio").hide();

		
		
		
		$(document).ready(function() {
			
			$('#regBtn').click(function(){
				$('#regBtn').attr('disabled',false)
				$("form").attr("action","${path}/ADuploadImg.do")
				$("form").submit();
			})
			
			
			var flag1 = false;
			var flag2 = false;
			var flag3 = false;
			var flag4 = false;
			var flag5 = false;

			$('#id').on('change', function() {
				var sellerId = $(this).val();
				if (sellerId != '') {
					$(this).css('outline', '3px solid green');
					flag1 = true;
				} else {
					$(this).css('outline', '3px solid red');
					flag1 = false;
				}
				checkBtn();
			});
			$('#product_name').keyup(function() {
				var prdNameV = $(this).val();
				var prdNameL = prdNameV.length

				if (prdNameL > 2 && prdNameL < 20) {
					$(this).css('outline', '3px solid green');
					flag2 = true;
				} else {
					$(this).css('outline', '3px solid red');
					flag2 = false;
				}
				checkBtn();
			});
			$('#price').on('blur', function() {
				var priceV = $(this).val();
				var priceL = $(this).val().length
				// 100원 단위 치환
				$(this).val(Math.floor(priceV / 100) * 100);
				// 1000원 ~ 1000만원
				if (priceL > 3 && priceL < 8) {
					$(this).css('outline', '3px solid green');
					flag3 = true;
				} else {
					$(this).css('outline', '3px solid red');
					flag3 = false;
				}
				checkBtn();
			});
			$('#imgFile').on('change', function() {
				if($(this).val()==''){
					$('#thumbnails').attr('src','');
				} else{
					setThumbs(this,'#thumbnails')
				}
				var filename = $(this).val();
				if (filename == '') {
					$(this).css('outline', '3px solid red');
					flag4 = false;
					$("#checkRadio").hide();
				} else {
					$(this).css('outline', '3px solid green');
					flag4 = true;
					$("#checkRadio").show();
				}
				checkBtn();
			});
			$('#checkRadio [type=radio]').on('change', function() {
				if ($(this).val() != '') {
					flag5 = true;
				} else {
					flag5 = false;
				}
				checkBtn();
			})
			function checkBtn() {
				if (flag1 && flag2 && flag3 && flag4 && flag5) {
					$('#regBtn').prop('disabled', false)
				} else {
					$('#regBtn').prop('disabled', true)
				}
			}
		});
		
		function setThumbs(input, expression){
			if(input.files&&input.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$(expression).attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>

</html>