//script.js
function checkResv() {
	if (frm.giftnim.value == '') {
		alert("상품이름이 입력되지 않았습니다!");
		frm.giftnim.focus();
	} else if (frm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		frm.cust_no.focus();
	} else if (frm.pay.value == '') {
		alert("결제방법이 입력되지 않았습니다!");
		frm.pay.focus();
	} else if (frm.requests.value == '') {
		alert("배송요청사항이 입력되지 않았습니다!");
		frm.requests.focus();
	}
	else {
		alert("상품구매가 완료되었습니다");
		frm.submit();
	}

}
function resetResv() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	frm.reset();
}

function checkCust() {
	if (sfrm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		sfrm.cust_no.focus();
	} else {
		sfrm.submit();
	}
}