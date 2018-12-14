function payment_confirm(){
	
    var userName = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
    var phone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
    var buyer = $('input[name=userName]');
    var buyer_phone = $('input[name=phone]');

    if(!buyer.val()) {
        alert('예약자 이름을 입력해주세요.');
        return false;
    }
    if(userName.test(buyer.val())==false){
        alert('예약자 이름은 한글,영문,숫자만 입력이 가능합니다.');
        return false;
    }
    if(Number(buyer.val().length)>20){
        alert('예약자 이름은 20자 이하로 입력해주세요.');
        return false;
    }
    if(!buyer_phone.val()){
        alert('휴대폰 번호를 입력해 주세요.');
        return false;
    }

    if(regPhone.test(buyer_phone.val())==false){
        alert('휴대폰 번호를 확인해 주세요.');
        return false;
    }

    buyer_phone.val(buyer_phone.val().replace(/\-/ig, ''));
}