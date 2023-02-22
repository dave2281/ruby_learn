require_relative 'lib/products.rb'
require_relative 'lib/films.rb'
require_relative 'lib/books.rb'

current_path = File.dirname(__FILE__)

book_idiot = Book.new(current_path + "/data/books.txt")

puts "#{book_idiot.name} director name #{book_idiot.director_name_surname} date production #{book_idiot.date_production} price #{book_idiot.price}"