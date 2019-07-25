<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬 | 회원가입결과</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>

	<!-- login section start -->
	<section class="login-wrapper">
		<div class="container">
			<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
				<form>
					<img class="img-responsive" alt="logo" src="/skc/img/logo.png"> <input
						type="text" class="form-control input-lg" placeholder="User Name">
					<input type="password" class="form-control input-lg"
						placeholder="Password"> <label><a href="">Forget
							Password?</a></label>
					<button type="submit" class="btn btn-primary">Login</button>
					<p>
						Have't Any Account <a href="">Create An Account</a>
					</p>
				</form>
			</div>
		</div>
	</section>
	<!-- login section End -->

<jsp:include page="../side/footer.jsp" flush="false"/>
</body>
</html>