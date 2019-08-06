<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 상세페이지</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/skc/js/jquery.min.js" type="text/javascript"></script>
<script src="/skc/js/vue.min.js" type="text/javascript"></script>
<script src="/skc/js/lightgallery-all.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/skc/css/detail.css">
</head>
<body>

	<jsp:include page="../side/header.jsp" flush="false" />
	
	<div class="wrap">

		<div class="centerMasterHead">
<!-- D_IMG_00 --><div class="centerMasterHead_bg_blur"  
				style="background: #888 url(https://s3-ap-northeast-2.amazonaws.com/tlx.production/3ZfQxwVL76ELrUkeosxJLXCkEA9TsdYmXpeXIObBe0su9mHOCX7tZI3auvdYdcFk_1980) no-repeat fixed center center; background-size: cover;">
			</div>

			<div class="container">
				<div class="row">
					<div class="cHeading">
						<i class="coverOverlay"></i>

						<div class="info">
							<div>
								<h3>
									<small class="centerNameLabel">SKY CASTLE 제휴시설</small> <strong>
<!-- MB_NICK -->                    <span class="cnText"> ${MB_NICK} <span class="branch">서초교대점</span></span>
									</strong>
								</h3>

<!-- DTL_ADDR -->				<address> ${DTL_ADDR} </address>
<!-- DTL_PHONE -->				${DTL_PHONE}
								


								<div class="btn_centerFavorite">
									<button class="btn btn_favorite off"
										onclick="location.href='/member/login?next=/center/detail/fc02166'">
										<i class="fa fa-heart-o"></i><em class="aq">413</em>
									</button>
									
									
<!-- DTL_SUMM -->					<br>${DTL_SUMM}

									<span class="favoriteAlertMsg"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="centerDetailWrap">
						<div class="centerDetail">
							<div class="cBody">
								<div class="row">
									<div class=" col-lg-7 col-md-7">
										<div class="row centerItems">
											<h6 class="col-sm-2">이용 상품</h6>
											<div class="centerItemsInnerWrap col-sm-10">

												<div class="usePASSListWrap">
													<span class="events type7"> <span class="itemWrap">
<!-- MB_NICK -->									<span class="item"> <i class="circle"></i> ${MB_NICK}
														</span>
													</span>
													</span>
												</div>
												<small class="centerPassAnc onlyB2C">- 기업/단체 회원의 경우,
													계약조건에 따라 이용하지 못할 수도 있습니다.</small> <small class="centerPassAnc">-
													이용 상품별로 PASS가 차감됩니다.</small> <small class="centerPassAnc">-
													이용 패스가 변경되는 경우에는 사전에 알려드립니다.</small>
											</div>
										</div>

										<div class="csVoiceWrap" id="reviews">
											<div class="row customerSatisfactionIndex">
												<h6 class="col-sm-2">
<!-- DTL_SCORE -->								회원 리뷰 <a href="#" class="btnOpenTipBox"><i
														class="fa fa-question-circle"></i></a>
												</h6>
												<div class="col-sm-10">

													<div class="csChartWrap csChartWrap2">
														<div class="starScoreWrap">
															<div class="starScore">
																<span class="score"> <i class="fa fa-star-o"></i>
																	<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																	<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																	<span class="sstPoint" style="width: 98%;"
																	data-point="9.8"> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i> <i class="fa fa-star"></i>
																</span>
																</span>
															</div>
															<strong class="pointScore aq"> 9.8 </strong>
															<p class="hint">
																이용 회원 <b>6</b>명이 평가
															</p>
															<div class="tipBox altBox" style="display: none;">
																<h5>실제 이용 회원의 생생한 리뷰를 확인하세요!</h5>
																<ul>
																	<li>리뷰는 제휴시설 입장 후, 프로필/이용기록 페이지에서 작성하실 수 있어요.</li>
																</ul>
																<ul class="alt">
																	<li>작성하신 리뷰는 등록 후 수정 및 삭제 하실 수 없습니다.</li>
																	<li>허위 리뷰나 명예훼손, 욕설, 비방글 등 제3자의 권리를 침해하는 게시물은 서비스
																		이용약관이나 관련 법률에 따라 제재를 받을 수 있습니다.</li>
																	<li>TLX PASS는 위와 같은 게시물 작성자에게 경고, 주의 등의 조치를 취할 수
																		있고, 게시물을 삭제/숨김 처리할 수 있습니다.</li>
																	<li>게시에 따른 책임은 작성자에게 있으며, TLX PASS는 이에 대한 법적 책임을
																		지지 않습니다.</li>
																</ul>
																<a href="#" class="btnClose"><i class="fa fa-times"></i></a>
															</div>
														</div>

														<div class="vertBarChartWrap">
															<div class="vertBar">
																<b>9.8</b>
																<div class="vbBG">
																	<span class="vertSstPoint" style="height: 98%;"
																		data-point="9.8"></span>
																</div>
																<h6>
																	<span>시설</span> <span>접근성</span>
																</h6>
															</div>
															<div class="vertBar">
																<b>10</b>
																<div class="vbBG">
																	<span class="vertSstPoint" style="height: 100%;"
																		data-point="10"></span>
																</div>
																<h6>
																	<span>시설</span> <span>상태</span>
																</h6>
															</div>
															<div class="vertBar">
																<b>9.5</b>
																<div class="vbBG">
																	<span class="vertSstPoint" style="height: 95%;"
																		data-point="9.5"></span>
																</div>
																<h6>
																	<span>직원</span> <span>친절도</span>
																</h6>
															</div>
															<div class="vertBar">
																<b>9.8</b>
																<div class="vbBG">
																	<span class="vertSstPoint" style="height: 98%;"
																		data-point="9.8"></span>
																</div>
																<h6>
																	<span>서비스</span> <span>전문성</span>
																</h6>
															</div>
															<div class="vertBar">
																<b>9.8</b>
																<div class="vbBG">
																	<span class="vertSstPoint" style="height: 98%;"
																		data-point="9.8"></span>
																</div>
																<h6>
																	<span>서비스</span> <span>신뢰성</span>
																</h6>
															</div>
														</div>
													</div>

													<div class="realUserReview">
														<ul class="reviewList">
															<li><a class="openReviewModal"
																href="/center/review/fc02166/20367">

																	<div class="reviewInner">

																		<div class="userInfo">
																			<strong class="id">lovelyh****</strong> <small
																				class="userDetailInfos">여성 / 2019.02 이용</small>
																		</div>

																		<div class="esimateInfo">
																			<span class="starScoreTiny"> <span
																				class="starScore"> <span class="score">
																						<i class="fa fa-star-o"></i> <i
																						class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																						<i class="fa fa-star-o"></i> <i
																						class="fa fa-star-o"></i> <span class="sstPoint"
																						style="width: 96%;" data-point="9.6"> <i
																							class="fa fa-star"></i> <i class="fa fa-star"></i>
																							<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																							<i class="fa fa-star"></i>
																					</span>
																				</span>
																			</span>
																			</span> <span class="scoreCnt">9.6</span> <strong
																				class="usedItem">냥충이</strong>
																		</div>

																		<p class="reviewText">시설이 깨끗하고 편안합니다. 친절하고 체계적으로
																			운동할 수 있도록 도와줍니다.그룹이지만한명씩 세세하고 자세를 잡아 주었으면 좋겠습니다.앞으로
																			꾸준히 다니려고 합니다.</p>

																	</div>
															</a></li>
															<li><a class="openReviewModal"
																href="/center/review/fc02166/17301">
																	<div class="reviewInner">

																		<div class="userInfo">
																			<strong class="id">fan****</strong> <small
																				class="userDetailInfos">여성 / 2018.12 이용</small>
																		</div>

																		<div class="esimateInfo">
																			<span class="starScoreTiny"> <span
																				class="starScore"> <span class="score">
																						<i class="fa fa-star-o"></i> <i
																						class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																						<i class="fa fa-star-o"></i> <i
																						class="fa fa-star-o"></i> <span class="sstPoint"
																						style="width: 92%;" data-point="9.2"> <i
																							class="fa fa-star"></i> <i class="fa fa-star"></i>
																							<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																							<i class="fa fa-star"></i>
																					</span>
																				</span>
																			</span>
																			</span> <span class="scoreCnt">9.2</span> <strong
																				class="usedItem">기구필라테스</strong>
																		</div>

																		<p class="reviewText">교대역 5번이나 6번출구를 나와 언덕길을 좀 걸어
																			올라가야해요. 선생님은 친절하고 상냥하고 무엇보다 근육을 제대로 쓰면서 운동하는 지 세심하게
																			살펴주십니다. 특히 힢업운동은 필라테스 센타 중 여기가 최고 인 듯‥ ^^</p>

																	</div>
															</a></li>
														</ul>
														<a href="/center/review/fc02166"
															class="openReviewModal btnMore">리뷰 모두 보기</a>
													</div>
													
													<!-- Modal -->
													<div class="modal reviewModal" id="reviewModal"
														tabindex="-1" role="dialog">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																	<iframe src="" style="overflow: hidden;" width="99.6%"
																		height="540px;" frameborder="0"></iframe>
																</div>
															</div>
														</div>
													</div>

													<div class="modal programModal" id="programModal"
														tabindex="-1" role="dialog">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-body">
																	<button type="button" class="close"
																		data-dismiss="modal" aria-label="Close">
																		<span aria-hidden="true">×</span>
																	</button>
																	<iframe src="" style="overflow: hidden;" width="99.6%"
																		height="540px;" frameborder="0"></iframe>
																</div>
															</div>
														</div>
													</div>

													<script>
														// 별점 width
														$('.sstPoint')
																.each(
																		function() {
																			var star_width = $(
																					this)
																					.attr(
																							'data-point');
																			var star_width10 = (star_width * 10)
																					+ '%';
																			$(
																					this)
																					.css(
																							'width',
																							star_width10);
																		});

														// vertical_graph height
														$('.vertSstPoint')
																.each(
																		function() {
																			var vertSst_height = $(
																					this)
																					.attr(
																							'data-point');
																			var vertSst_height10 = (vertSst_height * 10)
																					+ '%';
																			$(
																					this)
																					.css(
																							'height',
																							vertSst_height10);
																		});

														/* 모달 처리 */
														$('.openReviewModal')
																.click(
																		function(
																				e) {
																			var review_address = $(
																					this)
																					.attr(
																							'href');
																			var wd_height = $(
																					window)
																					.height() - 120;
																			$(
																					'#spinner')
																					.fadeIn(
																							'fast');
																			$(
																					'#reviewModal')
																					.find(
																							'iframe')
																					.attr(
																							'src',
																							review_address)
																					.attr(
																							'height',
																							wd_height
																									+ 'px');

																			$(
																					'#reviewModal iframe')
																					.load(
																							function() {
																								$(
																										'#reviewModal')
																										.modal(
																												{
																													show : true
																												});
																								$(
																										'#spinner')
																										.hide();
																							});
																			e
																					.preventDefault();
																		})
														$('.openProgramModal')
																.click(
																		function(
																				e) {
																			var program_address = $(
																					this)
																					.attr(
																							'href');
																			var wd_height = $(
																					window)
																					.height() - 120;
																			$(
																					'#spinner')
																					.fadeIn(
																							'fast');
																			$(
																					'#programModal')
																					.find(
																							'iframe')
																					.attr(
																							'src',
																							program_address)
																					.attr(
																							'height',
																							wd_height
																									+ 'px');

																			$(
																					'#programModal iframe')
																					.load(
																							function() {
																								$(
																										'#programModal')
																										.modal(
																												{
																													show : true
																												});
																								$(
																										'#spinner')
																										.hide();
																							});
																			e
																					.preventDefault();
																		})

														$(
																'.btnOpenTipBox, .tipBox .btnClose')
																.click(
																		function(
																				e) { // 설명 레이어 열고 닫기
																			e
																					.preventDefault();
																			$(
																					'.tipBox')
																					.fadeToggle(
																							'fast');
																		});
													</script>

												</div>
											</div>
										</div>

										<div class="row centerRule">
											<h6 class="col-sm-2" style="padding-right: 0;">이용규정 /
												준비물</h6>
											<p class="col-sm-10">
												토요일 80분수업 현재 이용불가입니다.<br>기구필라테스 그룹 수업입니다. 인원에 제한이 있으니
												센터 문의 후 방문하시기 바랍니다.<br>수업 예약 취소는 최소 12시간 전까지만 가능하오니 참고
												하시기 바랍니다.<br>
											</p>
										</div>

										<div class="row centerAdditionalServices">
											<h6 class="col-sm-2">부가 서비스</h6>
											<ul class="cdList col-sm-10">
												<li>필라테스 운동복 및 기능성 양말 판매</li>
												<li>음료 판매</li>
											</ul>
										</div>

										<div class="row">
											<h6 class="col-sm-2">주소</h6>
											<div class="col-sm-10">
												<p>서울 서초구 서초대로51길 28 (서초동, 진성빌딩) 진성빌딩 4층</p>
											</div>
										</div>
									</div>

									<div class="col-lg-4 col-lg-offset-1 col-md-5">
   				                    	<h6>제휴시설 대표번호</h6>
										<div class="blogReviews">
											<ul>
<!-- DTL_PHONE -->	   		                <li><strong>${DTL_PHONE}</strong></li>
											</ul>
										</div>

										<h6>제휴시설 홈페이지</h6>
										<div class="blogReviews">
											<ul>
<!-- DTL_URL -->								<li><a href="${DTL_URL}"
													target="_blank"> <i class="fa fa-file-text-o"></i> <strong>고양이
															뮤직 스쿨 서초교대점 블로그</strong>
												</a></li>
											</ul>
										</div>
<!-- D_IMG_01 -> 12까지 -->				<h6>제휴시설 미리보기</h6>
										<div class="centerGallery">
											<div class="row" id="lightgallery">
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_1">
													<a id="img_a_1"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/nISb8vb3BSlCMa7gdJQSbU0WSyqowbKuTaNTmBgM8EMSYPhcyhTi0qq40ef6wkZ7"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/nISb8vb3BSlCMa7gdJQSbU0WSyqowbKuTaNTmBgM8EMSYPhcyhTi0qq40ef6wkZ7_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_2">
													<a id="img_a_2"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/s1NAtnEZ2UadZv93BAaSDeQNLr2u47ZdabsItScq615as3vLi7zmbHmgLDWMMxe8"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/s1NAtnEZ2UadZv93BAaSDeQNLr2u47ZdabsItScq615as3vLi7zmbHmgLDWMMxe8_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_3">
													<a id="img_a_3"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/3aop1JJG47Cv2uscn4RBIzLBxPzBaFkesRFgx2YAFjlF2sTqkFasoWKDvRJrxeBV"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/3aop1JJG47Cv2uscn4RBIzLBxPzBaFkesRFgx2YAFjlF2sTqkFasoWKDvRJrxeBV_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_4">
													<a id="img_a_4"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/kVRQZciEINnmmS8yhOOx0pEI7DeQzehfwVPb1OrIOxpOwqKHUcMvUFaqDyZByruG"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/kVRQZciEINnmmS8yhOOx0pEI7DeQzehfwVPb1OrIOxpOwqKHUcMvUFaqDyZByruG_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_5">
													<a id="img_a_5"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/C8AMwW8NuFZcIIAyqkX9RJNEJuLqAITBB9Ykl9CE3eIFlvyMqNDAFxEPbKFblMyt"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/C8AMwW8NuFZcIIAyqkX9RJNEJuLqAITBB9Ykl9CE3eIFlvyMqNDAFxEPbKFblMyt_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_6">
													<a id="img_a_6"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/1TQ5Uyqg8O2WiyuU3veNWAbi4O0PAubTFNgnCgzqMOwh2KaBLmQ9VApqA8ssJ9Il"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/1TQ5Uyqg8O2WiyuU3veNWAbi4O0PAubTFNgnCgzqMOwh2KaBLmQ9VApqA8ssJ9Il_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_7">
													<a id="img_a_7"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/cmGoKxZJXVd9dg1N1dcvhzuUhm9qaxplZpaDFbSLumZPcG28zXiBAOt03GFyn7JZ"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/cmGoKxZJXVd9dg1N1dcvhzuUhm9qaxplZpaDFbSLumZPcG28zXiBAOt03GFyn7JZ_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
												<div class="col-xs-4 col-sm-3 col-md-4" id="img_8">
													<a id="img_a_8"
														href="https://s3-ap-northeast-2.amazonaws.com/tlx.production/3ZfQxwVL76ELrUkeosxJLXCkEA9TsdYmXpeXIObBe0su9mHOCX7tZI3auvdYdcFk"
														class="responsibleImgBox" data-sub-html="제이핏필라테스 [서초교대점]"
														onclick="ga('send', 'event','center detail','show photo','fc02166 제이핏필라테스 [서초교대점]');">
														<img
														src="https://s3-ap-northeast-2.amazonaws.com/tlx.production/3ZfQxwVL76ELrUkeosxJLXCkEA9TsdYmXpeXIObBe0su9mHOCX7tZI3auvdYdcFk_300"
														alt=""> <span class="overlay"><i
															class="fa fa-search-plus"></i></span>
													</a>
												</div>
											</div>
										</div>

										<h6>위치</h6>
										<div id="map"
											style="width: 500px; height: 280px; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"
											class="root_daum_roughmap root_daum_roughmap_landing">
											<div
												style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
												<div style="position: absolute;">
													<div style="position: absolute; z-index: 0;"></div>
													<div
														style="position: absolute; z-index: 1; left: 0px; top: 0px;">
														<img
															src="https://map2.daumcdn.net/map_2d/1906plw/L3/1968/902.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -148px; top: 185px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map3.daumcdn.net/map_2d/1906plw/L3/1968/903.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 108px; top: 185px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map0.daumcdn.net/map_2d/1906plw/L3/1968/904.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 364px; top: 185px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map2.daumcdn.net/map_2d/1906plw/L3/1969/902.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -148px; top: -71px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map3.daumcdn.net/map_2d/1906plw/L3/1969/903.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 108px; top: -71px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map0.daumcdn.net/map_2d/1906plw/L3/1969/904.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 364px; top: -71px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map2.daumcdn.net/map_2d/1906plw/L3/1970/902.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -148px; top: -327px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map3.daumcdn.net/map_2d/1906plw/L3/1970/903.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 108px; top: -327px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
															src="https://map0.daumcdn.net/map_2d/1906plw/L3/1970/904.png"
															alt="" draggable="false"
															style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 364px; top: -327px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
													</div>
													<div style="position: absolute; z-index: 1;"></div>
													<div
														style="width: 360px; height: 280px; position: absolute; z-index: 1;"></div>
													<div style="position: absolute; z-index: 1;">
														<svg version="1.1"
															style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 1800px; height: 1400px; left: -720px; top: -560px;"
															viewBox="0 0 1800 1400">
															<defs></defs></svg>
													</div>
													<div
														style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
														<div
															style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 180px; top: 140px;">
															<img draggable="false"
																src="https://t1.daumcdn.net/mapjsapi/images/marker.png"
																alt="" title=""
																style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img
																src="https://i1.daumcdn.net/dmaps/apis/transparent.gif"
																alt="" draggable="false"
																usemap="#daum.maps.Marker.Area:1"
																style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;">
															<map id="daum.maps.Marker.Area:1"
																name="daum.maps.Marker.Area:1">
																<area href="javascript:void(0)" alt="" shape="poly"
																	coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27"
																	title=""
																	style="-webkit-tap-highlight-color: transparent;">
															</map>
														</div>
														<div
															style="cursor: default; position: absolute; background: rgb(255, 255, 255); border: 1px solid rgb(118, 129, 168); z-index: 0; display: block; width: 177px; height: 32px; left: 92px; top: 60px;">
															<div
																style="position: absolute; background: url(&quot;https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/triangle.png&quot;) no-repeat; width: 11px; height: 9px; left: 83px; top: 32px;"></div>
															<div class=""
																style="position: absolute; left: 0px; top: 0px;">
																<div style="padding: 5px;">제이핏필라테스 [서초교대점]</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div
												style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);">
												<div
													style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;">
													<div
														style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
													<div
														style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div>
												</div>
												<div style="margin: 0px 4px; float: left;">
													<a target="_blank" href="http://map.kakao.com/"
														title="Kakao 지도로 보시려면 클릭하세요."
														style="float: left; width: 32px; height: 10px;"><img
														src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png"
														alt="Kakao 지도로 이동"
														style="float: left; width: 32px; height: 10px; border: none;"></a>
													<div
														style="font: 11px/11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div>
												</div>
											</div>
											<div
												style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;">
												<div
													style="width: 32px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px; position: absolute; left: 3px; top: 71px;">
													<a draggable="false"
														style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) -40px 0px/116px 264px no-repeat rgb(255, 255, 255); border-bottom: 1px solid rgb(226, 226, 226); border-radius: 3px 3px 0px 0px;"></a>
													<div
														style="float: left; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_zoom_control.png&quot;) repeat; padding: 7px 0px; transition: height 0s ease 0s, margin 0.1s ease 0s;">
														<div
															style="cursor: pointer; position: relative; background-size: 116px 264px; transition: height 0.1s ease 0s; margin: 2px 0px; display: block; width: 32px; height: 104px;">
															<div
																style="position: absolute; width: 4px; height: 100%; background-color: rgb(51, 150, 255); left: 50%; margin: 0px 0px 0px -2px;">
																<div
																	style="width: 4px; height: 2px; margin-bottom: -2px; bottom: 0px; position: absolute; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) -50px -127px/116px 264px;"></div>
																<div
																	style="width: 4px; height: 2px; margin-top: -2px; top: 0px; position: absolute; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) -40px -100px/116px 264px;"></div>
															</div>
															<div
																style="position: absolute; background-color: rgb(204, 204, 204); transition: height 0.1s ease 0s; left: 50%; margin: 0px 0px 0px -2px; width: 4px; height: 16px;"></div>
															<div
																style="cursor: row-resize; position: absolute; width: 20px; height: 10px; margin: -4px 0px 0px -10px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) -40px -80px/116px 264px; left: 50%; transition: top 0.1s ease 0s; top: 16px;"></div>
														</div>
													</div>
													<a draggable="false"
														style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) -40px -32px/116px 264px no-repeat rgb(255, 255, 255); border-top: 1px solid rgb(226, 226, 226); border-radius: 0px 0px 3px 3px; margin: 0px;"></a>
													<div
														style="display: none; position: absolute; margin: 41px 0px 0px -30px; background-size: 116px 264px; width: 30px; height: 104px;">
														<div
															style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) 0px -80px/116px 264px; left: 0px; top: 8px;"></div>
														<div
															style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) 0px -100px/116px 264px; left: 0px; top: 32px;"></div>
														<div
															style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) 0px -120px/116px 264px; left: 0px; top: 64px;"></div>
														<div
															style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) 0px -140px/116px 264px; left: 0px; top: 80px;"></div>
														<div
															style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;https://t1.daumcdn.net/mapjsapi/images/control.png&amp;quot;) 0px -160px/116px 264px; left: 0px; top: 96px;"></div>
													</div>
												</div>
											</div>
										</div>
										<!-- Modal -->
										<div class="modal reportInfo fade" id="reportInfo"
											tabindex="-1" role="dialog">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-body">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">×</span>
														</button>
														<div class="loaderRi"></div>
														<iframe src="" style="overflow: hidden; zoom: 0.60"
															width="99.6%" height="810px;" frameborder="0"></iframe>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="centerSchduleTable"
			class="modal fade centerScheduleTableModal" tabindex="-1"
			role="dialog">
			<div class="modal-dialog modal-lg modal-slg" role="document">
				<div id="vue_center_month_cal" class="modal-content">
					<div class="modal-header">
						<button type="button" data-dismiss="modal" aria-label="Close"
							class="close">
							<span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title">
							<i class="fa fa-calendar-o"></i> 예약 가능한 수업 시간을 확인하세요.
						</h4>
						<p class="sub">
							제휴시설에 연락하셔서 원하는 시간에 예약을 완료하면 즉시 패스가 차감됩니다. <strong> 8월
								1일 (내일부터 3일후)</strong>까지 예약하실 수 있습니다.
						</p>
					</div>

				</div>
			</div>
		</div>

		<script>
			function gallery_res(res) {
				document.getElementById("lightgallery").innerHTML = res;

				$('#lightgallery').lightGallery({
					thumbnail : true,
					toogleThumb : false,
					selector : '.responsibleImgBox',
					fullScreen : false,
					zoom : true,
					actualSize : true,
					download : false,
					hash : false
				});

				// 사진보기를 누르면 첫번째 사진부터 갤러리 열기
				$('#launchGallery').click(function() {
					$('#lightgallery div:first-child a').trigger('click');
				})

				$('#lightgallery').lightGallery().on(
						'onBeforePrevSlide.lg',
						function(event, index, fromTouch) {
							ga('send', 'event', 'center detail', 'prev photo',
									'fc02166 제이핏필라테스 [서초교대점]');
						});
				$('#lightgallery').lightGallery().on(
						'onBeforeNextSlide.lg',
						function(event, index, fromTouch) {
							ga('send', 'event', 'center detail', 'next photo',
									'fc02166 제이핏필라테스 [서초교대점]');
						});
			}

			$(function() {
				httpcall("/center/gallery/fc02166", gallery_res);

				var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
				var options = { //지도를 생성할 때 필요한 기본 옵션
					center : new daum.maps.LatLng(37.496448088904,
							127.01403149557), //지도의 중심좌표.
					level : 3
				//지도의 레벨(확대, 축소 정도)
				};

				map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
				map.addControl(new daum.maps.ZoomControl(),
						daum.maps.ControlPosition.BOTTOMLEFT);

				// 마커가 표시될 위치입니다
				var markerPosition = new daum.maps.LatLng(37.496448088904,
						127.01403149557);

				// 마커를 생성합니다
				var marker = new daum.maps.Marker({
					position : markerPosition
				});

				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);

				var iwContent = "제이핏필라테스 [서초교대점]";
				iwContent = '<div style="padding:5px;">제이핏필라테스 [서초교대점]</div>';

				var iwPosition = new daum.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

				// 인포윈도우를 생성합니다
				var infowindow = new daum.maps.InfoWindow({
					position : iwPosition,
					content : iwContent
				});

				// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map, marker);

				$('#cTimeTable').lightGallery({
					fullScreen : false,
					selector : "a",
					zoom : true,
					actualSize : true,
					download : false,
					hash : false
				});

			});

			function checkImgBox() {
				$('.responsibleImgBox').click(function(e) {
					e.preventDefault();
					e.stopPropagation();
					e.stopImmediatePropagation();
					alert('stop');
				});
			}
		</script>

	</div>
	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>