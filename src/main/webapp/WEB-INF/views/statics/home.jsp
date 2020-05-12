<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<div class="container">
		<form name='homeForm' method="post" action="/user/login">
			<c:if test="${member == null}">
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="email" id="email" name="email" class="form-control" placeholder="이메일">
				</div>
				<div class="form-group">
					<label for="password">비밀번호</label>
					<input type="password" id="password" name="password" class="form-control" placeholder="비밀번호">
				</div>
				<div class="form-action">
					<button class="btn btn-primary btn-lg" type="submit">로그인</button>
					<button onclick="location.href='/user/register'" class="btn btn-default btn-lg" type="button">회원가입</button>
				</div>
			</c:if>
			<c:if test="${member != null }">
				<div>
					<p>${member.name}님 환영 합니다.</p>
					<!-- <button id="logoutBtn" type="button">로그아웃</button> -->
				</div>
			</c:if>
			<c:if test="${msg == false}">
				<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
			</c:if>
		</form>
	</div>
</body>
</html>