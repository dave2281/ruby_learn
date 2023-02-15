def solution(number)
  results = 0
  1.upto(number-1) do |x|
    if x % 3 == 0 || x % 5 == 0
      results += x
    end
  end
  results
end

p solution(200)

# better
# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end
