class Scraper

    attr_accessor :url, :html, :doc, :arr, :record_hash

    def initialize
    
        @url = "https://www.worldometers.info/coronavirus/coronavirus-death-toll/"
        @arr = []
        @record_hash= Hash.new
        @html = URI.open(url)
        @doc = Nokogiri::HTML(html)
    end
        
  def write_csv
    (0..19).each do |i|
            record_hash = {
                "Date" => doc.css("table.table-list > tbody > tr")[i].css("td")[0].text.strip.split("\n"),
                "Total-Deaths" => doc.css("table.table-list > tbody > tr")[i].css("td")[1].text,
                "New-Deaths" => doc.css("table.table-list > tbody > tr")[i].css("td")[2].text,
                "Percent-Change" => doc.css("table.table-list > tbody > tr")[i].css("td")[3].text
            }
            arr.push(record_hash)
        end
        headers = arr[0].keys
        CSV.open('bin/data.csv', "w") do |csv|
                csv << headers
                arr.each do |rec|
                    csv << rec.values
                  end
                
            end
        
  end

end