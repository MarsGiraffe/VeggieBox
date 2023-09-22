function addCommasToNumber(number) {
    var formattedNumber = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return formattedNumber;
}

var priceElement = document.querySelector('.product-price');
var priceText = priceElement.textContent;
var priceValue = parseInt(priceText.replace(",", "")); // 쉼표 제거 후 정수로 변환
var formattedPrice = addCommasToNumber(priceValue);
priceElement.textContent = formattedPrice;
var valueWithCurrency = formattedPrice + "원"; 
priceElement.textContent = valueWithCurrency; 


// 수량과 가격 업데이트 함수
function updatePrice() {
    var quantity = parseInt(quantityInput.value); // 수량 값 가져오기
    var totalPrice = initialPrice * quantity; // 총 가격 계산
    var formattedPrice = addCommasToNumber(totalPrice); // 천단위 쉼표 추가
    priceElement.textContent = formattedPrice; // 가격 업데이트
}
    
// 수량 입력 요소와 가격 요소 가져오기
var quantityInput = document.getElementById('qty');
var priceElement = document.querySelector('.product-price');

// 초기 가격 값 저장
var priceText = priceElement.textContent;
var initialPrice = parseInt(priceText.replace(',', '')); // 쉼표 제거

// 수량 변경 시 가격 업데이트
quantityInput.addEventListener('change', updatePrice);

// 수량 증가 및 감소 버튼 이벤트 처리
var qtyMinus = document.querySelector('.qty-minus');
var qtyPlus = document.querySelector('.qty-plus');

// 수량 감소 버튼 클릭 시
qtyMinus.addEventListener('click', function () {
    if (quantityInput.value > 1) { // 최소값 제한
        quantityInput.value--;
        quantityInput.dispatchEvent(new Event('change'));
    }
});

// 수량 증가 버튼 클릭 시
qtyPlus.addEventListener('click', function () {
    if (quantityInput.value < 300) { // 최대값 제한
        quantityInput.value++;
        quantityInput.dispatchEvent(new Event('change'));
    }
});

function updatePrice() {
    var quantity = parseInt(quantityInput.value);
    var totalPrice = initialPrice * quantity;
    var formattedPrice = addCommasToNumber(totalPrice);
    var valueWithCurrency = formattedPrice + "원";
    priceElement.textContent = valueWithCurrency;
}

/* 결제 페이지 이동  */
function goToCheckout() {
    // window.location.href = "checkout.html";
    location.href = "${path}/checkOut.do?product_num=" + product_num;
}