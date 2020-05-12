<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<body>
		<div class="container">
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
		</div>
		<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				location.href = "/";
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