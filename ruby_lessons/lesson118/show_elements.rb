require 'json'

file = File.read("#{__dir__}" + "/" + 'chemical_elements.json')
elements = JSON.parse(file)

puts "What element u want to find?"
element_name = gets.chomp

if elements.has_key?(element_name)
  element = elements[element_name]
  puts "Название елемента: #{element_name}"
  puts "Порядковый номер елемента: #{element['number']}"
  puts "Название елемента: #{element['name']} "
  puts "Первооткрыватель елемента: #{element['discoverer']} #{element['year']} г."
  puts "Плотность: #{element['density']} г/см³"
else 
  puts "Такого елемента программа не знает!"
end