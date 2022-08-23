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
	#tblBody1 {
		/*
		 * tblBody의 데이터는 필요한 열의 수만큼만 만드시고 헤더와 col의 width는 동일해야 합니다.
		 */
		width: 1100px;
		table-layout: fixed;
		height: 30px;
		border-collapse: collapse;
	}

	#tblBackground2 {
		/* 
		 *  화면에 보여야 할 Table의 가로크기를 잡아줍니다. 
		 */
		width: 1120px;
		table-layout: fixed;
	}
	#divHeadScroll2 {
		/* 
		 *  안의 내용이 790보다 길게 적용이 되므로 overflow-x, overflow-y를 hidden을 걸어줘서 설정한 가로너비만큼만 화면에 보이도록 잡아줍니다. 
		 */
		width: 100%;
		overflow-x: hidden;
		overflow-y: hidden;
		border-top: 2px solid #d0d0d0;
	}
	#tblHead2 {
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
	#divBodyScroll2 {
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
	}
	#tblBody2 {
		/*
		 * tblBody의 데이터는 필요한 열의 수만큼만 만드시고 헤더와 col의 width는 동일해야 합니다.
		 */
		width: 1100px;
		table-layout: fixed;
		height: 30px;
		border-collapse: collapse;
	}

	/* 테이블 스타일용 */
	.title {
		text-align: center;
		font-weight: bold;
	}
	.content {
		border-bottom: 1px solid #efefef;
		padding: 10px 10px 10px 10px;
		text-align: center;                
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
		
	}

/* 표 css 끝 */

.box {
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin: auto;
	margin-top: 40px;
	margin-bottom: 80px;
	width: 1000px;
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


</style>
</head>
<body>
<%@ include file="header.jsp"%>
	<div class="field-wrap1">
		<input class="inputstyle" type="hidden" name="WRK_STAT">
	</div>
	<div id="wrap">
		<div class="box">
		<div class="section">
		 	<div class="section_btn_status1">
		 	  <button class="menu" id="btn_status_all">전체</button>
		 	  <button class="menu" id="btn_status_100">작업대기</button>
		 	  <button class="menu" id="btn_status_200">작업중</button>
		 	  <button class="menu" id="btn_status_300">작업완료</button>
		    </div>
		</div>	   
		
<!-- 		<div class="section">
		 	<div class="section_btn_wrkproduce">
		 	  <button id="btn_wrkproduce_all">전체</button>
		    </div>
		</div>	     -->
		
		<div class="section">
		 	<div class="grid_wrkLot">
				<table id="tblBackground1" cellspacing="0">
					<tr>
						<td>
							<div id="divHeadScroll1">
								<table id="tblHead1" border="0" >
									<colgroup>
										<col style="width:40px;" align="center" />
										<col style="width:100px;" align="center"/>
										<col style="width:150px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:17px;" align="center"/>
									</colgroup>
									<tr>
										<td class="title">NO</td>
										<td class="title">Lot 작업 상태</td>
										<td class="title">작업 Lot ID</td>
										<td class="title">작업 지시일시</td>
										<td class="title">작업 완료기한</td>
										<td class="title">작업 시작일시</td>
										<td class="title">작업 완료일시</td>
										<td></td>
									</tr>
								</table>
							</div>
							<div id="divBodyScroll1">
								<table id="tblBody1" border="0">
									<colgroup>
										<col style="width:40px;" align="center" />
										<col style="width:100px;" align="center"/>
										<col style="width:150px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
									</colgroup>
									<tbody id = table1>
									</tbody>									
								</table>
							</div>
						</td>
					</tr>
				</table>
		    </div>
		</div> 
		
		<div class="section">    
		 	<div class="section_btn_status2">
		 	  <button class="menu2" id="btn_status_dtl_all">전체</button>
		 	  <button class="menu2" id="btn_status_dtl_10">작업대기</button>
		 	  <button class="menu2" id="btn_status_dtl_20">작업중</button>
		 	  <button class="menu2" id="btn_status_dtl_30">작업완료</button>
		    </div>
				
		</div>	   
		
		<div class="section">
		 	<div class="grid_wrkLot">
				<table id="tblBackground2" cellspacing="0">
					<tr>
						<td>
							<div id="divHeadScroll2">
								<table id="tblHead2" border="0" >
									<colgroup>
										<col style="width:40px;" align="center" />
										<col style="width:100px;" align="center"/>
										<col style="width:150px;" align="center"/>
										<col style="width:100px;" align="center"/>
										<col style="width:40px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:17px;" align="center"/>
									</colgroup>
									<tr>
										<td class="title">NO</td>
										<td class="title">작업세부 상태</td>
										<td class="title">작업세부 ID</td>
										<td class="title">제품 종류</td>
										<td class="title">수량</td>
										<td class="title">세부작업 시작일시</td>
										<td class="title">세부작업 완료일시</td>
										<td></td>
									</tr>
								</table>
							</div>
							<div id="divBodyScroll2">
								<table id="tblBody2" border="0">
									<colgroup>
										<col style="width:40px;" align="center" />
										<col style="width:100px;" align="center"/>
										<col style="width:150px;" align="center"/>
										<col style="width:100px;" align="center"/>
										<col style="width:40px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:120px;" align="center"/>
										<col style="width:17px;" align="center"/>
									</colgroup>
									<tbody id = table2>
									</tbody>
									
								</table>
							</div>
						</td>
					</tr>
				</table>
		    </div>
		</div>
		
		</div>
	</div>
  <%@ include file="footer.jsp" %>
</body>

<script type="text/javascript">


	$('.menu').each(function(index){
		$(this).attr('menu-index', index);
	}).click(function(){
		var index = $(this).attr('menu-index');
		$('.menu[menu-index=' + index + ']').addClass('clicked_menu');
		$('.menu[menu-index!=' + index + ']').removeClass('clicked_menu');
	});
	
	$('.menu2').each(function(index){
		$(this).attr('menu-index', index);
	}).click(function(){
		var index = $(this).attr('menu-index');
		$('.menu2[menu-index=' + index + ']').addClass('clicked_menu');
		$('.menu2[menu-index!=' + index + ']').removeClass('clicked_menu');
	});


$(document).ready(function() {
	
    $(".menu").click(function() {
    	
    	var pId = $(this).attr("id");
    	
       	var pWrkStatus = "";
       	
       	switch(pId){
       	case "btn_status_all":
       		pWrkStatus = "%";
       		break;
       	case "btn_status_100":
       		pWrkStatus = "100";
       		break;
       	case "btn_status_200":
       		pWrkStatus = "200";
       		break;
       	case "btn_status_300":
       		pWrkStatus = "300";
       		break;
       	default:
       		pWrkStatus = "%";
       	
       	};
       	
        $.ajax({
            url : '/wrk/wrksearch1',
            type : 'POST',
            data : {WRK_STAT : pWrkStatus},
        	// data : $("#form_Search1").serialize(),
            success : function(obj) {
                console.log(obj);
                var data = JSON.parse(obj);
                console.log(data.WrkList); //배열로 가져옴
                
                fn_buildTable1(data.WrkList); // 화면 배치
                },
            error : function(e) {
                console.log(e);
            }
    	});
	});
    

    $(".menu2").click(function() {
    	
    	var pId2 = $(this).attr("id");
    	
       	var pWrkStatus2 = "";
       	
       	switch(pId2){
       	case "btn_status_dtl_all":
       		pWrkStatus2 = "%";
       		break;
       	case "btn_status_dtl_10":
       		pWrkStatus2 = "10";
       		break;
       	case "btn_status_dtl_20":
       		pWrkStatus2 = "20";
       		break;
       	case "btn_status_dtl_30":
       		pWrkStatus2 = "30";
       		break;
       	default:
       		pWrkStatus2 = "%";
       	
       	};
       	
        $.ajax({
            url : '/wrk/wrksearch2',
            type : 'POST',
            data : {DTL_STAT : pWrkStatus2},
        	// data : $("#form_Search2").serialize(),
            success : function(obj) {
                console.log(obj);
                var data = JSON.parse(obj);
                console.log(data.WrkDtlList); //배열로 가져옴
                
                fn_buildTable2(data.WrkDtlList); // 화면 배치
                },
            error : function(e) {
                console.log(e);
            }
    	});
	});
       	
});


function fn_buildTable1(data) {
	// console.log("fn_buildTable1 start!");
	
	var row = "";
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
		}
        
       // console.log("fn_buildTable1 end!");
}


function fn_buildTable2(data) {

	// console.log("fn_buildTable2 start!");
	
	var row = "";
    var table = document.getElementById("table2") ;
    table.innerHTML = "";
       for (var i=0; i<data.length; i++) { 
            row = "<tr>"+
	        		"<td id=table2_"+ "NO "+ i +" class='cell'><center>" + Number(i+1) + "</center></td>"+
	        		"<td id=table2_"+ "DTL_STAT "+ i +" class='cell'><center>" + data[i].dtl_STAT + "</center></td>"+
	        		"<td id=table2_"+ "DTL_ID "+ i +" class='cell'><center>" + data[i].dtl_ID + "</center></td>"+
	        		"<td id=table2_"+ "PROD_ID "+ i +" class='cell'><center>" + data[i].prod_ID + "</center></td>"+
	        		"<td id=table2_"+ "DTL_NUMB"+ i +" class='cell'><center>" + data[i].dtl_NUMB + "</center></td>"+
	        		"<td id=table2_"+ "DTL_START"+ i +" class='cell'><center>" + data[i].dtl_Start + "</center></td>"+
	        		"<td id=table2_"+ "DTL_END"+ i +" class='cell'><center>" + data[i].dtl_END + "</center></td>"+
	        	   "</tr>" + "\n" ;
            table.innerHTML += row;   
		}
        
       // console.log("fn_buildTable2 end!");
	
	
}

</script>
</html>