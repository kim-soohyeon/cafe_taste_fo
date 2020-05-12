<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	</head>
	<body>
		<section id="container">
			<form action="/user/register" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control required" type="text" id="name" name="name" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">이메일</label>
					<input class="form-control required" type="email" id="email" name="email" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control required" type="password" id="password" name="password" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원가입</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
		<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/login";
			})
		
			$("#submit").on("click", function(){
				$(".required").each(function() {
		    		if($(this).val()==""){
		    			alert("입력란을 확인해주세요.");
						$(this).focus();
						return false;
		    		}
		        });
			});
		})
	</script>
	</body>
	
</html>