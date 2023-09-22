

/* 가격란 천단위 , 찍기 */
function addCommasToNumber(number) {
    var formattedNumber = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return formattedNumber;
}

function addCommasToNumberAndCurrency(className) {
    var elements = document.querySelectorAll(className);

    for (var i = 0; i < elements.length; i++) {
        var element = elements[i];
        var text = element.textContent;
        var value = parseInt(text.replace(/,/g, '')); // 이미 존재하는 콤마를 제거하고 숫자로 변환합니다.
        var formattedValue = addCommasToNumber(value); // addCommasToNumber 함수를 사용하여 숫자를 포맷팅합니다.
        var valueWithCurrency = formattedValue + "원";
        element.textContent = valueWithCurrency;
    }
}

var prdPriceElement = document.querySelector('.prodcut-price');
var deliveryElement = document.querySelector('.delivery');
var totalPayElement = document.querySelector('.total-pay');
var priceElement = document.querySelector('.price');

var prdPriceValue = parseInt(prdPriceElement.textContent.replace(/,/g, ''));
var deliveryValue = parseInt(deliveryElement.textContent.replace(/,/g, ''));
var priceValue = parseInt(priceElement.textContent.replace(/,/g, ''));

var totalPayValue = prdPriceValue + deliveryValue;
totalPayElement.textContent = addCommasToNumber(totalPayValue) + "원";

addCommasToNumberAndCurrency('.prd-price');
addCommasToNumberAndCurrency('.delivery');
addCommasToNumberAndCurrency('.price');

/* 약관 동의, 결제 수단 선택 */
function checkAgreement() {
    const agreementCheckbox = document.getElementById('customCheck2');

    if (!agreementCheckbox.checked) {
        alert('약관에 동의해주세요');
    } 
}
