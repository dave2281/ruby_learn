# def my_function
#   yield 
 
# end

# my_function do 
#   puts 'lol'
#   puts 'game over'
# end

def calculate 
  x = 5 
  y = 10 
  result = yield(x, y) if block_given?
  puts "Result: #{result}"
end

calculate {|a, b| a + b}