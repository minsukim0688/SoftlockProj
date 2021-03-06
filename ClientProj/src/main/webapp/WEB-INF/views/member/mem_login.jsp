<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀임</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css">
<script src="../resources/common/jquery/jquery-3.3.1.js"></script>
<script>
$(function() {
	// 로그인 버튼을 눌렀을때
	$('#loginBtn').click(function() {
		// 폼값확인
		if($('#id').val() == ""){
			$('#loginMsg').html('아이디를 입력해주세요.');
			$('#loginMsg').css("color", "red");
			$('#id').focus();
			return false;
		}
		if($('#pass').val() == ""){
			$('#loginMsg').html('비밀번호를 입력해주세요.');
			$('#loginMsg').css("color", "red");
			$('#pass').focus();
			return false;
		} 
		
		// 폼전송
		var id = $('#id').val();
		var pass = $('#pass').val();
		$.ajax({
			type : 'post',
			url : '../member/loginAction',
			data : {
	        	id : id,
	        	pass : pass
	        },
	        dataType : "json",
			contentType : "application/x-www-form-urlencoded;charset:utf-8",
			success : function(d) {
	            if (d.success == 0) {
	                $('#loginMsg').html("아이디와 비밀번호를 확인해주세요."); 
	                $('#loginMsg').css("color", "red");
	            } else if (d.success == 1){
	            	location.href='../member/home';
	            }
	        },
	        error : function(e) {
				alert("실패" + e.status + " : " + e.statusText);
			}
		});
	});
});
</script>
<style type="text/css">
#a{
	color:gray;
}
#a:hover{
	color:#2f5ed6;
}
</style>
</head>
<body style="background-color:#F5F6F9">
<!-- Navigation -->
<jsp:include page="/resources/common/nav.jsp"/>
<div class="container">
<form name="loginForm">
	<!-- 로그인 처리 후 다시 돌아가야 할 페이지 URL -->
	<input type="hidden" name="returnPage" value="" /><br /><br /><br /><br />
	<div style="width:1000px; height:500px; background-color:white; text-align:center; float:none; margin:0 auto;">
		<div style="width:400px; background-color:white; text-align:center; float:none; margin:0 auto;">
			<br /><br /><br />
			<div class="logo">
				<h4>로그인</h4>	
				<br /><br />		
			</div>	
			<div>
				<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요."
					style="font-size:0.8em;">
			</div><br />
			<div>
				<input type="password" class="form-control" id="pass" name="pass" placeholder="비밀번호를 입력하세요."
					style="font-size:0.8em;">
			</div>
			<div id="loginMsg" style="text-align:left; font-size:0.7em;"></div><br />
			<div>
				<button type="button" id="loginBtn" class="btn btn-primary btn-lg btn-block">로그인</button>
			</div>
			<div style="margin-top:10px;">
				<div style="width:48%; display:inline-block;"><a id="a" href="../member/join" style="font-size:0.7em;">회원가입</a></div>
				<div style="font-size:0.7em; color:gray; display:inline-block;">｜</div>
				<div style="width:46%; display:inline-block;"><a id="a" href="../member/find" style="font-size:0.7em;">ID/PW찾기</a></div>
			</div>
			<hr />
			<div style="width:49%; display:inline-block;"><button>네이버로그인</button></div>
		</div>
	</div>
</form><br />
</div><br /><br /><br />
<!-- bottom -->
<jsp:include page="/resources/common/footer.jsp"/>
</body>
</html>