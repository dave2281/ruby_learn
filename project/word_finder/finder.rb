require 'open-uri'
require 'nokogiri'

main_page_url = 'https://news.liga.net/ua'

main_page_content = URI.open(main_page_url).read

main_page_doc = Nokogiri::HTML(main_page_content)

all_links = main_page_doc.css('a').map { |link| link['href'] }

random_pages = all_links.sample(2)

p random_pages


output_file = 'words_links.txt'  
File.open(output_file, 'w') do |file|
  random_pages.each do |page_url|
    
    page_content = URI.open(page_url).read
    
    page_doc = Nokogiri::HTML(page_content)

    text_nodes = page_doc.xpath('//text()')

    target_sentences = text_nodes.select { |node| node.text.include?('Секретар') }

    target_sentences.each do |sentence|
      file.puts("Страница: #{page_url}")
      file.puts("Предложение: #{sentence.text}")
      file.puts('-' * 50)
    end
  end
end

puts "Запись в файл завершена."