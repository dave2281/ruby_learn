path = "./data/*.txt"

files = Dir[path]

def read_file(name_of_file)
  file1 = File.new("./data/file1.txt")
  content_file1 = file1.read
  puts "Це у файлі 1:"
  puts content_file1
  file1.close
end

files.each_with_index do |file, index|
    puts "#{index + 1}: #{file}"
end

puts "Вибирайте файл для перегляду"

user_file = gets.to_i

if user_file == 1
    file1 = File.new("./data/file1.txt")
    content_file1 = file1.read
    puts "Це у файлі 1:"
    puts content_file1
    file1.close
elsif user_file == 2
    file2 = File.new("./data/file2.txt")
    content_file2 = file2.read
    puts "Це у файлі 2:"
    puts content_file2
    file2.close
elsif user_file == 3
    file3 = File.new("./data/file3.txt")
    content_file3 = file3.read
    puts "Це у файлі 3:"
    puts content_file3
    file3.close
elsif user_file == 4
    file4 = File.new("./data/file4.txt")
    content_file4 = file4.read
    puts "Це у файлі 4:"
    puts content_file4
    file4.close
end