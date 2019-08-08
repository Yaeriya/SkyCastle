<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 이벤트</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<jsp:include page="../side/header.jsp" flush="false" />

	<section class="inner-banner"
		style="backend: #242c36 url(https://via.placeholder.com/1920x600) no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>COUPON PAGE</h2>
				<p>
					Get a Free Coupon <span>for member</span>
				</p>
			</div>
		</div>
	</section>

	<section class="jobs">
		<div class="container">
			<div class="row heading">
				<h2></h2>
				<p>학생 회원 그리고 부모님 회원을 위한 쿠폰 발급 페이지입니다!</p>
			</div>
			<div class="companies">
				<div class="company-list">
					<div class="row">
						<div class="col-md-9 col-sm-9">
							<div class="company-logo"></div>
						</div>
						<div class="col-md-10 col-sm-10">
							<div class="company-content">
								<div class="nav navbar-nav navbar-right" data-in="fadeInDown"
									data-out="fadeOutUp">
									<img src="/skc/img/coupons.jpg" class="../../img-responsive"
										alt="" />
									<p>
									<button type="button" class="btn btn-sm btn-primary" id="btnGetCoupon" onclick="location.href='../main/couponnum'">쿠폰발급</button>
									</p>
									<p>
										<span class="company-name"><i class="fa fa-briefcase"></i>※
											최대 3장까지 발급이가능합니다</span>
									<p>
										<span class="company-name"><i class="fa fa-briefcase"></i>※
											발급일 기준으로 일주일 뒤 추가 발급이 가능합니다.</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../side/footer.jsp" flush="false" />
</body>
</html>