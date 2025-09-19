<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<style>
	*{
		margin : 0;
		padding : 0;
	}
	
	
	section{
		width: 100%;
		height: calc(100vh - 160px);
		background-color: lightgray;
	}
	section h2{
		text-align: center;
		padding: 20px;
	}
	section form{
		display: flex;
		justify-content: center;
	}

</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2> 상품구매 </h2>
		<form name="frm" method="post" action="insert">
			<table border="1">
				<tr>
					<td>상품이름</td>
					<td><select name = "giftnim">
							<option value="beyblade">팽이</option>
							<option value="nintando">닌텐도</option>
							<option value="pokemon">포켓몬</option>
							<option value="overwatch">오버워치</option>
							<option value="kamanrider">가면라이더</option>
						</select>
					</td>	
				</tr>
				<tr>
					<td>고객번호</td>
					<td><input type="text" name="cust_no"></td>
				</tr>
				<tr>
					<td>결제방법</td>
					<td><select name = "pay">
							<option value="toss">토스페이</option>
							<option value="kakao">카카오페이</option>
							<option value="kb">kbpay</option>
							<option value="shinhan">solpay</option>
							<option value="minsaeng">민생지원금</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>배송요청사항</td>
					<td><select name = "requests">
							<option value="문앞에_놓아주세요">문앞에 놓아주세요</option>
							<option value="배송전에_연락바랍니다">배송전에 연락바랍니다</option>
							<option value="초인종_눌러주세요">초인종눌러주세요</option>
							<option value="부재시_문앞에_놓아주세요">부재시 문앞에 놓아주세요</option>
							<option value="배달보관함에_넣어주세요">배달보관함에 넣어주세요</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:center">
						<input type="button" value="예약등록" onclick="checkResv()">
						<input type="button" value="다시쓰기" onclick="resetResv()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>