def square_digits num
  arr_digits = []
  numStr = num.to_s.split('')
  numStr.each do |num_string|
    if num_string.to_i == 1
      arr_digits << 1
    elsif num_string == 0
      arr_digits << 0
    else
      arr_digits << num_string.to_i * num_string.to_i
    end
  end
  arr_digits.join.to_i
end

p square_digits(3212)


#Better solution
# def square_digits num
#   num.to_s.chars.map{|x| x.to_i**2}.join.to_i
# end

