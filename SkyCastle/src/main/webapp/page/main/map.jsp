<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 지도보기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/skc/css/plugins.css">
<link rel="stylesheet" href="/skc/css/common.css">
<link rel="stylesheet" href="/skc/css/main.css">
<script src="/skc/js/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/skc/css/map.css">
</head>
<body>

	<!-- Navigation Start  -->
	<nav class="navbar navbar-default navbar-sticky bootsnav">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navbar-menu">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="../main/index.jsp"><img
					src="/skc/img/logo.png" class="logo" alt="로고이미지"></a>
			</div>

			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
					data-out="fadeOutUp">
					<li><a href="../main/index.jsp">홈</a></li>
					<li><a href="../join/login.jsp">로그인</a></li>
					<li><a href="../main/map.jsp">지도보기</a></li>
					<li><a href="../main/event.jsp">이벤트</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티</a>
						<ul class="dropdown-menu animated fadeOutUp"
							style="display: none; opacity: 1;">
							<li class="active"><a href="../main/board.jsp">자유 게시판</a></li>
							<li><a href="../main/board.jsp">학부모 게시판</a></li>
							<li><a href="../main/board.jsp">학생 게시판</a></li>
							<li><a href="../main/board.jsp">학원 홍보 게시판</a></li>
						</ul></li>
					<li><a href="../main/cs.jsp">고객센터</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation End  -->

	<!-- Script JS Start 야옹 멍멍-->
	<script src="/skc/js/jquery.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootstrap.min.js"></script>
	<script src="/skc/js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="/skc/js/bootsnav.js"></script>
	<script src="/skc/js/main.js"></script>
	<!-- Script JS End -->


	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c52ab55869ff6f524aa083e5d461b999&libraries=services"></script>

	<div class="map_area">
		<div class="map_wrap">
			<div class="left">
				<div id="menu_wrap" class="bg_white">
					<div class="option">
						<div>
							<form>
								키워드 : <input type="text" value="" id="" size="15">
								<button type="submit">검색하기</button>
							</form>
						</div>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
		</div>
		<div id="map" class="right"></div>
	</div>
	
	
	

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
		        level: 3, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 지도 타입 변경 컨트롤을 생성한다
		var mapTypeControl = new kakao.maps.MapTypeControl();

		// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		// 지도 확대 레벨 변화 이벤트를 등록한다
		kakao.maps.event.addListener(map, 'zoom_changed', function () {
			console.log('지도의 현재 확대레벨은 ' + map.getLevel() +'레벨 입니다.');
		});

	</script>
</body>
</html>