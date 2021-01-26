require 'scraper'

describe Scraper do
  subject(:scrpr) { Scraper.new }

  describe '#initialize' do
    it 'should set the arr as an empty array' do
      expect(scrpr.instance_variable_get(:@arr)).to eq([])
    end
    it 'should set the url as a string of website address' do
        expect(scrpr.instance_variable_get(:@url)).to match(/https/)
      end
  end

#   describe '#scrape_data' do
#     it 'should return an array of hashes' do
#       expect(scrpr.scrape_data(2)).to be_instance_of(Hash)
#     end
# end
    

end