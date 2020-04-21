<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="description" content="Yoga Studio Template">
	    <meta name="keywords" content="Yoga, unica, creative, html">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>Yummy | Template</title>
	
	    <!-- Google Font -->
	    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
	
	    <!-- Css Styles -->
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/bootstrap.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/font-awesome.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/nice-select.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/slicknav.min.css" type="text/css">
	    <link rel="stylesheet" href="${pagecontext.request.contextpath}/css/style.css" type="text/css">
	</head>
	
	<body>
	    <!-- Page Preloder -->
	    <div id="preloder">
	        <div class="loader"></div>
	    </div>
	
	    <!-- Header Section Begin -->
	    <header class="header-section-other">
	        <div class="container-fluid">
	            <div class="logo">
	                <a href="/index"><img src="${pagecontext.request.contextpath}/img/little-logo.png" alt=""></a>
	            </div>
	            <div class="nav-menu">
	                <nav class="main-menu mobile-menu">
	                    <ul>
	                        <li><a href="/index">Home</a></li>
	                        <li><a href="#">Pages</a>
	                            <ul class="sub-menu">
	                                <li><a href="about-me.html">About Me</a></li>
	                                <li><a href="categories.html">Categories</a></li>
	                                <li><a href="recipe.html">Recipe</a></li>
	                                <li><a href="blog.html">Blog</a></li>
	                                <li><a href="contact.html">Contact</a></li>
	                            </ul>
	                        </li>
	                        <li><a href="recipe.html">Recipes</a></li>
	                        <li class="active"><a href="/menu/menu">메뉴</a></li>
	                        <li><a href="contact.html">Contact</a></li>
	                    </ul>
	                </nav>
	                <div class="nav-right search-switch">
	                    <i class="fa fa-search"></i>
	                </div>
	            </div>
	            <div id="mobile-menu-wrap"></div>
	        </div>
	    </header>
	    <!-- Header End -->
	
	    <!-- Hero Search Section Begin -->
	    <div class="hero-search set-bg" data-setbg="${pagecontext.request.contextpath}/img/search-bg.jpg">
	        <div class="container">
	            <div class="filter-table">
	                <form action="#" class="filter-search">
	                    <select id="tag">
	                        <option value="">구분</option>
	                        <option value="drink">음료</option>
				            <option value="bakery">베이커리</option>
	                    </select>
	                    <select id="category">
	                        <option value="">종류</option>
	                        <option value="ESP">에스프레소</option>
				            <option value="TWG">티(TWG)</option>
				            <option value="SHA">쉐이크</option>
				            <option value="ADE">에이드</option>
				            <option value="LAT">라떼</option>
				            <option value="JUI">주스</option>
				            <option value="SMO">스무디</option>
				            <option value="BRE">빵</option>
				            <option value="DES">디저트</option>
				            <option value="COO">쿠키</option>
	                    </select>
	                    <input type="text" placeholder="메뉴명">
	                    <button type="submit">검색</button>
	                </form>
	            </div>
	        </div>
	    </div>
	    <!-- Hero Search Section End -->
	
	    <!-- Recipe Section Begin -->
	    <section class="recipe-section spad">
	        <div class="container">
	            <div class="row" id="menuList">
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-1.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>One Pot Weeknight Soup</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-2.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Blueberries cake</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-3.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Pork Steak with Onion</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-4.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Pizza with salami</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-5.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Pumpkin Chilli Soup</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-6.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Salmon with veggies</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-7.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Strawberry Chessecake</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-8.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Key Lime Pie</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 col-sm-6">
	                    <div class="recipe-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/recipe/recipe-9.jpg" alt=""></a>
	                        <div class="ri-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Pizza with cheesse</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="recipe-pagination">
	                        <a href="#" class="active">01</a>
	                        <a href="#">02</a>
	                        <a href="#">03</a>
	                        <a href="#">04</a>
	                        <a href="#">Next</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Recipe Section End -->
	
	    <!-- Categories Feature Recipe Section Begin -->
	    <section class="categories-feature-recipe spad">
	        <div class="section-title">
	            <h5>Featured Recipes</h5>
	        </div>
	        <div class="container po-relative">
	            <div class="plus-icon">
	                <i class="fa fa-plus"></i>
	            </div>
	            <div class="row">
	                <div class="col-lg-7">
	                    <div class="cfr-item">
	                        <div class="cfr-item-img set-bg" data-setbg="${pagecontext.request.contextpath}/img/cat-feature/big-1.jpg">
	                            <i class="fa fa-plus"></i>
	                        </div>
	                        <div class="cfr-item-text">
	                            <div class="cat-name">Vegan</div>
	                            <a href="#">
	                                <h4>One Pot Weeknight Lasagna Soup Recipe</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua.</p>
	                        </div>
	                    </div>
	                    <div class="cfr-item">
	                        <div class="cfr-item-img set-bg" data-setbg="${pagecontext.request.contextpath}/img/cat-feature/big-2.jpg">
	                            <i class="fa fa-plus"></i>
	                        </div>
	                        <div class="cfr-item-text">
	                            <div class="cat-name">Meat Lover</div>
	                            <a href="#">
	                                <h4>Veggie soup with Mushrooms</h4>
	                            </a>
	                            <p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
	                                aliqua. Lorem ipsum dolor sit amet.</p>
	                        </div>
	                    </div>
	                    <div class="cfr-item">
	                        <div class="cfr-item-img set-bg" data-setbg="${pagecontext.request.contextpath}/img/cat-feature/big-3.jpg">
	                            <i class="fa fa-plus"></i>
	                        </div>
	                        <div class="cfr-item-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Caramel Ice Cream with Berries</h4>
	                            </a>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
	                                ut labore et dolore magna aliqua.</p>
	                        </div>
	                    </div>
	                    <div class="cfr-item">
	                        <div class="cfr-item-img set-bg" data-setbg="${pagecontext.request.contextpath}/img/cat-feature/big-4.jpg">
	                            <i class="fa fa-plus"></i>
	                        </div>
	                        <div class="cfr-item-text">
	                            <div class="cat-name">Desert</div>
	                            <a href="#">
	                                <h4>Freash Octopuse with lime juice</h4>
	                            </a>
	                            <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit
	                                amet, consectetur adipiscing.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-lg-4 offset-lg-1">
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-1.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>One Pot Weeknight Lasagna Soup Recipe</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-2.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>Lava Cake with a Tone of Chocolate</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-3.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>One Pot Weeknight Lasagna Soup Recipe</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-4.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>Smoked Salmon mini Sandwiches with Onion</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-5.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>Asparagus with Pork Loin and Vegetables</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-6.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>Dry Cookies with Corn</h6>
	                        </div>
	                    </div>
	                    <div class="cfr-small-item">
	                        <a href="#"><img src="${pagecontext.request.contextpath}/img/cat-feature/small-7.jpg" alt=""></a>
	                        <div class="cfr-small-text">
	                            <div class="cat-name">Vegan</div>
	                            <h6>Italian Tiramisu with Coffe</h6>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	    <!-- Categories Feature Recipe Section End -->
	
	    <!-- Footer Section Begin -->
	    <footer class="footer-section">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-5">
	                    <div class="fs-left">
	                        <div class="logo">
	                            <a href="/index">
	                                <img src="${pagecontext.request.contextpath}/img/footer-logo.png" alt="">
	                            </a>
	                        </div>
	                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
	                            labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
	                            viverra maecenas accumsan lacus vel facilisis.</p>
	                    </div>
	                </div>
	                <div class="col-lg-6 offset-lg-1">
	                    <form action="#" class="subscribe-form">
	                        <h3>Subscribe to our newsletter</h3>
	                        <input type="email" placeholder="Your e-mail">
	                        <button type="submit">Subscribe</button>
	                    </form>
	                    <div class="social-links">
	                        <a href="#"><i class="fa fa-instagram"></i><span>Instagram</span></a>
	                        <a href="#"><i class="fa fa-pinterest"></i><span>Pinterest</span></a>
	                        <a href="#"><i class="fa fa-facebook"></i><span>Facebook</span></a>
	                        <a href="#"><i class="fa fa-twitter"></i><span>Twitter</span></a>
	                        <a href="#"><i class="fa fa-youtube"></i><span>Youtube</span></a>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-12">
	                    <div class="copyright-text">
	                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
	<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	                    </div>
	                </div>
	            </div>
	        </div>
	    </footer>
	    <!-- Footer Section End -->
	
	    <!-- Search model -->
		<div class="search-model">
			<div class="h-100 d-flex align-items-center justify-content-center">
				<div class="search-close-switch">+</div>
				<form class="search-model-form">
					<input type="text" id="search-input" placeholder="Search here.....">
				</form>
			</div>
		</div>
		<!-- Search model end -->
		<script id="menuListItem" type="text/x-jquery-tmpl"> 
		<div class="col-lg-4 col-sm-6">
		    <div class="recipe-item">
		        <a href="#"><img src="\${imgSrc}" alt=""></a>
		        <div class="ri-text">
					{{if type == "음료"}}   
						<div class="cat-name" style="background: #381E0F;">\${type}</div>
					{{else}}
						<div class="cat-name" style="background: #381e0f69;">\${type}</div>
		            {{/if}}
		            <a href="#">
		                <h4>\${menuNm}</h4>
		            </a>
		            <p>\${descript}</p>
		        </div>
		    </div>
		</div>
		</script>
	    <!-- Js Plugins -->
	    <script src="${pagecontext.request.contextpath}/js/jquery-3.3.1.min.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/bootstrap.min.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/jquery.slicknav.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/jquery.nice-select.min.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/mixitup.min.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/main.js"></script>
	    <script src="${pagecontext.request.contextpath}/js/jquery-tmpl/jquery.tmpl.js"></script>
  		<script src="${pagecontext.request.contextpath}/js/jquery-tmpl/jquery.tmpl.min.js"></script>
	    
	    <script>
			$(document).ready(function(){
				  
				//메뉴 목록조회
				getMenuList();
			})
			
			//메뉴 목록조회
			function getMenuList(){
				$.ajax({
					url : '/menu/getMenuList.do',
				  	type:'POST',
				  	success:function (result){
					  	$('#menuList').empty();
					  	if(result.length > 0){
					  		for(var i=0; i< result.length; i++){
					  			$('#menuListItem').tmpl(result[i]).appendTo('#menuList');
					  		}
					  	}
				 	},
				 	error:function(request,status,error){
				    	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				  	}
				});
			}
		</script>
	</body>
</html>