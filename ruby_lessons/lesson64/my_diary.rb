puts "Привет, я твой дневник!\nСкажи что у тебя на душе:"
puts

current_path = File.dirname(__FILE__)
line = nil
all_lines = []
time = Time.now
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "------------------------------"
file = File.new(current_path + '/' + file_name + '.txt', 'a:UTF-8')

file.puts(separator)

while line != 'end'
  line = STDIN.gets.encode("UTF-8").chomp
  all_lines << line
end

file.print("\n\r" + time_string + "\n\r")

all_lines.pop

all_lines.each do |line|
  file.puts(line)
end

file.puts(separator)

file.close

puts 'DOne'
