def my_function(&block)
  puts "Начало выполнения функции"
  block.call if block_given?
  puts "Завершение выполнения функции"
end

my_function { puts "Внутри блока" }