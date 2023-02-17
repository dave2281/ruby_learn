require_relative 'lib/product.rb'
require_relative 'lib/book.rb'
require_relative 'lib/movie.rb'

leon = Movie.new(price: 990, amount: 5)


puts "Film Leon cost #{leon.price}"