def move_zeros(arr)
  size = arr.size

  index = 0

  for i in (0...size)
    if arr[i] != 0
      arr[index] = arr[i]
      index += 1
    end
  end
  while index < size
    arr[index] = 0
    index += 1
  end
  return arr
end

p move_zeros([1,2,0,3,0,4,0,5,0,0,6])

# Лучшее решение

# def moveZeros(arr)
#   zeros = arr.count(0)
#   arr.delete(0)
#   arr.fill(0, arr.size, zeros)
# end
