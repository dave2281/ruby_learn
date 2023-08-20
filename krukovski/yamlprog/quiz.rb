require 'yaml'
pathyaml = '/home/dave/programming/ruby_git/ruby_learn/krukovski/yamlprog/questions.yml'

a_code = 65
correct_answers = 0
incorrect_answers = 0
user_answer_char = nil

puts "Введите ваше имя:"
name = gets.chomp.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S')

filename = "QUIZ_#{name}_#{current_time}.txt"

File.write(filename, "Результаты для пользователя #{name}\n\n#{current_time}", mode: a)

all_questions = YAML.safe_load_file(pathyaml, symbolize_names: true)
puts all_questions.inspect

all_questions.shuffle.each do |question_data|
  formatted_question = "\n\n=== #{question_data[:question]} ===\n\n" 
  puts formatted_question
  
  File.write(filename, formatted_question, mode: 'a')

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
    File.write(
      filename,
      "Верный ответ!",
      mode: 'a'
    )
    correct_answers += 1
  else 
    puts 'Неверно!'
    File.write(
      filename,
      "Неверный ответ!\n Правильный ответ: #{correct_answer}",
      mode: 'a'
    )
    puts "Правильный ответ: #{correct_answer}"
    incorrect_answers += 1
  end
end

File.write(
  filename,
  "\n\nПравильных ответов: #{correct_answers}\n\n",
  mode: 'a'
)
File.write(
  filename,
  "\n\nНеправильных ответов: #{incorrect_answers}\n\n",
  mode: 'a'
)

correct_answer_percentage = (correct_answers / all_questions.length.to_f) * 100

File.write(
  filename,
  "\n\nПроцент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n",
  mode: 'a'
)