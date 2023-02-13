def positive_sum(arr)
  arr.delete_if {|num| num < 0}
  return arr.sum
end

p positive_sum([1,-2,3,4,5])
