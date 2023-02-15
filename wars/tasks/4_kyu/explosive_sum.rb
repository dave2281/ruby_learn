def sum(nums)
  result = 0
  i = 0
  while i < nums.count
    result += nums[i]
    i += 1
  end
  result
end

p sum([12])

