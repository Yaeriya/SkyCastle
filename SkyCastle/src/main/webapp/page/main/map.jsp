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
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false" />

<div class="map_area">
	<div class="map_wrap">
		<div class="left">
			<ul>
				<li><span class="name fotm">
						<?=$item[it_name]?>
				</span></li>
				<li><span class="des fotl">
						<?=cut_str($item[it_description],100)?>
				</span></li>
				<li style="margin-top: 30px;"><span class="pro fotl">운영중인
						프로그램 : <?=it_extra1_echo($item[it_extra1])?>
				</span></li>
				<li><span class="tel fotl">전화번호: <?=$item[it_extra8]?></span></li>
				<li><span class="address fotl">
						<?=$item[address1]?> <?=$item[address2]?>
				</span></li>
			</ul>
		</div>
		<div id="map" class="right"></div>
	</div>
</div>	

	<script>
		function nfor_it_map_show() {

			$('html,body').animate({
				scrollTop : $("#tabmenu").offset().top
			}, 500);

			$(".tabmenu li").removeClass("active");
			$("#map_tit").addClass("active");

			$(".tab-cont").hide();
			$("#tab2").show();

			$("#map").html("");
			nfor_it_map();
		}
	</script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c52ab55869ff6f524aa083e5d461b999"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.59155, 126.95299), // 지도의 중심좌표
			level : 7, // 지도의 확대 레벨
			mapTypeId : kakao.maps.MapTypeId.ROADMAP
		// 지도종류
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
		kakao.maps.event.addListener(map, 'zoom_changed', function() {
			console.log('지도의 현재 확대레벨은 ' + map.getLevel() + '레벨 입니다.');
		});

		// 지도 영역 변화 이벤트를 등록한다
		kakao.maps.event.addListener(map, 'bounds_changed', function() {
			var mapBounds = map.getBounds(), message = '지도의 남서쪽, 북동쪽 영역좌표는 '
					+ mapBounds.toString() + '입니다.';

			console.log(message);
		});

		// 지도 시점 변화 완료 이벤트를 등록한다
		kakao.maps.event.addListener(map, 'idle', function() {
			var message = '지도의 중심좌표는 ' + map.getCenter().toString() + ' 이고,'
					+ '확대 레벨은 ' + map.getLevel() + ' 레벨 입니다.';
			console.log(message);
		});

		// 지도 클릭 이벤트를 등록한다 (좌클릭 : click, 우클릭 : rightclick, 더블클릭 : dblclick)
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			console.log('지도에서 클릭한 위치의 좌표는 ' + mouseEvent.latLng.toString()
					+ ' 입니다.');
		});

		// 지도 드래깅 이벤트를 등록한다 (드래그 시작 : dragstart, 드래그 종료 : dragend)
		kakao.maps.event.addListener(map, 'drag', function() {
			var message = '지도를 드래그 하고 있습니다. ' + '지도의 중심 좌표는 '
					+ map.getCenter().toString() + ' 입니다.';
			console.log(message);
		});
		// 마커 이미지의 주소
		var markerImageUrl = 'http://t1.daumcdn.net/localimg/localimages/07/2012/img/marker_p.png', markerImageSize = new kakao.maps.Size(
				40, 42), // 마커 이미지의 크기
		markerImageOptions = {
			offset : new kakao.maps.Point(20, 42)
		// 마커 좌표에 일치시킬 이미지 안의 좌표
		};

		// 마커 이미지를 생성한다
		var markerImage = new kakao.maps.MarkerImage(markerImageUrl,
				markerImageSize, markerImageOptions);

		// 지도에 마커를 생성하고 표시한다
		var marker = new kakao.maps.Marker({
			position : new kakao.maps.LatLng(37.58563, 126.94312), // 마커의 좌표
			image : markerImage, // 마커의 이미지
			map : map
		// 마커를 표시할 지도 객체
		});

		// 마커 위에 표시할 인포윈도우를 생성한다
		var infowindow = new kakao.maps.InfoWindow({
			content : '<div style="padding:5px;">인포윈도우 :D</div>' // 인포윈도우에 표시할 내용
		});

		// 인포윈도우를 지도에 표시한다
		infowindow.open(map, marker);

		// 마커에 mouseover 이벤트를 등록한다
		kakao.maps.event.addListener(marker, 'mouseover', function() {
			console.log('마커에 mouseover 이벤트가 발생했습니다!');
		});

		// 마커에 mouseout 이벤트 등록
		kakao.maps.event.addListener(marker, 'mouseout', function() {
			console.log('마커에 mouseout 이벤트가 발생했습니다!');
		});
	</script>
</body>
</html>