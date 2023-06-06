puts "Хотите ли вы использовать стандартное значение для всех параметров?\nА точнее 25 мин рабочее, 5 мин отдых и конечный отдых 30 минут(y/n)"
answer = gets.chomp

if answer == 'y'
  work_time = 25 * 60 
  rest_time = 5 * 60
  last_rest_time = 30 * 60 
  puts 'Стандартные значения были применены'
else 
  puts 'Введите рабочее время!'
  work_time = gets.to_i
  work_time = work_time * 60
  puts 'Вы успешно добавили рабочее время!'
  puts 'Введите время для отдыха!'
  rest_time = gets.to_i
  rest_time = rest_time * 60
  puts 'Вы успешно добавили время для отдыха!'
  puts 'Введите время для большого отдыха!'
  last_rest_time = gets.to_i
  last_rest_time = last_rest_time * 60
  puts 'Вы успешно добавили время для длинного отдыха!'
end 

puts 'Сколько раз вы хотите повторить (Рабочее время - отдых)'
count = gets.to_i 

count.times do
  puts 'Чтобы начать отсчет рабочего времени нажмите ENTER!'
  input = gets.chomp
  if input == '\n'
    system("echo -e '\a'")
    puts 'Время пошло!'
    sleep work_time
  end
  
  input = gets.chomp
  if input == '\n'
    system('aplay path')

    puts 'Нажмите Enter чтобы начать отдых!'
    system("echo -e '\a'")
    puts 'Время пошло!'
    sleep rest_time 
    system('aplay path')
  end

  
   
end

puts 'Чтобы начать большой отдых, нажмите Enter!'
input = gets.chomp
if input == '\n'
  system("echo -e '\a'")
  puts 'Время пошло!'
  sleep work_time 
  system('aplay path')
end

puts "Вы успешно прошли все циклы"
# system("echo -e '\a'")