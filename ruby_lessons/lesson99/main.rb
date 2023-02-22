require_relative 'lib/product.rb'
require_relative 'lib/book.rb'
require_relative 'lib/movie.rb'

leon = Movie.new(price: 990, amount: 5)
book_idiot = Book.new(price: 1000, amount: 10, date_production: 1996)
product_cake = Product.new(price:300, amount: 3, date_production: 2023)

book_idiot.price = 1500

puts "Film Leon cost #{leon.price}"
puts "Book was made in #{book_idiot.date_production}, cost #{book_idiot.price} and amount of books - #{book_idiot.amount}"
puts "Cake was made in #{product_cake.date_production}, cost #{product_cake.price} and amount of books - #{product_cake.amount}"