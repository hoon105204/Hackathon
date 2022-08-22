<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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

.ongoing21-content {
	display:flex;
  	align-items: center;
  	justify-content: center;
    padding: 25px;
    border-spacing: 44px;
    font-size: 16px;
    text-align:right;
}

.ongoing21-content td {
	width: 380px;
	text-align:left;
}

button {
	background-color: #151515;
	border-radius: 8px;
	border-style: none;
	box-shadow: rgba(0, 0, 0, .2) 0 3px 5px -1px,rgba(0, 0, 0, .14) 0 6px 10px 0,rgba(0, 0, 0, .12) 0 1px 18px 0;
	box-sizing: border-box;
	color: #fff;
	font-size: 20px;
	font-weight: 500;
	font-family: inherit;
	letter-spacing: .25px;
	line-height: normal;
	padding: 11px 11px;
	transition: background box-shadow 280ms ease;
	margin-right: 30px;
}

button:hover {
	background: #fff;
	color: #151515;
}

button:active {
	box-shadow: 0 4px 4px 0 rgb(60 64 67 / 30%), 0 8px 12px 6px rgb(60 64 67 / 15%);
	outline: none;
	border: 1px solid #ffffff;
}

input[type="text"] {
	font-size:15px;
	padding:5px 5px 5px 0px;
	display:block;
	width:300px;
	border:none;
	border-bottom:1px solid #757575;
    float: left;
}

input[type="password"] {
	font-size:15px;
	padding:5px 5px 5px 0px;
	display:block;
	width:300px;
	border:none;
	border-bottom:1px solid #757575;
}

.ongoing21-content-bottom {
	text-align: center;
}

.regist-button{
	border: 1px solid #d3d3d3;
    color: rgba(34,34,34,.8);
    line-height: 30px;
    border-radius: 12px;
    font-size: 14px;
    letter-spacing: -.14px;
    background-color: #fff;
}

.regist-button:hover{
	background-color: #f6f6f6;
	color:black;
}

#id_chk {
	float: right;
	width: 70px;
}

.id_input_re_1 {
	color : green;
	display : none;
}

.id_input_re_2, .id_input_re_3 {
	color : red;
	display : none;
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
        		<p>HOME > 회원가입</p>
        		</li>	
        	</ul>
			</div>
		</div>	
		
		<div class="ongoing21-all">
			<form onsubmit="return loading()" action="/login/regist" method="post">
				<table class="ongoing21-content">
					<tbody>
						<tr>
							<th><label class="required">사번</label></th>
							<td>
								<input type="text" placeholder="사번" name="EMP_ID" required="required" id="id_input">
								<input class="regist-button" type="button" id="id_chk" value="중복 확인">
								<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
								<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
								<span class="id_input_re_3">중복확인을 해주세요</span>
							</td>
						</tr>
						<tr>
							<th><label class="required">이름</label></th>
							<td><input type="text" placeholder="이름" name="EMP_NM" required="required"></td>
						</tr>
						<tr>
							<th><label class="required">비밀번호</label></th>
							<td><input type="password" placeholder="비밀번호" name="EMP_PW" required="required" id="pw1"></td>
						</tr>
						<tr>
							<th><label class="required">비밀번호 확인</label></th>
							<td><input type="password" placeholder="비밀번호" required="required" id="pw2"></td>
						</tr>
					</tbody>
				</table>
				<div class="ongoing21-content-bottom">
					<div class="btn1" id="btn1">
							<button id="submit-do" type="submit" value="작성">작성 완료</button>
							<button type="button" value="취소" onclick="location.href='/login/page'">취소</button>	    	
					</div>
				</div>
			</form>
		</div>
		
		
	</div>
	<%@ include file="footer.jsp"%>
</body>
<script type="text/javascript">
	var idCheck = false;	// 아이디 중복 검사

	function loading() {
		var pw1 = $("#pw1").val();
		var pw2 = $("#pw2").val();
		
		if(!idCheck) {
			alert("아이디 중복확인을 확인하세요!");
			return false;
		}
		
		if(pw1 == pw2) {
			alert("가입된 아이디로 로그인 하세요!");
			return true;			
		} else {
			alert("비밀번호를 확인하세요");
			return false;
		}
	}
	

	//아이디 중복검사
	$('#id_chk').on("click", function(){ // 아이디 입력마다 값을 확인
		$('.id_input_re_3').css('display','none');
		let user_Id = $('#id_input').val();
		console.log(user_Id);
		let warnMsg = $(".id_form_check"); 
		 $('.final_id_ck').css('display', 'none');
		let data = {user_Id : user_Id}
		
		$.ajax({
			type : "post",
			url : "/login/idChk",
			data : data,
			success : function(result){
				if(result != 'fail'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display", "none");
					idCheck = true;
				} else {
					$('.id_input_re_2').css("display","inline-block");
					$('.id_input_re_1').css("display", "none");
					$('#id_input2').val(null);
					idCheck = false;
				}
			}
		})

	});// function 종료

	
</script>
</html>