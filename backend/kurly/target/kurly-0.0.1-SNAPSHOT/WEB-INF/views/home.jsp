<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Home</title>
<link rel="icon" href="/images/mainhome/favicon.png">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" 
	rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<style type="text/css">

.swiper {
  width: 100%;
  height: 100%;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}

.swiper-slide img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.swiper-button-next::after,
.swiper-button-prev::after {
  color: white;
  padding: 100px;
}

.swiper .swiper-pagination-bullet {
  background-color: white;
  margin: 0 10px;
}

.contentlist {
	width: 250px;
	border-radius: 16px;
	padding: 10px;
}

.contentlist:hover {
	background-color: #ebebeb;
	cursor: pointer;
}

.contentlist-all {
	display: inline-block;
	padding-right: 20px;
}

#contentlist-title {
	border-bottom: 1px solid #ebebeb;
    padding-bottom: 12px;
}

.mainhome-bottom {
	display: flex;
    /* justify-content: space-evenly; */
    justify-content: center;
    align-items: center;
    padding: 80px 0px 80px 0px;
}

.inquiry-notice {
	height: 352px;
	padding-left: 20px;
	width: 500px;
}

#inquiry-notice-title {
	border-bottom: 1px solid #ebebeb;
    padding-bottom: 12px;
}

.notice-detail-title {
	height: 32px;
	padding: 10px 0px 10px 0px;
	cursor: pointer;
}

.inquiry-notice-inner-content {
	padding: 5px;
	margin: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.inquiry-notice-inner-content a {
	text-decoration: none;
	color: #222;
	letter-spacing: 1px;
}

.inquiry-notice-inner-content a:visited {
	color: #222;
}

#inner-date {
	display: inline-block;
    width: 83px;
    text-decoration: none;
    color: #222;
}

#inner-date:visited {
	color: #222;
}

#notice-inner1 {
	display: flex;
    align-items: center;
    justify-content: space-between;
}

</style>
</head>
<body>
  <%@ include file="header.jsp"%>
	<div id="wrap">
		<div class="section">
		 	<div class="swiper mySwiper">
		      <div class="swiper-wrapper">
		        <div class="swiper-slide"><img src="/images/mainhome/Frame1.png"></div>
		        <div class="swiper-slide"><img src="/images/mainhome/Frame2.png"></div>
				<div class="swiper-slide"><img src="/images/mainhome/Frame3.png"></div>
		      </div>
		      <div class="swiper-button-next"></div>
		      <div class="swiper-button-prev"></div>
		      <div class="swiper-pagination"></div>
		    </div>
		    
		    
		   <div class="mainhome-bottom">
		    <div class="contentlist-all">
		     <h3 id="contentlist-title">이미지 정보</h3>
	     		<img class="contentlist" src="/images/mainhome/Frame4.png">
	     		<img class="contentlist" src="/images/mainhome/Frame5.png">
	     		<img class="contentlist" src="/images/mainhome/Frame9.png">
		    </div>
		    
			    <div class="inquiry-notice">
			     <h3 id="inquiry-notice-title">공지사항</h3>
		      	  <div class="inquiry-notice-inner">
					<c:forEach var="i" begin="1" end="5">			
				        <div id="notice-inner1">
				        <div class="inquiry-notice-inner-content"><a>[공지] 공지사항 ${i}</a></div>
				        <div><a id="inner-date">2022-12-1${i}</a></div>
				        </div>
					</c:forEach>
			       </div>
			    </div>
		    </div>
		    	 	
		</div>
	</div>
  <%@ include file="footer.jsp" %>
</body>
<script>
	var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 30,
        autoplay: {
        	delay:4000
        },
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
</script>
</html>