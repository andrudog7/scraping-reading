require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
doc.css(".headling-260IBN").text
courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")
courses.each do |course|
    puts course.text.strip
end
binding.pry
x = 0
