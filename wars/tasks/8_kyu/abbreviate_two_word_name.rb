def abbrev_name(name)
  arr = name.split(' ')
  arr2 = []
  arr.map {|names| arr2 << names[0].upcase}
  p arr2.join('.')
end
abbrev_name('james Charles')
