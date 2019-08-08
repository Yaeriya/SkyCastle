<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>SKYCASTLE 프리미엄 학원입시정보</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/slide.css">

</head>
<body>

	<div class="slideshow-container">
		<jsp:include page="../side/header.jsp" flush="false" />
		<div class="mySlides fade-slide fade">
			<img class="slide-img" src="/skc/img/slide06.jpg" style="width: 100%">
		</div>

		<div class="mySlides fade-slide fade">
			<img class="slide-img" src="/skc/img/slide08.png" style="width: 100%">
		</div>

		<div class="mySlides fade-slide fade">
			<img class="slide-img" src="/skc/img/slide09.png" style="width: 100%">
		</div>
	</div>

	<div class="slide-dot">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

	<section class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<h2>We all lie, Tell you the truths</h2>
					<p>It'll be the way you want it, Is this really true?</p>
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Money, Honor, beauty, Everything you want"
							style="text-align: center;"> <span
							class="input-group-btn">
							<button type="button" class="btn btn-default">검색하기</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="about">
		<div class="container">
			<div class="row main-up-row">
				<div class="col-lg-3 col-md-12 col-sm-6 nowDate">
					<p class="aboutDesc1">
						과외, 입시, 뷰티<br> <b>모두 Sky Castle로 누리세요!</b>
					</p>
				</div>
				<!-- /.nowDate -->


				<div class="col-lg-3 col-md-4 col-sm-6 statCnt">
					<span class="ico"><img
						src="http://tlx.co.kr/images/ico_dumbbell_blue@2x.png" alt=""></span>
					<span><span class="today">8월 8일</span>, 오늘까지 누적 쿠폰횟수</span> <strong><b
						class="counter_info">11,587,900</b></strong>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 statCnt">
					<span class="ico"><img
						src="http://tlx.co.kr/images/ico_people_blue@2x.png" alt=""></span>
					<span>파트너 회원수</span> <strong><b class="counter_info">509,969</b></strong>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 statCnt">
					<span class="ico"><img
						src="http://tlx.co.kr/images/ico_location_blue@2x.png" alt=""></span>
					<span>서울시 제휴시설</span> <strong><b class="counter_info">1,984</b></strong>
				</div>
				<script>
					var today = new Date();
					var dd = today.getDate();
					var mm = today.getMonth() + 1;
					today = mm + '월 ' + dd + '일';
					$('.today').text(today);
				</script>
			</div>

			<div class="section-border"></div>

			<div class="row main-down-row">
				<div class="col-md-3 col-sm-12">
					<p class="aboutDesc2">
						<span>간편한 검색과</span><br> <span>제휴학원의 쿠폰발급으로</span><br> <span>3,984개의
							제휴학원을</span><br> <span><strong>찾아보세요!</strong></span>
					</p>

					<br />

					<p class="aboutDesc2">
						<span>간편한 검색과</span><br> <span>제휴학원의 쿠폰발급으로</span><br> <span>3,984개의
							제휴학원을</span><br> <span><strong>찾아보세요!</strong></span>
					</p>
				</div>

				<div class="col-md-8 col-sm-12 items">
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/weight@2x.png"></i><small>헬스</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/gx_alt@2x.png"></i><small>G.X</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/pt@2x.png"></i><small>P.T</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/golf@2x.png"></i><small>골프</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/yoga@2x.png"></i><small>요가</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/pilates@2x.png"></i><small>필라테스</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/swim@2x.png"></i><small>수영</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/squash@2x.png"></i><small>스쿼시</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/airrobics@2x.png"></i><small>에어로빅</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/screengolf@2x.png"></i><small>스크린골프</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/sauna@2x.png"></i><small>사우나</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/drysauna@2x.png"></i><small>뷰티</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/spinning@2x.png"></i><small>스피닝</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/crossfit@2x.png"></i><small>크로스핏</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/boxing@2x.png"></i><small>복싱</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/massage@2x.png"></i><small>마사지</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/dance@2x.png"></i><small>댄스</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/pingpong@2x.png"></i><small>탁구</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/baseball@2x.png"></i><small>야구</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/kendo@2x.png"></i><small>검도</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/climbing@2x.png"></i><small>클라이밍</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/kickboxing@2x.png"></i><small>킥복싱</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/martialarts@2x.png"></i><small>격투기</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/circular@2x.png"></i><small>순환운동</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/flyingyoga@2x.png"></i><small>플라잉요가</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/poledance@2x.png"></i><small>폴댄스</small></span>
					<span><i><img
							src="http://tlx.co.kr/images/item_icons/nail_polish@2x.png"></i><small>네일</small></span>
				</div>
				<!-- /.items -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<section class="recommend-membership-Intro">
		<div class="container">
			<div class="row recommend-membership">
				<div class="sectionTitle">
					<h2>
						지금 멤버십 회원이 되세요! <small>한번에 이해하는 Sky Castle 이용법</small>
					</h2>
				</div>
			</div>
		</div>
	</section>
	<section class="illustWrap">
		<div class="container">
			<div class="row illustWrapInner">
				<div class="col-md-6 col-sm-6 illust wow slideInUp"
					style="visibility: visible; animation-name: slideInUp;">
					<h3>언제 어디서나</h3>
					<p>
						<span>회사 근처. 집 근처.</span> <span><strong>밤에도 낮에도.
								장소, 시간 걱정하지 말고 시작하세요.</strong></span>
					</p>
					<img src="http://tlx.co.kr/images/illust_01.png" alt="">
				</div>
				<div class="col-md-6 col-sm-6 illust wow slideInUp"
					style="visibility: visible; animation-name: slideInUp;">
					<h3>어떤 종목이든</h3>
					<p>
						<span>뷰티, 뮤직, 입시, 고시, 과외 등</span> <span><strong>다양한
								종류의 학원을</strong> 자유롭게 이용하세요.</span>
					</p>
					<img src="http://tlx.co.kr/images/illust_02.png" alt="">
				</div>
				<div class="col-md-6 col-sm-6 illust wow slideInUp"
					style="visibility: visible; animation-name: slideInUp;">
					<h3>효과적으로</h3>
					<p>
						<span>수강권, 할인권, 상담선물, 쿠폰 발급으로</span> <span><strong>당신이 필요로 하는
								</strong> 학원을 찾으세요.</span>
					</p>
					<img src="http://tlx.co.kr/images/illust_03.png" alt="">
				</div>
				<div class="col-md-6 col-sm-6 illust wow slideInUp"
					style="visibility: visible; animation-name: slideInUp;">
					<h3>안정적인 학원관리 운영 노하우</h3>
					<p>
						<span>2019년부터 <strong>학원, 유명강사 등 </strong></span> <span> 수많은 파트너들이
							이용하고 있습니다.</span>
					</p>
					<img src="http://tlx.co.kr/images/illust_04.png" alt="">
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<jsp:include page="../side/footer.jsp" flush="false" />
	<script src="/skc/js/slide.js"></script>
</body>
</html>
