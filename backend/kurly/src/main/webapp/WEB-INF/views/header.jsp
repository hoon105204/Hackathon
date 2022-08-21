<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

header {
	width: 100%;
	position: fixed;
	background-color: #fff;
	top: 0;
	left: 0;
	right: 0;
	z-index: 99999;
}

.nav-top {
	height: 38px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding: 0 50px;
	border-bottom: 1px solid #ebebeb;
	
}

.nav-top-text {
	color: rgba(34,34,34,.8);
	text-decoration: none;
	font-size: 14px;
	padding: 10px;
}

#user-nm {
	color: rgba(34,34,34,.8);
	font-size: 14px;
	padding: 10px;
	margin: 0px;
}

.nav-bottom {
	border-bottom: 1px solid #ebebeb;
	height: 67px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 50px;
}

.nav-menu-all {
	display: flex;
	font-weight: bold;
}

.nav-menu {
	padding: 10px;
}


.nav-top a {
	text-decoration: none;
}

.nav-top a:hover {
	text-decoration: none;
	color: rgba(34,34,34,.8);
}

.nav-top a:visited {
	text-decoration: none;
	color: rgba(34,34,34,.8);
}

.nav-toggleBtn {
	display: none;
}

.nav-logo {
	display: flex;
}

#nav-logo-text {
	color: #222;
	text-decoration: none;
	font-size: 32px;
	font-weight: bold;
}


#nav-logo-text:visited {
	color: #222;
	text-decoration: none;
}

.nav-menu-all a {
	text-decoration: none;
	color: #222;
}

.nav-menu-all a:visited {
	text-decoration: none;
	color: #222;
}

.nav-logo-img1 {
	width: 120px;
	height: 58px;
}


@media (max-width:900px) {

	.nav-bottom {
    border-bottom: 1px solid #ebebeb;
    height: 67px;
    padding: 0 35px;
	}

	.nav-all {
		flex-direction: row;
		align-items: flex-start;
	}
	
	.nav-menu-all {
		display: none;
		flex-direction: row;
		align-items: center;;
		width: 100%;
	}
	
	.nav-toggleBtn {
		display: block;
		text-decoration: none;
		color: #222;
	}
	
	.nav-toggleBtn:visited {
		color: #222;
	}
	
	.nav-menu div {
		width: 100%;
	}
	
	.nav-menu-all.active {
		display: flex;
	}
	
}

</style>

<body>

	<header>
	 <nav class="nav-all">
	  <div class="nav-top">
	  
	  	<c:if test="${EMP_ID != null }">
	      <h5 id="user-nm">${EMP_NM } 님</h5>
		  <input type="hidden" name="in_Code" value="${EMP_ID }">
		</c:if>
		
	    
	    <c:if test="${EMP_ID == null }">
			<a href="/login/page" class="nav-top-text">로그인 / 회원가입</a>
	    </c:if>
	    <c:if test="${EMP_ID != null }">
			 <a href="/login/logout" class="nav-top-text">로그아웃</a>
			 <input type="hidden" name="in_Code" value="${EMP_ID }">
		</c:if>
	  </div>
	  <div class="nav-bottom">
	   <div class="nav-logo">
	   <span class="nav-logo-img1">
	    <a href="/">
	     <img src="/images/mainhome/nav-logo.png">
	     </a>
		</span>
		
		</div>
	   
	   
	    <div class="nav-menu-all">
	    
	    <div class="nav-menu" id="n-menu1">
	    <c:if test="${EMP_ID == null }">
	    <a href="/login/page">물류관리</a>
	    </c:if>
	    <c:if test="${EMP_ID != null }">
	    <a href="/map/user">물류관리</a>
	    </c:if>
	    </div>
	    
   	    <div class="nav-menu" id="n-menu2">
	    <c:if test="${EMP_ID == null }">
	    <a href="/login/page">작업목록</a>
	    </c:if>
	    <c:if test="${EMP_ID != null }">
	    <a href="/workList">작업목록</a>
	    </c:if>
	    </div>
	    
	    <div class="nav-menu" id="n-menu3">
	    <c:if test="${EMP_ID == null }">
	    <a href="/login/page">단말기등록</a>
	    </c:if>
	    <c:if test="${EMP_ID != null }">
	    <a href="/board/requestform">단말기등록</a>
	    </c:if>
	    </div>
	    
	    <div class="nav-menu" id="n-menu4">
	    <c:if test="${EMP_ID == null }">
	    <a href="/login/page">AR화면</a>
	    </c:if>
	    <c:if test="${EMP_ID != null }">
	    <a href="/mypage/history">AR화면</a>
	    </c:if>
	    </div>
	    

	    
	    </div>
	    
	    <a href="#" class="nav-toggleBtn"><i cla6ss="fa-solid fa-bars"></i></a>
	    
	  </div>
	 </nav>
	</header>

</body>
<script>

	const toggleBtn = document.querySelector('.nav-toggleBtn');
	const menu = document.querySelector('.nav-menu-all');
	
	toggleBtn.addEventListener('click', () => {
		menu.classList.toggle('active');
	})

</script>
</html>