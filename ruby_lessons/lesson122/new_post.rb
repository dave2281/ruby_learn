require_relative 'post.rb'
require_relative 'memo.rb'
require_relative 'link.rb'
require_relative 'task.rb'


puts "Привет, я блокнот версия 2, записываю новые записи в базу SQLite :)"

puts "Что хотите записать сегодня?"

choices = Post.post_types.keys
choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = gets.chomp.to_i
end

entry = Post.create(choices[choice])

entry.read_from_console

rowid = entry.save_to_db

puts "Запись сохранена в базе, id = #{rowid}"