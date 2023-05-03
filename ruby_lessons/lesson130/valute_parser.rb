require 'net/http'
require 'uri'
require 'rexml/document'

URL = 'http://www.cbr.ru/scripts/XML_daily.asp'

response = Net::HTTP.get_response(URI.parse(URL))

doc = REXML::Document.new(response.body)

curs_date = doc.root.elements['//ValCurs'].attributes['Date']

usd_curs = doc.root.elements['//ValCurs'].elements['/Valute']

doc.each_element('//Valute[@ID="R01235" or @ID="R01239" or @ID="R01035" ]') do |tag|
  name = tag.get_text('Name')
  value = tag.get_text('Value')
  char_code = tag.get_text('CharCode')
  puts "Курс на #{curs_date}"
  puts "#{name}: #{value} #{char_code} "
end

