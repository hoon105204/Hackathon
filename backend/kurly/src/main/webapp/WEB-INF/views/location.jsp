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
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<style type="text/css">

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

#workList-title {
	border-bottom: 1px solid #ebebeb;
    padding-bottom: 12px;
}


/* 표 css 시작 */

	#tblBackground1 {
		/* 
		 *  화면에 보여야 할 Table의 가로크기를 잡아줍니다. 
		 */
		width: 1120px;
		table-layout: fixed;
	}
	#divHeadScroll1 {
		/* 
		 *  안의 내용이 790보다 길게 적용이 되므로 overflow-x, overflow-y를 hidden을 걸어줘서 설정한 가로너비만큼만 화면에 보이도록 잡아줍니다. 
		 */
		width: 100%;
		overflow-x: hidden;
		overflow-y: hidden;
		border-top: 2px solid #d0d0d0;
	}
	#tblHead1 {
		/*
		 *  Table의 필드명의 너비를 여기에서 지정합니다. 
		 *  필드명을 보여줄 테이블은 body보다 하나의 td를 더 가지며 마지막 td는 아무것도 입력하지 않고 크기만 잡아줍니다.
		 *  이렇게 하는 이유는 데이터를 보여주는 테이블은 세로 스크롤의 가로두께만큼 더 이동하기 때문입니다.
		 */
		table-layout: fixed;
		background-color: #efefef;
		padding-top: 4px;
		width:1117px;
		height: 30px;
		border-collapse: collapse;
	}
	#divBodyScroll1 {
		/*
		 *  overflow-x, overflow-y는 scroll로 지정하고,
		 *  height는 테이블의 데이터가 나올 기본 크기를 잡아줍니다.
		 *  세로길이를 잡아주지 않으면 overflow-y가 걸리지 않습니다.
		 */
		width: 100%;
		height: 350px;
		overflow-x: scroll;
		overflow-y: scroll;
		border-top: 1px solid #d0d0d0;
		margin-bottom: 15px;
	}


.cell {
	padding-bottom: 13px;
}

button {
	background-color: #151515;
	border-radius: 4px;
	border-style: none;
	box-shadow: rgba(0, 0, 0, .2) 0 3px 5px -1px,rgba(0, 0, 0, .14) 0 6px 10px 0,rgba(0, 0, 0, .12) 0 1px 18px 0;
	box-sizing: border-box;
	color: #fff;
	font-size: 15px;
	font-weight: 100;
	font-family: inherit;
	letter-spacing: .25px;
	line-height: normal;
	padding: 5px;
	transition: background box-shadow 280ms ease;
	margin-right: 5px;
}

button:hover {
	background: #fff;
	color: #151515;
}

.clicked_menu{
	color: ;border-color: #4285f4;
	color: #4285f4;
	background: #fff;
}

/* left 컨테이너 css 시작 */

.container {
    width: 1440px;
    /* min-height: 100%; */
    min-height: 100vh;
    margin: 0 auto;
    margin: -100px auto;
    padding: 100px 0;
    box-sizing: border-box;
}
.container::after {
    display: block;
    clear: both;
    content: '';
}
.left-box  {
    float: left;
    width: 800px;
    height: 900px;
    margin: 0 auto;
    border-right: 3px dotted blueviolet;
    /* background-color: gray; */
    box-sizing: border-box;
    
    flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: auto;
	margin-top: 40px;
	margin-bottom: 80px;
}
.right-box {
    float: right;
    width: 640px;
    height: 900px;
    margin: 0 auto;
    background-color: lightgray;
    
    flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: auto;
	margin-top: 40px;
	margin-bottom: 80px;
}

.Area {
	float:left;
}
.Location {
	float:left;
}

.Location_right {
	clear:both;
}

/* left 컨테이너 css 끝 */



</style>
</head>
<body>
<%@ include file="header.jsp"%>
	<div class="field-wrap1">
		<input class="inputstyle" type="hidden" name="WRK_STAT">
	</div>
	<div id="wrap">
		
	    <div class="container">
	    
	    	<!-- 왼쪽 화면 시작 -->
	        <div class="left-box ">
	        
				<div class="section">
				 	<div class="section_btn_status1">
				 	  <button class="menu" id="btn_A_dong">A동</button>
				 	  <button class="menu" id="btn_B_dong">B동</button>
				 	  <button class="menu" id="btn_C_dong">C동</button>
				    </div>
				</div>
				
				<div class="section">
				 	<div id="leftCanvas">
				    </div>
				</div>
	        
	        </div>
	        <!-- 왼쪽 화면 끝 -->
	        
			<!-- 오른쪽 화면 시작 -->				
	        <div class="right-box">
	        
	        </div>
	        <!-- 오른쪽 화면 끝 -->

	    </div>
		
	</div>
  <%@ include file="footer.jsp" %>
</body>

<script type="text/javascript">

var LeftArea = [
	  {id:"LeftArea11",	class_style:"Area",	x:30,	y:20,	width: 360,	height:400/*,	border:"1px solid #000000"*/ } // 1열 1구역
	, {id:"LeftArea12",	class_style:"Area",	x:50,	y:20,	width: 360,	height:400/*,	border:"1px solid #000000"*/ } // 1열 2구역
	, {id:"LeftArea21",	class_style:"Area",	x:30,	y:60,	width: 360,	height:400/*,	border:"1px solid #000000"*/ } // 2열 1구역
	, {id:"LeftArea22",	class_style:"Area",	x:50,	y:60,	width: 360,	height:400/*,	border:"1px solid #000000"*/ } // 2열 2구역
]

// 1열 1구역 생성
var Location11 = [
	  {id:"LocationArea11_Title",	class_style:"Location",	x:12,	y:20,	width:400,	height:30,								 							title:"<table class='tb1100'><tr><td class='location_title' id='tdLocation_Title'>1열 1구역&nbsp;&nbsp</td></tr></table>"}
	  
	, {id:"LocationArea1101",	class_style:"Location",	x:20,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1101'>1101&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1102",	class_style:"Location",	x:35,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1102'>1102&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1103",	class_style:"Location",	x:50,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1103'>1103&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1104",	class_style:"Location",	x:65,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1104'>1104&nbsp;&nbsp</td></tr></table>"}
	
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}
	
	, {id:"LocationArea1105",	class_style:"Location",	x:20,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1105'>1105&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1106",	class_style:"Location",	x:35,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1106'>1106&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1107",	class_style:"Location",	x:50,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1107'>1107&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1108",	class_style:"Location",	x:65,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1108'>1108&nbsp;&nbsp</td></tr></table>"}
	
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}
	
	, {id:"LocationArea1109",	class_style:"Location",	x:20,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1109'>1109&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1110",	class_style:"Location",	x:35,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1110'>1110&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1111",	class_style:"Location",	x:50,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1111'>1111&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1112",	class_style:"Location",	x:65,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1112'>1112&nbsp;&nbsp</td></tr></table>"}
	
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}
	
	, {id:"LocationArea1113",	class_style:"Location",	x:20,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1113'>1113&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1114",	class_style:"Location",	x:35,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1114'>1114&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1115",	class_style:"Location",	x:50,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1115'>1115&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1116",	class_style:"Location",	x:65,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1116'>1116&nbsp;&nbsp</td></tr></table>"}
	
];

//1열 2구역 생성
var Location12 = [
	  {id:"LocationArea12_Title",	class_style:"Location",	x:12,	y:20,	width:400,	height:30,								 							title:"<table class='tb1100'><tr><td class='location_title' id='tdLocation_Title'>1열 2구역&nbsp;&nbsp</td></tr></table>"}
	  
	, {id:"LocationArea1201",	class_style:"Location",	x:20,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1201'>1101&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1202",	class_style:"Location",	x:35,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1202'>1102&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1203",	class_style:"Location",	x:50,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1203'>1103&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1204",	class_style:"Location",	x:65,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1204'>1104&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                          
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                     
	                                                                                                                                                                                                                                          
	, {id:"LocationArea1205",	class_style:"Location",	x:20,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1205'>1105&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1206",	class_style:"Location",	x:35,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1206'>1106&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1207",	class_style:"Location",	x:50,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1207'>1107&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1208",	class_style:"Location",	x:65,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1208'>1108&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                           
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                      
	                                                                                                                                                                                                                                           
	, {id:"LocationArea1209",	class_style:"Location",	x:20,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1209'>1109&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1210",	class_style:"Location",	x:35,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1210'>1110&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1211",	class_style:"Location",	x:50,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1211'>1111&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1212",	class_style:"Location",	x:65,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1212'>1112&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                            
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                       
	                                                                                                                                                                                                                                            
	, {id:"LocationArea1213",	class_style:"Location",	x:20,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1213'>1113&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1214",	class_style:"Location",	x:35,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1214'>1114&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1215",	class_style:"Location",	x:50,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1215'>1115&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea1216",	class_style:"Location",	x:65,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG1216'>1116&nbsp;&nbsp</td></tr></table>"}
	
];


//2열 1구역 생성
var Location21 = [
	  {id:"LocationArea21_Title",	class_style:"Location",	x:12,	y:20,	width:400,	height:30,								 							title:"<table class='tb1100'><tr><td class='location_title' id='tdLocation_Title'>2열 1구역&nbsp;&nbsp</td></tr></table>"}
	  
	, {id:"LocationArea2101",	class_style:"Location",	x:20,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2101'>1101&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2102",	class_style:"Location",	x:35,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2102'>1102&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2103",	class_style:"Location",	x:50,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2103'>1103&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2104",	class_style:"Location",	x:65,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2104'>1104&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                          
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                     
	                                                                                                                                                                                                                                          
	, {id:"LocationArea2105",	class_style:"Location",	x:20,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2105'>1105&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2106",	class_style:"Location",	x:35,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2106'>1106&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2107",	class_style:"Location",	x:50,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2107'>1107&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2108",	class_style:"Location",	x:65,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2108'>1108&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                          
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                     
	                                                                                                                                                                                                                                          
	, {id:"LocationArea2109",	class_style:"Location",	x:20,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2109'>1109&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2110",	class_style:"Location",	x:35,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2110'>1110&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2111",	class_style:"Location",	x:50,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2111'>1111&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2112",	class_style:"Location",	x:65,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2112'>1112&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                          
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                     
	                                                                                                                                                                                                                                          
	, {id:"LocationArea2113",	class_style:"Location",	x:20,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2113'>1113&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2114",	class_style:"Location",	x:35,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2114'>1114&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2115",	class_style:"Location",	x:50,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2115'>1115&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2116",	class_style:"Location",	x:65,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2116'>1116&nbsp;&nbsp</td></tr></table>"}
	
];


//2열 2구역 생성
var Location22 = [
	  {id:"LocationArea22_Title",	class_style:"Location",	x:12,	y:20,	width:400,	height:30,								 							title:"<table class='tb1100'><tr><td class='location_title' id='tdLocation_Title'>2열 2구역&nbsp;&nbsp</td></tr></table>"}
	  
	, {id:"LocationArea2201",	class_style:"Location",	x:20,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2201'>1101&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2202",	class_style:"Location",	x:35,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2202'>1102&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2203",	class_style:"Location",	x:50,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2203'>1103&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2204",	class_style:"Location",	x:65,	y:50,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2204'>1104&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                            
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                       
	                                                                                                                                                                                                                                            
	, {id:"LocationArea2205",	class_style:"Location",	x:20,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2205'>1105&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2206",	class_style:"Location",	x:35,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2206'>1106&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2207",	class_style:"Location",	x:50,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2207'>1107&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2208",	class_style:"Location",	x:65,	y:100,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2208'>1108&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                            
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                       
	                                                                                                                                                                                                                                            
	, {id:"LocationArea2209",	class_style:"Location",	x:20,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2209'>1109&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2210",	class_style:"Location",	x:35,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2210'>1110&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2211",	class_style:"Location",	x:50,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2211'>1111&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2212",	class_style:"Location",	x:65,	y:150,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2212'>1112&nbsp;&nbsp</td></tr></table>"}
	                                                                                                                                                                                                                                            
	, {id:"Location skip",			class_style:"Location_right",	x:0,	y:0,	width:0,	height:0}                                                                                                                                       
	                                                                                                                                                                                                                                            
	, {id:"LocationArea2213",	class_style:"Location",	x:20,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2213'>1113&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2214",	class_style:"Location",	x:35,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2214'>1114&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2215",	class_style:"Location",	x:50,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2215'>1115&nbsp;&nbsp</td></tr></table>"}
	, {id:"LocationArea2216",	class_style:"Location",	x:65,	y:200,	width:65,	height:30,	border: "2px solid #000000", backgroundColor:"#481FAE",	title:"<table class='tb1100'><tr><td class='location_block' id='tdLocation_GG2216'>1116&nbsp;&nbsp</td></tr></table>"}
	
];

$(document).ready(function() {
	
	// left 영역
	makePanel(LeftArea,	"leftCanvas");
	
	makePanel(Location11,  "LeftArea11");
	makePanel(Location12,  "LeftArea12");
	makePanel(Location21,  "LeftArea21");
	makePanel(Location22,  "LeftArea22");
	
	
	// right 영역
});

function makePanel(panelArray, canvaeId){
	var newPanel;
	for (var ii = 0; ii < panelArray.length; ii++){
		newPanel = document.createElement("div");
		
		newPanel.setAttribute("id", panelArray[ii].id);
		newPanel.setAttribute("class", panelArray[ii].class_style);
		newPanel.style.position = "relative";
		
		newPanel.style.left = panelArray[ii].x+"px";
		newPanel.style.top = panelArray[ii].y+"px";
		newPanel.style.width = panelArray[ii].width+"px";
		newPanel.style.height = panelArray[ii].height+"px";
		
		if(panelArray[ii].border != undefined){
			newPanel.style.border = panelArray[ii].border;
		}
		if(panelArray[ii].backgroundColor != undefined){
			newPanel.style.backgroundColor = panelArray[ii].backgroundColor;
		}
		if(panelArray[ii].backgroundImage != undefined){
			newPanel.style.backgroundImage = panelArray[ii].backgroundImage;
		}
		if(panelArray[ii].backgroundRepeat != undefined){
			newPanel.style.backgroundRepeat = panelArray[ii].backgroundRepeat;
		}
		if(panelArray[ii].backgroundPosition != undefined){
			newPanel.style.backgroundPosition = panelArray[ii].backgroundPosition;
		}
		if(panelArray[ii].filter != undefined){
			newPanel.style.filter = panelArray[ii].filter;
		}
		if(panelArray[ii].title != undefined){
			newPanel.innerHTML = panelArray[ii].title;
		}
		if(panelArray[ii].color != undefined){
			newPanel.style.color = panelArray[ii].color;
		}
		if(panelArray[ii].fontSize != undefined){
			newPanel.style.fontSize = panelArray[ii].fontSize;
		}
		if(panelArray[ii].fontWeight != undefined){
			newPanel.style.fontWeight = panelArray[ii].fontWeight;
		}
		if(panelArray[ii].fontName != undefined){
			newPanel.style.fontName = panelArray[ii].fontName + ",Verdana, sans-serif";
		}
		if(panelArray[ii].textAlign != undefined){
			newPanel.style.textAlign = panelArray[ii].textAlign;
		}
		if(panelArray[ii].fontStyle != undefined){
			newPanel.style.fontStyle = panelArray[ii].fontStyle;
		}
		if(panelArray[ii].display != undefined){
			newPanel.style.display = panelArray[ii].display;
		}
		
		document.getElementById(canvaeId).appendChild(newPanel);
	}
	
}



$(document).ready(function() {
	
    $(".menu").click(function() {
    	
    	fn_change_displayed_dong();
    	
    	var pId = $(this).attr("id");
    	
       	var pDong = "";
       	
       	switch(pId){
       	case "btn_A_dong":
       		pDong = "A";
       		break;
       	case "btn_B_dong":
       		pDong = "B";
       		break;
       	case "btn_C_dong":
       		pDong = "C";
       		break;
       	default:
       		pDong = "%";
       	
       	};
       	
       	fn_change_displayed_dong(pDong);
       	
/*         $.ajax({
            url : '/map/mapsearch1',
            type : 'POST',
            data : {WRK_STAT : pDong},
        	// data : $("#form_Search1").serialize(),
            success : function(obj) {
                console.log(obj);
                var data = JSON.parse(obj);
                console.log(data.mapList); //배열로 가져옴
                
                fn_buildTable(data.mapList); // 화면 배치
                },
            error : function(e) {
                console.log(e);
            }
    	}); */
	});
       	
});


function fn_buildTable(data) {
	// console.log("fn_buildTable1 start!");
	
/* 	var row = "";
    var table = document.getElementById("table1") ;
    table.innerHTML = "";
       for (var i=0; i<data.length; i++) { 
            row = "<tr>"+
	        		"<td id=table1_"+ "NO "+ i +" class='cell'><center>" + Number(i+1) + "</center></td>"+
	        		"<td id=table1_"+ "WRK_STAT "+ i +" class='cell'><center>" + data[i].wrk_STAT + "</center></td>"+
	        		"<td id=table1_"+ "WRK_ID "+ i +" class='cell'><center>" + data[i].wrk_ID + "</center></td>"+
	        		"<td id=table1_"+ "WRK_PRODUCE "+ i +" class='cell'><center>" + data[i].wrk_PRODUCE + "</center></td>"+
	        		"<td id=table1_"+ "WRK_DUEDATE "+ i +" class='cell'><center>" + data[i].wrk_DUEDATE + "</center></td>"+
	        		"<td id=table1_"+ "WRK_START "+ i +" class='cell'><center>" + data[i].wrk_START + "</center></td>"+
	        		"<td id=table1_"+ "WRK_END "+ i +" class='cell'><center>" + data[i].wrk_END + "</center></td>"+
	        	   "</tr>" + "\n" ;
            table.innerHTML += row;
		} */
        
       // console.log("fn_buildTable1 end!");
}

$('.menu').each(function(index){
	$(this).attr('menu-index', index);
}).click(function(){
	var index = $(this).attr('menu-index');
	$('.menu[menu-index=' + index + ']').addClass('clicked_menu');
	$('.menu[menu-index!=' + index + ']').removeClass('clicked_menu');
});

function fn_change_displayed_dong(pDong){
	
	var td;
	var pId;
	
	var G3 = ['1','2'];
	var G4 = ['1','2'];
	var G5 = ['01','02','03','04'
		     ,'05','06','07','08'
		     ,'09','10','11','12'
		     ,'13','14','15','16'];
	
	
	for(var i3=0; i3<G3.length; i3++ ){
		for(var i4=0; i4<G4.length; i4++ ){
			for(var i5=0; i5<G5.length; i5++ ){
				pId = "tdLocation_GG" + G3[i3] + G4[i4] + G5[i5];
 				td = document.getElementById(pId);
				td.innerHTML = 'A' + pDong + G3[i3] + G4[i4] + G5[i5]; // A창고 pDong 동
			}	
		}	
	}
}

</script>
</html>