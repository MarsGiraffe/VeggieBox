<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<c:set var="path" 
	value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>회원가입 페이지</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="${path}/vgbox_front/login_join/css/register.css">
	<script src = "https://code.jquery.com/jquery-3.7.0.min.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/additional-methods.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="${path}/vgbox_front/login_join/js/my-login.js"></script>
	<script>
	$(document).ready(function(){
		hide();
	})
	function hide() {
		$("#businessAll").hide();
	}
	
	function show() {
		$("#businessAll").show();
	}
	</script>
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">회원</h4>
							<form method="POST" id="frm" novalidate="">
								<input type="radio" class="memChoice" id="sellerChoice" name="choice" value="seller" onclick="show()">판매자
								<input type="radio" class="memChoice" id="userChoice" name="choice" value="user" onclick="hide()" checked>구매자
								<div class="form-group">
									<label for="name">이름</label>
									<input id="name" type="text" class="form-control" name="name" required autofocus>
								</div>

								<div class="form-group" id="idreg">
									<label for="id">아이디</label>
									<input id="id" type="text" class="form-control" name="id" required>
								</div>

								<div class="form-group" id="pwdreg">
									<label for="password">비밀번호</label>
									<input id="password" type="password" class="form-control" name="password" 
										required data-eye>
								</div>

								<div class="form-group" id="pwdregR">
									<label for="passwordR">비밀번호 확인</label>
									<input id="passwordR" type="password" class="form-control" name="passwordR" required>
								</div>
								<div class="form-group">
									<label for="address">주소</label>
									<input id="address" type="text" class="form-control" name="address" required data-eye>
								</div>
					              <div class="form-group">
					            		<label for="contact">휴대폰 번호:</label>
					              <div class="input-group">
					                	<input type="text" class="form-control rounded" id="contact" placeholder="휴대폰 번호 입력" name="contact" required>
					                	<div class="input-group-append" id="contactDiv">
					                    	<button type="button" id="sendCode" style="margin-left:10px;" class="btn btn-success rounded">인증 요청</button>
					                	</div>
					                </div>
					        	  </div>
					        	  <div class="form-group">
					            		<label for="verificationCode">인증 번호:</label>
					            	<div class="input-group">
					                	<input type="text" class="form-control rounded" id="verificationCode" placeholder="인증번호 입력" name="verificationCode" required>
					            		<div class="input-group-append" id="verifyDiv">
					                    	<button type="button" id="verifyCode" style="margin-left:10px;" disabled="disabled" class="btn btn-success rounded">인증 확인</button>
					                	</div>
					            	</div>
					        	  </div>
								<div class="form-group" id="businessAll">
									<label for="businessNum">사업자 번호</label>
									<input id="businessNum" type="text" class="form-control" name="businessNum" required data-eye>
								</div>

								<div class="form-group m-0">
									<button type="submit" id="regBtn" class="btn btn-primary btn-block">
										회원가입
									</button>
								</div>
								<div class="mt-4 text-center">
									이미 계정을 가지고 계신가요? <a href="${path}/login.do">로그인</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						<a href="${path}/emerList.do">Copyright &copy; 2023 &mdash; VeggieBox</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>
	$(document).ready(function () {
		
		
		var flag = false;
		
		var regResult = "${regYN}";
		if(regResult !== "") {
			if(regResult === "success") {
				alert("회원가입에 성공했습니다.")
				window.location.href="${path}/login.do"
			}else if(regResult === "fail") {
				alert("회원가입에 실패했습니다. 다시 시도해주세요")
				window.location.href="${path}/memReg.do"
			}
		}
		
		$('#sendCode').click(function(){
	    	var phonePtn = /^(0[2-8][0-5]?|01[01346-9])-?([1-9]{1}[0-9]{2,3})-?([0-9]{4})$/;
	    	var to = $('input[name="contact"]').val();
	    	if(to != '' && phonePtn.test(to) == true){
	    	$.ajax({
	    		url : "${path}/phoneCheck.do",
	    		type : "POST",
	    		data : "to=" + to,
	    		dataType : "json",
	    		success : function(data) {
	    			const checkNum = data;
	    			/* alert('checkNum:'+ checkNum); */
	    			alert('인증 번호를 전송하였습니다');
	    			$("#verifyCode").attr("disabled",false);
	                //인증하기 버튼 클릭 이벤트
	    			$('#verifyCode').click(function(){
	    				const userNum = $('input[name="verificationCode"]').val();		
	    				if(userNum != ''){
	    					if(checkNum == userNum){
	    						alert('인증 성공하였습니다.');
	    						flag = true;
	    					}else if(checkNum != userNum){
	    						alert('인증 실패하였습니다. 다시 입력해주세요.');
	    						flag = false;
	    					}
	    				}else{
    						alert('인증번호를 정확히 입력하세요')
    					}
	    			});
	                
	    		},
	    		error : function(err) {
	    			alert(err)
	    		}
	    	});
	     }else{
	    	 alert("휴대폰 번호를 정확히 입력하세요");
	     }
	  })
		
		
	    $.validator.addMethod("verify",function(value,element,param){
	    	return param;
	    });
	    
		$.validator.addMethod("regex", function(value, element, regexp) {
		    var regExp = new RegExp(regexp);
		    return regExp.test(value);
		});
		
		$("#frm").validate({
				focusCleanup:true,
				rules: {
					name:{
						required:true,
						rangelength:[2,5]
					},
					id:{
						required:true,
						regex:/^[a-z0-9]{6,20}$/,
						remote:{
							type:"post",
							url:"${path}/checkId.do",
							data:{
								id:function(){
									return $("#id").val();
								},
								choice:function(){
									return $('input[name="choice"]:checked').val();
								}
							}
						}		
					},
					password:{
						required:true,
						regex:/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/
					},
					passwordR:{
						required:true,
						equalTo:"#password"
					},
					address:{
						required:true
					},
					contact:{
						required:true,
						regex:/^(0[2-8][0-5]?|01[01346-9])-?([1-9]{1}[0-9]{2,3})-?([0-9]{4})$/
					},
					businessNum:{
						required:{
							depends:function(){
								return $('input[name="choice"]:checked').val()=="seller"
							}
						},
						regex:/\d{3}-\d{2}-\d{5}/
					},
					verificationCode:{
						required:true,
						verify:function(){
							return flag;
						}
						
					}
					
				},
				messages:{
					name:{
						required: "이름은 필수 입력입니다.",
						rangelength: "이름은 {0}자에서 {1}자까지 사용 가능합니다."
					},
					id:{
						required: "아이디는 필수 입력입니다.",
						regex: "영문 혹은 영문과 숫자를 조합하여 최소 6자리이상 20자리로 입력해주세요",
						remote: "중복된 아이디입니다."
					},
					password:{
						required: "비밀번호는 필수 입력입니다.",
						regex: "영문, 숫자, 특수문자를 포함하여 8~15자 비밀번호를 입력해주세요"
					},
					passwordR:{
						required: "비밀번호 확인은 필수 입력입니다.",
						equalTo: "비밀번호가 일치하지 않습니다."
					},
					address:{
						required: "주소는 필수 입력입니다."
					},
					contact:{
						required: "휴대폰 번호는 필수 입력입니다.",
						regex: "'-'를 포함하여 휴대폰 번호를 입력해주세요"
					},
					businessNum:{
						required:"사업자 번호를 입력해주세요",
						regex:"'-'를 포함하여 사업자 번호를 입력해주세요"
					},
					verificationCode:{
						required:"인증 번호를 입력해주세요",
						verify:"휴대폰 인증이 필요합니다"
					}
				},
				errorPlacement: function(error, element) {
			        if (element.attr("name") == "contact") {
			            error.insertAfter("#contactDiv");
			        } else if (element.attr("name") == "verificationCode"){
			            error.insertAfter("#verifyDiv");
			        }else {
			            error.insertAfter(element);
			        }
			    },
				submitHandler:function(){
					console.log("submit");
		            form.submit();
		            
				}
			})
		});	
</script>
</body>
</html>