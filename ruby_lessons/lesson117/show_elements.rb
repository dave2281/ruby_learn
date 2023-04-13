require "json"

file = File.read("#{__dir__}/elements.json", encoding: 'UTF-8')
elements = JSON.parse(file)

p elements