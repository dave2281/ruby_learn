require 'open-uri'
require 'nokogiri'


# введи что ищешь, на английском
search = 'ruby developer' 
splitted_search = search.split(' ')
joined_search_for_url = splitted_search.join('+')


#тут можно менять ссылку
search_url = "https://www.work.ua/jobs-#{joined_search_for_url}/" 
page_content = URI.open(search_url)
page_doc = Nokogiri::HTML(page_content)

vacancy_links = page_doc.css('.card-hover a')

output_file = 'vacancies.txt' 
File.open(output_file, 'w') do |file|
  vacancy_links.each do |link|
    file.puts("https://www.work.ua#{link['href']}")
  end
end

puts "Запись в файл завершена."

# распределение и удаление ненужных ссылок, остаются только вакансии
file = File.open('vacancies.txt', 'r')
lines = file.readlines
arr = []
filtered_arr = []

lines.each do |link| 
    if link.match?(/^https\:\/\/[a-z]+\.[a-z]+\.ua\/ru\/jobs\/[0-9]+\//)
        arr << link.chomp
    elsif link.match?(/^https\:\/\/[a-z]+\.[a-z]+\.ua\/jobs\/[0-9]+\//)
        arr << link.chomp
    end
end

10.times do |i|
    i += 1
    filtered_arr << arr.delete_at(i)
end

File.open('vacancies.txt', 'w') do |file|
    filtered_arr.each do |link|
        file.puts("#{link}")
    end
end

puts 'Файл отфильтрован!'