<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style>
	* {
		margin: 0;
		padding: 0; 
		list-style: none;
		text-decoration: none;
	}
	section{
		width: 100%;
		height: calc(100vh - 160px);
		background-color: lightgray;
	}
	
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<section>
	<h3>쇼핑몰</h3>
	<p>
		창 쇼핑몰에 오신 것을 환영합니다. <br>
		best셀러 "강신원" <br>
		가성비 상품 "조영탁"<br>
		사치품 "이준범"<br>
		단 하나밖에 안남은 상품 "이창현"<br>
	</p>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>