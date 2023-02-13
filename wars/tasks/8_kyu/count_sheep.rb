# def count_sheep(num)
#   arr = []
#   1.upto(num) {|n| arr << n}
#   if num == 0
#     ""
#   else
#     arr.each do |number|
#       print "#{number} sheep..."
#     end
#   end
# end

# def count_sheep(num)
#   result = ''
#   i = 1
#   while i <= num
#     result += "#{i} sheep..."
#     i += 1
#   end
#   return result
# end
def count_sheep(num)
  1.upto(num) {|n| print "#{n} sheep ... "}
end


puts count_sheep(3)
