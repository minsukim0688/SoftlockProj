<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="../member/home" style="margin-left:50px; font-weight:bold;">
  	<img src="../resources/common/hospital-64.png" style="width:30px; margin-right:10px;"/>Navbar
  </a>
  <button class="navbar-toggler" aria-expanded="false" aria-controls="navbarColor03" aria-label="Toggle navigation" type="button" data-target="#navbarColor03" data-toggle="collapse">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active" style="margin-left:100px;">
        <a class="nav-link" href="#">병원찾기 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" style="margin-left:50px;">
        <a class="nav-link" href="#">건강정보</a>
      </li>
      <li class="nav-item" style="margin-left:50px;">
        <a class="nav-link" href="#">서비스소개</a>
      </li>
    </ul>
    
    <button type="button" class="btn btn-outline-primary" onclick="location.href='../member/login';">로그인</button>
	<button type="button" class="btn btn-outline-success" style="margin-left:10px; margin-right:50px;">병원회원바로가기</button>
    <!-- 검색폼
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>
</body>
</html>