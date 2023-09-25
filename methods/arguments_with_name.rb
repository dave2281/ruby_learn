def order(product:, quantity:, price:)
  total = quantity * price
  "Заказ: #{quantity} x #{product} = #{total}"
end

p order(product: "Книга", quantity: 3, price: 10)
