function anInputOccurred(priceInput) {
  const price = Number(priceInput.value);
  const fee = Math.floor(price * 0.1);  // 修正点１
  const profit = price - fee;

  const feeElement = document.getElementById('add-tax-price');  // 修正点２
  const profitElement = document.getElementById('profit');

  feeElement.innerText = fee;
  profitElement.innerText = profit;
}

function post (){
  const priceInput = document.getElementById('item-price');  // 修正点３
  priceInput.addEventListener('input', function() {
    anInputOccurred(priceInput);
  });
}

window.addEventListener('turbo:load', post);