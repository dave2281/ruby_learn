def middle_permutation(string)
  a = string.chars
  arr_permutations = a.permutation.map {|arrs| arrs.join}
  
end

p middle_permutation('pweafgnjdovyuxkhmr')
