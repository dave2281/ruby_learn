require 'yaml'

class FileWriter 
  def def initialize(mode)
    @filename = "QUIZ_#{name}_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.txt"
    @mode = mode
  end

  def write(content)
    File.write(@filename, content, mode: @mode)
  end 
end 

class Questions 
  def initialize(filename)
    @filename = filename
  end

  def load 
    YAML.safe_load_file(filename, symbolize_names: true)
  end 
end

pathyaml = '/home/dave/programming/ruby_git/ruby_learn/krukovski/yamlprog/questions.yml'
a_code = 65
correct_answers = 0
incorrect_answers = 0
user_answer_char = nil
questions = Questions.new(pathyaml)

puts "Введите ваше имя:"
name = gets.chomp.strip



writer = FileWriter.new('a')

writer.write("Результаты для пользователя #{name}\n\n#{current_time}")

all_questions.load.shuffle.each do |question_data|
  writer.write("\n\n=== #{question_data[:question]} ===\n\n")

  correct_answer = question_data[:answers].first

  answers = question_data[:answers].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr
    result[answer_char] = answer
    
    puts "#{answer_char}. #{answer}"

    result
  end

  loop do 
    puts 'Ваш ответ:'
    user_answer_char = gets.strip[0].upcase
    if user_answer_char.between?('A', 'D')
      break
    else
      puts 'Ответ только A - D'
    end
  end
  
  if answers[user_answer_char] == correct_answer
    puts 'Верно!'

    writer.write("Верный ответ!")
    correct_answers += 1
  else 
    puts 'Неверно!'

    writer.write("Неверный ответ!\n Правильный ответ: #{correct_answer}")
    
    puts "Правильный ответ: #{correct_answer}"
    incorrect_answers += 1
  end
end

writer.write("\n\nПравильных ответов: #{correct_answers}\n\n")
writer.write("\n\nНеправильных ответов: #{incorrect_answers}\n\n")

correct_answer_percentage = (correct_answers / all_questions.length.to_f) * 100

writer.write("\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n")