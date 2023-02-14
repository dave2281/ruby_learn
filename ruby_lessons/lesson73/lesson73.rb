regexp = /^\S{3}$/

file = File.open("/home/david/programming/ruby_learn/ruby_lessons/lesson73/file1.txt", "r")
file_lines = File.read(file).chomp
file.close

words = file_lines.split(' ')
p words.count {|word| word =~ regexp }
