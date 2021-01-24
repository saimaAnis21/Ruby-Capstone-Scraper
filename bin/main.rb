require 'open-uri'
require 'net/http'
require 'json'
require 'nokogiri'
require 'csv'

html = URI.open("https://en.wikipedia.org/wiki/Pakistan")
doc = Nokogiri::HTML(html)
arr = []

# desc = doc.css("p").text
# desc = doc.css("p")[5].children[3]
# .text.strip.split("\n")
# doc.css("div a img").find{|picture| picture.attributes["alt"].value.include?("Muhammad Ali Jinnah")}.attributes["src"].value
desc = doc.css("title").text


arr.push([desc])

CSV.open('bin/data.csv', "w") do |csv|
    csv << arr[0]
end

