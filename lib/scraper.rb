class Scraper
  attr_accessor :url, :html, :doc, :arr, :record_hash

  def initialize
    @url = 'https://www.worldometers.info/coronavirus/coronavirus-death-toll/'
    @arr = []
    @record_hash = {}
  end

  def scrape_data(days)
    @html = URI.open(url)
    @doc = Nokogiri::HTML(html)
    (0..days - 1).each do |i|
      record_hash = {
        'Date' => doc.css('table.table-list > tbody > tr')[i].css('td')[0].text.strip.split("\n"),
        'Total-Deaths' => doc.css('table.table-list > tbody > tr')[i].css('td')[1].text,
        'New-Deaths' => doc.css('table.table-list > tbody > tr')[i].css('td')[2].text,
        'Percent-Change' => doc.css('table.table-list > tbody > tr')[i].css('td')[3].text
      }
      arr.push(record_hash)
    end
    arr
  end
end
