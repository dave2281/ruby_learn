def delete_items_arr(arr, number)
  arr1 = []
  index = 0

  while index < number
    if arr.size <= index
      break
    end
    arr1 << arr[index]
    index += 1
  end

  return arr1
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

print 'Массив: '
p arr

puts 'Сколько первых цыфр удалить? '
number = gets.to_i

p delete_items_arr(arr, number)
