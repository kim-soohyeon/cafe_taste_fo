<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="${pagecontext.request.contextpath}/css/menuDtl.css" rel="stylesheet" type="text/css">
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
							
							<ul>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
							</ul>
						</div>
						</c:forEach>
					</div>
					<div class="clear"> </div>
				  </div>
				  <!-- <div class="form">
					<div class="main-right-w3l">
						<div class="main-right1-w3ls">
							<h1>Special<span>Pastries Special Items</span></h1>
							<div class="main-right-grid">
								<div class="main-right-grid-left-w3-agile">
									<div class="main-right-grid-left1">
										<h3>Croissants <span>$ 5.99</span></h3>
									</div>
									<div class="main-right-grid-left1">
										<h3>Macarons <span>$ 8.99</span></h3>
									</div>
									<div class="main-right-grid-left1">
										<h3>Strudels <span>$ 6.99</span></h3>
									</div>
								</div>
								<div class="main-right-grid-left-w3-agile">
									<div class="main-right-grid-left1">
										<h3>Cannoli <span>$ 7.99</span></h3>
									</div>
									<div class="main-right-grid-left1">
										<h3>Tarts <span>$ 9.99</span></h3>
									</div>
									<div class="main-right-grid-left1">
										<h3>Pretzels<span>$ 5.99</span></h3>
									</div>
								</div>
								<div class="clear"> </div>
							</div>
						</div>
					</div>
					<div class="main-left-agileits">
						<div class="top-img-agile2">
							
						</div>
						<div class="text-agileinfo">
							<h3>PASTRIES</h3>
							<h4>Todays special offer</h4>
							<p>Suspendisse metus libero, tincidunt eu felis eget hendrerit  Aenean eu tellus hendrerit consequat </p>
							<ul>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
								<li><i class="fa fa-star" aria-hidden="true"></i></li>
							</ul>
						</div>
					</div>
					<div class="clear"> </div>
				  </div> -->
				</div>
			</div>
			<div class="copyright">
					<p>&copy 2017 Bakery Menu Widget. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts.</a></p>
				</div>
		</div>
	</div>
</body>
</html>