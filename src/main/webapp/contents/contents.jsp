<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>포즐피디아</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}

/* div { */
/*  	border: 1px solid crimson; */
/* } */

button {
	border:none;
}

#con1 {
	height: 888px;
	background-color: #121212;
	padding-top: 260px;
}

#con6 {
	height: 1354px;
	background-color: #121212;
	padding-top: 260px;
}

.bigbtn {
	flex-direction: row;
	padding: 16px 60px 17px;
	gap: 10px;
	width: 280px;
	height: 68px;
	top: 488px;
	background: #7A07EE;
	border-radius: 12px;
	font-weight: 700;
	font-size: 23px;
	line-height: 35px;
	text-align: center;
	color: #FFFFFF;
	flex-direction: row;
	margin-bottom: 64px;
}

#mainimg {
	width: 512.4px;
	height: 466px;
	top: 8px;
}

#con2 {
	height: 902px;
	background-color: #212121;
}

#NFrank,#WCrank,#TVrank,#DPrank {
	height: 52px;
	font-family: 'Noto Sans KR';
	font-style: normal;
	font-weight: 700;
	font-size: 36px;
	line-height: 52px;
	text-align: center;
	color: #FFFFFF;
	margin-top: 160px;
}

.btns{
margin-top: 7px;
width: 90px;
height: 46px;
background: #7A07EE;
border-radius: 12px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 16px;
line-height: 26px;
text-align: center;
color: #FFFFFF;
}

#main8{
margin-top: 20px;
}

#leaderguide, #memberguide {
width:100%;
}

#moreguide{
width: 181px;
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

#main9 {
margin-top: 40px;
}

#con3 {
	height: 1100px;
	background-color: #121212;
}

#main10 {
width: 430px;
height: 104px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 36px;
line-height: 52px;
text-align: center;
color: #FFFFFF;
margin:auto;
margin-top: 160px;
}

#main11 {
width: 350px;
height: 26px;

font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 500;
font-size: 18px;
line-height: 26px;
text-align: center;
color: #FFFFFF;
margin:auto;
margin-top: 12px;
}

.lookaround{
margin-top: 40px;
width: 194px;
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

#con4 {
	height: 568px;
	background-color: #212121;
}

#main12 {
margin-top: 160px;
width: 634px;
height: 140px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 48px;
line-height: 70px;
text-align: center;

color: #FFFFFF;
}

.startservice{
margin-top:40px;
width: 280px;
height: 68px;
background: #7A07EE;
border-radius: 12px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 24px;
line-height: 35px;
text-align: center;
color: #FFFFFF;
}

#con5 {
	height: 100px;
	background-color: #0c0c0c;
}

#footer1,#footer2,#footer3 {
	margin-top: 38.43px;
} 

#footer2{
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 14px;
line-height: 20px;
color: #FFFFFF;
}

#footer3{
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 14px;
line-height: 20px;
text-align: right;
color: #6F6C77;
}

#main13 {
margin-top: 160px;
width: 430px;
height: 140px;
font-family: 'Noto Sans KR';
font-style: normal;
font-weight: 700;
font-size: 32px;
line-height: 70px;
text-align: center;

color: #FFFFFF;
}

#main14 {
margin-top:70px;
}

.navbar-nav>li {
	text-align: center;
	margin-left: 1rem;
	margin-right: 1rem;
	width: 100px;
}

#login {
	background-color:#7A07EE;
}

.centered {
     margin-left:10rem;
}

nav {
	background-color: black;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
	
}

#mypage:hover{
	background-color : #7A07EE;
}
#logout:hover{
	background-color : #7A07EE;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="/index.jsp" id=logo><img src="/img/logo2.png"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ol class="navbar-nav centered">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link" href="/guide.jsp">가이드</a></li>
						<li class="nav-item"><a class="nav-link" href="#">MY퍼즐</a></li>
						<li class="nav-item"><a class="nav-link" href="#">포즐피디아</a></li>

					</ol>
					<ol class="nav-pills navbar-nav w-100 justify-content-end centered" id=po>
						<li class="nav-item"><a class="nav-link" aria-current="page" href="/list.board?cpage=1">고객센터</a></li>
						<c:choose>
						<c:when test="${loginID != null}">
                        <li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"
									style="color: #EDEDED;">
										${nickname}님 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink"
										style="background-color: #121212;">
										<c:choose>
										<c:when test="${kakao == null}">
										<li><a class="dropdown-item" id = "mypage" href="/myPage.member"
											style="color: #EDEDED;">마이페이지</a></li>
										</c:when>
										</c:choose>
										<li><a id="logout" class="dropdown-item" href="/logout.member"
											style="color: #EDEDED;">로그아웃</a></li>
									</ul></li>
                        </c:when>
						<c:otherwise>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="/member/login.jsp" id = login>로그인</a></li>
						</c:otherwise>
						</c:choose>
					</ol>
				</div>
			</div>
		</nav>

<div id="con3" align=center style="margin-top:72px; padding-top:50px;">
	<div class="row" align=center>
		<div class="col-12" align=center>
		<div>
			<input type="text" placeholder="영화명으로 검색해보세요" style="radius:5px;">
		</div>
			<div id="NFrank">넷플릭스 TOP 3~5</div>
			<div id="WCrank">왓챠 TOP 3~5</div>
			<div id="TVrank">티빙 TOP 3~5</div>
			<div id="DPrank">디즈니플러스 TOP 3~5</div>
		</div>
		</div>
	</div>
</div>
<div id="con4" align=center>
	<div class="container" align=center style="position: relative;">
	<div class="row" align=center>
			<div class="col-12" align=center>
			<div class="col-8" align=center> 

			<ul class="nav nav-tabs" style="margin-top:-42px; background-color:#121212; border-top-left-radius: 5px; border-top-right-radius: 5px;">
  				<li class="nav-item">
   				 <a class="nav-link show active" data-toggle="tab" aria-current="page" href="#a" style="color:white;">컨텐츠 전체</a>
  				</li>
  				<li class="nav-item">
   				 <a class="nav-link" data-toggle="tab" href="#b" style="color:white;">영화</a>
  				</li>
  				<li class="nav-item">
   				 <a class="nav-link" data-toggle="tab" href="#c" style="color:white;">TV쇼</a>
  				</li>
				</ul>
				  </div>
				  <div class="tab-content">
              <div class="tab-pane fade show in" id="a">
                <p>1번탭</p>
              </div>
              <div class="tab-pane fade" id="b">
                <p>2번탭</p>
              </div>
              <div class="tab-pane fade" id="c">
                <p>3번탭</p>
              </div>
           
			</div>
			<div style="color:white">포스터랑 네비게이션</div>
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
		<div class="col-1" id="footer2">
		이용약관	
		</div>
		<div class="col-2" id="footer2">
		개인정보 처리방침
		</div>
		<div class="col-1" id="footer2">
		<a href="/list.qnaboard?cpage=1" style="text-decoration:none; color:white;">1:1 문의</a>
		</div>
		<div class="col-2" id="footer3">
		©2022 Fozzle, Inc.
		</div>
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
		<div class="col-6" id="footer3">
		©2022 Fozzle, Inc.
		</div>
	</div>
	</div>
</div>
</div>
</body>
<script>
$(function(){
    $("#member").click(function(){
        if($("#memberguide").css("display") == "none"){
            $("#member").css("backgroundColor","#7A07EE");
            $("#leader").css("background-color","inherit");
            $("#memberguide").show();
            $("#leaderguide").hide();
        }
    });

    $("#leader").click(function(){
        if($("#leaderguide").css("display") == "none"){
            $("#leader").css("backgroundColor","#7A07EE");
            $("#member").css("background-color","inherit");
            $("#leaderguide").show();
            $("#memberguide").hide();
        }
    });
});

//메뉴가 선택되어 active가 되기 전 이벤트
$('a[data-toggle="tab"]').on('show.bs.tab', function (e) {  
	e.target // 현재 설정된 tab  
	e.relatedTarget // 이전에 설정된 탭
	});
// 메뉴가 선택되어 active가 된 후 이벤트
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {  
	e.target // 현재 설정된 tab  
	e.relatedTarget // 이전에 설정된 탭
	});
// 다른 메뉴가 선택되어 active가 remove 되기 전 이벤트
$('a[data-toggle="tab"]').on('hide.bs.tab', function (e) {  
	e.target 
// 현재 설정된 tab  
	e.relatedTarget // 이전에 설정된 탭
	});
// 다른 메뉴가 선택되어 active가 remove 된 후 이벤트
	$('a[data-toggle="tab"]').on('hidden.bs.tab', function (e) {  
	e.target // 현재 설정된 tab  
	e.relatedTarget  // 이전에 설정된 탭
	});
	
	$(function(){    $('ul.nav-tabs a').click(function (e) {
	e.preventDefault()      $(this).tab('show')    })});
</script>
</html>