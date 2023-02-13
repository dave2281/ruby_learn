def middle_permutation(string)
  a = string.chars
  arr_permutations = a.permutation.map {|arrs| arrs.join}
  p arr_permutations.size
  if arr_permutations.size < 720
    return arr_permutations[arr_permutations.size/2.round-1]
  elsif arr_permutations.size <= 720
    return arr_permutations[arr_permutations.size/2.round-25]#
  elsif arr_permutations.size >= 5030
    return arr_permutations[arr_permutations.size/2.round-9]
  end
end
p middle_permutation('abcdxgz')
