<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pagecontext.request.contextpath}/css/menuDtl.css" rel="stylesheet" type="text/css">
	<link href="${pagecontext.request.contextpath}/css/star.css" rel="stylesheet" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Bakery Menu Widget Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	<div class="main">
		<div class="w3_login">
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
					<div class="main-right-w3l">
						<div class="main-right1-w3ls">
							<c:forEach var="menu" items="${ menuDtl }">
								<h1>영양 성분<span>알레르기 성분 정보: ${menu.allergy}</span></h1>
								<div class="main-right-grid">
									<div class="main-right-grid-left-w3-agile">
										<div class="main-right-grid-left1">
											<h3>칼로리 <span>${menu.calorie}kcal</span></h3>
										</div>
										<div class="main-right-grid-left1">
											<h3>당류 <span>${menu.sugar}g</span></h3>
										</div>
										<div class="main-right-grid-left1">
											<h3>단백질 <span>${menu.protein}g</span></h3>
										</div>
									</div>
									<div class="main-right-grid-left-w3-agile">
										<div class="main-right-grid-left1">
											<h3>포화지방 <span>${menu.fat}g</span></h3>
										</div>
										<div class="main-right-grid-left1">
											<h3>나트륨 <span>${menu.salt}mg</span></h3>
										</div>
										<div class="main-right-grid-left1">
											<h3>카페인<span>${menu.caffeine}mg</span></h3>
										</div>
									</div>
									<div class="clear"> </div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="main-left-agileits">
						<c:forEach var="menu" items="${ menuDtl }">
						<div class="top-img-agile" style="background-image : url(${menu.imgSrc});">
						</div>
						<div class="text-agileinfo">
							<h3>${menu.menuNm}</h3>
							<h4></h4>
							<p>${menu.descript}</p>
							<!-- <ul>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
							</ul> -->
							<span class="star-input">
								<span class="input">
							    	<input type="radio" name="star-input" value="1" id="p1">
							    	<label for="p1">1</label>
							    	<input type="radio" name="star-input" value="2" id="p2">
							    	<label for="p2">2</label>
							    	<input type="radio" name="star-input" value="3" id="p3">
							    	<label for="p3">3</label>
							    	<input type="radio" name="star-input" value="4" id="p4">
							    	<label for="p4">4</label>
							    	<input type="radio" name="star-input" value="5" id="p5">
							    	<label for="p5">5</label>
							  	</span>
							  	<button onclick="regRating();" class="btn btn-outline-success">등록</button>	
							  	<!-- $checked.next().text() -->				
							</span>
						</div>
						</c:forEach>
					</div>
					<div class="clear"> </div>
				  </div>
				</div>
			</div>
			<div class="copyright">
				<p>&copy 2017 Bakery Menu Widget. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
			</div>
		</div>
	</div>
<script src="${pagecontext.request.contextpath}/js/jquery-1.11.3.min.js"></script>
<script src="${pagecontext.request.contextpath}/js/star.js"></script>
<script>
function regRating(){
	var $star = $(".star-input")
	var $checked = $star.find(":checked");
	var rating1 = $checked.next().text();
	var menuId1 = ${menuId};
	$.ajax({
		url : '/menu/rating.do',
	  	type:'POST',
		data : {
			rating: rating1,
			menuId: menuId1
	    },
	  	success:function (result){
			alert(result.msg);
	 	},
	 	error:function(request,status,error){
	    	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	  	}
	});
}
</script>
</body>
</html>