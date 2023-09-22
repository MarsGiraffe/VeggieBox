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
	<title>로그인 페이지</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="${path}/vgbox_front/login_join/css/login.css">
	<script src = "https://code.jquery.com/jquery-3.7.0.min.js" type="text/javascript"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/additional-methods.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="${path}/vgbox_front/login_join/js/my-login.js"></script>
	<script>
	$(document).ready(function () {
	   	var flag = false;
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
		
		$("#frmID").validate({
			focusCleanup:true,
			rules:{
				name:{
					required:true,
					rangelength:[2,5]
				},
				contact:{
					required:true,
					regex:/^(0[2-8][0-5]?|01[01346-9])-?([1-9]{1}[0-9]{2,3})-?([0-9]{4})$/
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
					required:"이름은 필수 입력입니다.",
					rangelength: "이름은 {0}자에서 {1}자까지 사용 가능합니다."
				},
				contact:{
					required: "휴대폰 번호는 필수 입력입니다.",
					regex: "'-'를 포함하여 휴대폰 번호를 입력해주세요"
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
		$("#frmPWD").validate({
			focusCleanup:true,
			rules:{
				name:{
					required:true,
					rangelength:[2,5]
				},
				id:{
					required:true,
					regex:/^[a-z0-9]{6,20}$/
				},	
				contact:{
					required:true,
					regex:/^(0[2-8][0-5]?|01[01346-9])-?([1-9]{1}[0-9]{2,3})-?([0-9]{4})$/
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
					required:"이름은 필수 입력입니다.",
					rangelength: "이름은 {0}자에서 {1}자까지 사용 가능합니다."
				},
				id:{
					required: "아이디는 필수 입력입니다.",
					regex: "영문 혹은 영문과 숫자를 조합하여 최소 6자리이상 20자리로 입력해주세요"
				},
				contact:{
					required: "휴대폰 번호는 필수 입력입니다.",
					regex: "'-'를 포함하여 휴대폰 번호를 입력해주세요"
				},
				verificationCode:{
					required:"인증 번호를 입력해주세요",
					verify:"휴대폰 인증이 필요합니다"
				}
			},
			errorPlacement: function(error, element) {
		        if (element.attr("name") == "contact") {
		            error.insertAfter("#contactDivPWD");
		        } else if (element.attr("name") == "verificationCode"){
		            error.insertAfter("#verifyDivPWD");
		        }else {
		            error.insertAfter(element);
		        }
		    },
		    submitHandler:function(){
				console.log("submit");
	            form.submit();
			}
		})
	})
	</script>
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">로그인</h4>
							<form method="POST" id="frm" novalidate="">
								<div class="form-group">
									<input type="radio" class="memChoice" name="choice" value="seller">판매자
									<input type="radio" class="memChoice" name="choice" value="user" checked>구매자
									<label for="id">아이디</label>
									<input id="id" type="text" class="form-control" name="id" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">비밀번호
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								<div class="form-group mt-4">
									<button type="button" id="login" class="btn btn-primary btn-block">
										로그인
									</button>
								</div>
								<div class="mt-4 text-center">
									계정이 없으신가요? <a href="${path}/memReg.do">회원가입</a>
								</div>
								<div class="mt-2 text-center">
									계정을 잃어버리셨나요? <a href="#" data-toggle="modal" data-target="#forgotModal">아이디/비밀번호 찾기</a>
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
	
	<%@include file="modal.jsp" %>
<script>
$(document).ready(function(){
	
    $("#login").on('click',function(){
        $.ajax({
            type: "post",
            url: "${path}/login.do",
            data: $("#frm").serialize(),
            success: function(response) {
            	 if (response.trim() === "fail") {
                     alert('아이디와 비밀번호가 틀렸습니다. 다시 확인해주세요');
                     window.location.href = "${path}/login.do"
                 } else if(response.trim() === "success") {
                     $.ajax({
                         type: "post",
                         url: "${path}/checkSession.do",
                         success: function(auth) {
                             if (auth.trim() == '관리자') {
                                 window.location.href = "${path}/ADmain.do";
                             } else if(auth.trim() == '회원'){
                                 window.location.href = "${path}/emerList.do";
                             } else if(auth.trim() == '판매자'){
                                 window.location.href = "${path}/emerList.do";
                             }
                         },
                         error: function(err){
                             console.log(err);
                         }
                     });
                 }
             },
             error: function(err){
                 console.log(err);
             }
         });
     });
 });

var forgotid = "${id}"
if(forgotid == 'fail'){
	alert('입력한 정보를 다시 확인해주세요')
	$('#forgotModal').modal('show');
}else if(forgotid != '') {
	alert('아이디는 '+forgotid+'입니다.')
}

var forgotpwd = "${pass}"
if(forgotpwd == 'fail'){
	alert('입력한 정보를 다시 확인해주세요')
	$('#forgotModal').modal('show');
}else if(forgotpwd != '') {
	alert('비밀번호는'+forgotpwd+'입니다.')
}

</script>
</body>
</html>