def high_and_low(arr)
  arr = arr.split(' ')
  numbers = []
  i = 1
  b = 1
  arr.each {|number| numbers << number.to_i}
  min = numbers[0]
  max_value = numbers[0]
  while i < numbers.size
    min = numbers[i] if numbers[i] < min
    i += 1
  end
  while b < numbers.size
    if numbers[b] > max_value
      max_value = numbers[b]
    end
    b += 1
  end
  return "#{max_value} " + "#{min}"
end

p high_and_low("1 2 3 4 50 6 7 8 72 10")
