<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("dd일");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY퍼즐</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

button {
	border: none;
}

#con1 {
	height: 100%;
	background-color: #121212;
	padding-top: 200px;
	padding-bottom: 5%;
}

#main1 {
	margin-left: 200px;
	width: 174px;
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	color: #FFFFFF;
	margin-bottom: 5%;
}

#main2 {
	margin-top: 13px;
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 500;
	font-size: 18px;
	line-height: 26px;
	color: #FFFFFF;
}

#main3 {
	margin-top: 60px;
}

#main4 {
	margin-top: 60px;
}

.qna {
	margin-top: 49px;
	width: 138px;
	height: 46px;
	background: #7A07EE;
	border-radius: 12px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 18px;
	line-height: 26px;
	text-align: center;
	text-transform: uppercase;
	color: #FFFFFF;
}

#con5 {
	height: 100px;
	background-color: #0c0c0c;
}

#footer1, #footer2, #footer3 {
	margin-top: 38.43px;
}

#footer2 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	color: #FFFFFF;
}

#footer3 {
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 14px;
	line-height: 20px;
	text-align: right;
	color: #6F6C77;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

#login {
	background-color: #7A07EE;
}

.centered {
	margin-left: 10rem;
}

nav {
	background-color: black;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

#mypage:hover {
	background-color: #7A07EE;
}

#logout:hover {
	background-color: #7A07EE;
}

.ott {
	width: 70%;
	height: 150px;
	border-radius: 12px;
	background-color: white;
	margin-bottom: 2%;
}

.info {
	width: 70%;
	height: 200px;
	border-radius: 12px;
	background-color: white;
	margin-bottom: 2%;
}

.info2 {
	width: 70%;
	height: 110px;
	border-radius: 12px;
	background-color: white;
	margin-bottom: 2%;
}

.info2 div{
height:50%;
}

.ott div {
	float: left;
	height: 100%;
}

.left, .right {
	width: 20%;
	align-items: center;
	display: flex;
	justify-content: center;
}

.left img {
	width: 60px;
	height: 60px;
}

.right img {
	width: 45px;
	height: 45px;
}

.right img:hover {
	cursor: pointer;
}

.center {
	width: 80%;
	height: 100%;
	text-align: left;
}

.top {
	font-weight: 700;
	height: 65%;
	padding-top: 5%;
	font-size: 24px;
	color: #535B5C;
}

.bottom {
	height: 35%;
	padding-top: 0.5%;
	color: #585858;
}

.center div {
	width: 100%;
	height: 50%;
}

.row1 {
	height: 35%;
	margin-left: 2%;
	margin-top: 2%;
}

.row1 div {
	float: left;
	width: 15%;
	height: 50%;
	border-radius: 12px;
}

.row1 img {
	width: 137px;
	height: 40px;
	margin-top:2%;
	margin-right:2%;
}

.row2, .row3 {
	height: 30%;
}

.row2 div, .row3 div {
	float: left;
	width: 47%;
	height: 100%;
}

.infoname {
	line-height: 55px;
	font-weight: 700;
	text-align: left;
	font-size: 22px;
	margin-left: 2%;
	color: #535B5C;
}

.infodetail {
	line-height: 55px;
	font-weight: 700;
	text-align: right;
	font-size: 20px;
	margin-left: 2%;
}

.row4, .row5 {
	height: 50%;
	text-align:left;
}

.row4 .infoname, .row5 .infoname {
	float: left;
	width: 20%;
	height: 100%;
}

.row4 .infodetail, .row5 .infodetail  {
	float: left;
	width: 74%;
	height: 100%;
}

a{
text-decoration:none;
color:#7A07EE;
}

a:hover{
color:#7A07EE;
}

</style>
</head>

<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="/index.jsp" id=logo><img
				src="/img/logo2.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ol class="navbar-nav centered">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/index.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">MY퍼즐</a></li>
					<li class="nav-item"><a class="nav-link" href="#">포즐피디아</a></li>

				</ol>
				<ol class="nav-pills navbar-nav w-100 justify-content-end centered"
					id=po>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/list.board?cpage=1">고객센터</a></li>
					<c:choose>
						<c:when test="${loginID != null}">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"
								style="color: #EDEDED;"> ${nickname}님 </a>
								<ul class="dropdown-menu"
									aria-labelledby="navbarDropdownMenuLink"
									style="background-color: #121212;">
									<c:choose>
										<c:when test="${kakao == null}">
										<li><a class="dropdown-item" id = "mypage" href="/myPage.member"
											style="color: #EDEDED;">마이페이지</a></li>
										</c:when>
										</c:choose>
									<li><a id="logout" class="dropdown-item"
										href="/logout.member" style="color: #EDEDED;">로그아웃</a></li>
								</ul></li>

						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="/member/login.jsp" id=login>로그인</a></li>
						</c:otherwise>
					</c:choose>
				</ol>
			</div>
		</div>
	</nav>
	<div id="con1">
		<div class="container">
			<div id="main1">MY퍼즐</div>
			<div id="main2" align=center>
				<div class="ott">
					<div class="left">
						<img src="/img/Group23.png">
					</div>
					<div class="center">
						<div class="top">왓챠 퍼즐</div>
						<div class="bottom">으로 이용중</div>
					</div>
				</div>
			</div>
			<div id="main3" align=center>
				<div align=left
					style="width: 70%; color: white; font-size: 20px; margin-bottom: 1%;">
					<img src="/img/11.png"
						style="width: 45px; height: 45px; margin-right: 10px;">정산 안내
				</div>
				<div class="info">
					<div class="row1" align=left>
						<img src="/img/leaderdetail1.png"> <img
							src="/img/leaderdetail2.png">
					</div>
					<div class="row2">
						<div class="infoname">정산 날짜</div>
						<div class="infodetail">
							매 달
							<%=sf.format(nowTime)%>
						</div>
					</div>
					<div class="row3">
						<div class="infoname">정산 금액</div>
						<div class="infodetail">월 9,185원</div>
					</div>
				</div>
			</div>
			<!-- 퍼즐원일때 -->
			<div id="main4" align=center>
				<div align=left
					style="width: 70%; color: white; font-size: 20px; margin-bottom: 1%;">
					<img src="/img/11.png"
						style="width: 45px; height: 45px; margin-right: 10px;">결제 안내
				</div>
				<div class="info2">
					<div class="row4">
						<div class="infoname">결제 날짜</div>
						<div class="infodetail">
							매 달
							<%=sf.format(nowTime)%>
						</div>
					</div>
					<div class="row5">
						<div class="infoname">결제 금액</div>
						<div class="infodetail">월 4,215원</div>
					</div>
				</div>
			</div>
			<!-- 퍼즐원일때 끝-->
			<div id="main4" align=center>
				<div align=left
					style="width: 70%; color: white; font-size: 20px; margin-bottom: 1%;">
					<img src="/img/22.png"
						style="width: 45px; height: 45px; margin-right: 10px;">계정 정보
				</div>
				<div class="info2">
					<div class="row4">
						<div class="infoname">ID</div>
						<div class="infodetail">
							OTT 아이디
						</div>
					</div>
					<div class="row5">
						<div class="infoname">PW</div>
						<div class="infodetail">OTT 비밀번호</div>
					</div>
					<div align=right style="color:#7A07EE; margin-top:10px;">
					<a href="https://watcha.com/">왓챠 바로가기
					<img style="width:16px; height:16px; margin-bottom:3px;" src="/img/arr.png"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 d-none d-md-block">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-1" id="footer2">이용약관</div>
					<div class="col-2" id="footer2">개인정보 처리방침</div>
					<div class="col-1" id="footer2">
						<a href="/list.qnaboard?cpage=1"
							style="text-decoration: none; color: white;">1:1 문의</a>
					</div>
					<div class="col-2" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 d-block d-md-none">
		<div id="con5" align=center>
			<div class="container">
				<div class="row">
					<div class="col-6" id="footer1" align=left>
						<img src="/img/group30.png">
					</div>
					<div class="col-6" id="footer3">©2022 Fozzle, Inc.</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>