def middle_permutation(string)
  a = string.chars
  p a
  arr_permutations = a.permutation.map {|arrs| arrs.join}.sort
  return arr_permutations[(arr_permutations.size/2)-1]
end

p middle_permutation('abcdxgz')
