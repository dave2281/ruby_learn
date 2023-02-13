def solution(str)
  str_array = str.split("")
  i = 0
  j = str.length - 1
  (str.length/2).floor.times do                                             #.floor(-16.7834) -> -16.8
    str_array[i], str_array[j] = str_array[j], str_array[i]
    i += 1
    j -= 1
  end
  str_array.join("")
end
p solution("world")
