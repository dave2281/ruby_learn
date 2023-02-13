require 'translit'

puts 'Write phrase on eng: '
input = gets.chomp

p Translit.convert(input)


