<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <c:if test="${member == null}">
                    	<li class="login-btn"><a href="/" style="color: #fff;">로그인</a></li>
                    </c:if>
                    <c:if test="${member != null }">
						<li class="login-btn"><a href="${pagecontext.request.contextpath}/user/logout" style="color: #fff;">로그아웃</a></li>
					</c:if>
                </ul>
            </nav>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
<!-- Header End -->