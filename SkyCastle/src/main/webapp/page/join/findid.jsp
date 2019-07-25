<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 아이디 찾기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>

	<!-- login section start -->
	<div style="position: relative; left: 10px; top: -70px;" >

		<section class="login-wrapper">

			<div class="container">
				<section class="jobs">
					<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">

						<form>

							<img class="img-responsive" alt="logo" src="/skc/img/logo.png">
							<section class="jobs">

								<div class="row heading">
									<h1>아이디 찾기</h1>

									<p>정보들을 입력하세요</p>
								</div>
								<!-- <img class="img-responsive" alt="logo" src="../../img/logo.png">	 -->
								<input type="text" class="form-control input-lg"
									placeholder="Please enter your Name"> <input
									type="password" class="form-control input-lg"
									placeholder="Please enter your PhoneNumber">
									<h2>
										<button type="submit" class="btn btn-primary">Search
											My Id</button>
									</h2>
							</section>
						</form>
					</div>
				</section>
			</div>
		</section>

	</div>
	<!-- login section End -->

<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>