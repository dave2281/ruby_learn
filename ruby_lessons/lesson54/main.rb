if File.exist?("ruby_learn/lesson54/file.txt")
  p 'File exist'
  file = File.new('ruby_learn/lesson54/file.txt', 'r')
  lines = file.readlines
  empty_lines = 0
  all_lines = 0
  last_lines = []
  lines.each_with_index do |line, index|
    all_lines += 1
    if line == "\n"
      empty_lines += 1
    end
    if lines.size - index <= 5
      last_lines << line
    end
  end
else
  p 'Bad'
end

p all_lines
p empty_lines
p "Last 5 lines: "
last_lines.each do |line|
  p line.chomp
end
