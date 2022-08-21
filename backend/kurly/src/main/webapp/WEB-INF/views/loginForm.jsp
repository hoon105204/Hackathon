<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인/회원가입</title>
<link rel="icon" href="/images/mainhome/favicon.png">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
.middle {
	margin: 0;
	padding: 0;
}

.guideline {
	margin: 0 auto;
	width: 1125px;
}

.guideline-all {
	margin-top: 16px !important;
}

.guideline-all i {
	display: inline-block;
	color: #151515;
}

.guideline-all li {
	display: inline-block;
}

.guideline-all p {
	display: inline-block;
	font-size: 16px;
}
.tabs {
	background-color: #ffffff;
	width: 550px;
	height: 400px;
    margin: 100px auto 0px auto;
}

/* 탭 스타일 */
.tab_item {
	width: 20%;
	height: 50px;
	border-bottom: 3px solid #151515;
	background-color: #f8f8f8;
	line-height: 50px;
	font-size: 16px;
	color: #151515;
	display: block;
	float: left;
	text-align: center;
	font-weight: bold;
	transition: all 0.2s ease;
}

.tab_item:hover {
	opacity: 0.75;
}

/* 라디오 버튼 UI삭제*/
input[name="tab_item"] {
	display: none;
}

/* 탭 컨텐츠 스타일 */
.tab_content {
	display: none;
	padding: 0px;
	clear: both;
	overflow: hidden;
}

/* 선택 된 탭 콘텐츠를 표시 */
#login:checked ~ #login-content, #sign-up:checked ~ #sign-up-content,
	#sign-up-form:checked ~ #sign-up-form-content {
	display: block;
}

/* 선택된 탭 스타일 */
.tabs input:checked+.tab_item {
	background-color: #151515;
	color: #fff;
}

.tab_content .field-wrap1 {
	display: block;
	text-align: center;
	padding: 45px 10px 0px 10px;
}

.tab_content .field-wrap2 {
	display: block;
	text-align: center;
	padding: 20px 10px 20px 10px;
}
.inputstyle {
	width: 500px;
	height: 40px;
	font-size: 14px;
	border:none;
	border-bottom: 1px solid #ebebeb;
}

.inputstyle:focus {
	outline: none;
	border-bottom: 2px solid;
}

.tab_content .field-wrap-submit {
	display: block;
	text-align: center;
	padding: 20px 10px 20px 10px;
}

.tab_content .field-wrap-submit button {
	width: 500px;
	height: 52px;
	border-radius: 8px;
	cursor: pointer;
	background-color: #151515;
	color: #ffffff;
}

.forgot-idpw .forgot {
	display: block;
	text-align: center;
	border-bottom: 1px solid;
	padding: 0px 10px 20px 10px;
}

.tab_content .api-login {
	display: block;
	text-align: center;
	padding: 20px 10px 20px 10px;
}

.tab_content .api-login button {
	width: 507px;
	height: 63px;
	border-radius: 8px;
	cursor: pointer;
	background-color: #151515;
	color: #ffffff;
	margin: 20px;
}

.tab_content .sign-up-button button {
	width: 507px;
	height: 63px;
	border-radius: 8px;
	cursor: pointer;
	background-color: #151515;
	color: #ffffff;
	margin: 20px;
}

.login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}

.sign-up-button {
	margin-top: 50px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div id="wrap">
		<div class="middle">
			<div class="guideline">
			<ul class="guideline-all">
        		<li><a href="javascript:void(0)">
        		<i class="fa-solid fa-house"></i>
        		</a>
        		<p>HOME > 로그인/회원가입</p>
        		</li>	
        	</ul>
			</div>
		</div>
		
		<div class="tabs">
				<input id="login" type="radio" name="tab_item" checked> 
				<label class="tab_item" for="login">로그인</label> 
				<input id="sign-up" type="radio" name="tab_item"> 
				<label class="tab_item" for="sign-up">회원가입</label>
				
				<div class="tab_content" id="login-content">
					<form action="/login/normal" method="post">
						<div class="field-wrap1">
							<input class="inputstyle" type="text" name="EMP_ID" placeholder="사번">
						</div>
						<div class="field-wrap2">
							<input class="inputstyle" type="password" name="EMP_PW" placeholder="비밀번호">
						</div>
						<div class="field-wrap-submit">
							<button class="login-button" type="submit">로그인</button>
							<c:if test = "${result == 0 }">
								<div class = "login_warn">사번 또는 비밀번호를 잘못 입력하셨습니다.</div>
							</c:if>
						</div>
					</form>
				</div>
				
				<div class="tab_content" id="sign-up-content">
					<div class="sign-up-button">
						<button type="button" id="regist_in" onclick="location.href='/login/registform'">통합 회원 가입</button>
						<div class="forgot-idpw">
							<p class="forgot">
								이미회원이신가요?&nbsp;|&nbsp;<a href="/login/page">로그인</a>
							</p>
						</div>
						
					</div>
				</div>
				
				
		</div>
		

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>