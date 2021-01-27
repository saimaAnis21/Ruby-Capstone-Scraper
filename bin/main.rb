require 'open-uri'
require 'nokogiri'
require 'csv'
require_relative '../lib/scraper.rb'

scr = Scraper.new

puts 'Covid-19 Deaths/day data'

flag = 0
while flag.zero?
  puts "Input the no. of days \n(note:you cannot enter more than 20 days)"
  no_of_days = gets.chomp.to_i
  flag = 1 if (1..20).include?(no_of_days)
end

arr_csv = scr.scrape_data(no_of_days)

headers = arr_csv[0].keys

CSV.open('bin/data.csv', 'w') do |csv|
  csv << headers
  arr_csv.each do |rec|
    csv << rec.values
  end
end
