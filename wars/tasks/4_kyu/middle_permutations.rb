def middle_permutation(string)
  arr = []
  a = string.chars.sort
  arr_permutations = a.permutation
  index = 0
  arr_size = arr_permutations.size

  arr_permutations.each do |arrs|
    index += 1
    arr << arrs.join
  end

  if arr.size.even?
    arr_average = (arr_size/2)-1
    arr[arr_average]
  else
    arr_average = (arr_size/2)
    arr[arr_average]
  end
end

p middle_permutation('abcdxgz')
