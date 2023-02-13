file = File.new('holidays.txt')
time = Time.now
current_time = time.strftime("%d.%m")
arr_without_empty = []
lines = file.readlines

lines.each do |line|
  unless line == "\n"
    arr_without_empty << line.chomp!
  end
end

arr_without_empty.each do |line|
  if line.include?(current_time)
    puts 'HOLIDAYS'
  end
end
