require 'scraper'
require 'open-uri'
require 'nokogiri'

describe Scraper do
  subject(:scrpr) { Scraper.new }
  subject(:arr) { [] }
  describe '#initialize' do
    it 'should set the arr as an empty array' do
      expect(scrpr.instance_variable_get(:@arr)).to eq([])
    end
    it 'should set the url as a string of website address' do
      expect(scrpr.instance_variable_get(:@url)).to match(/https/)
    end
  end

  describe '#scrape_data' do
    it 'should return an array' do
      expect(scrpr.scrape_data(2)).to be_an(Array)
    end

    it 'should not return nil' do
      expect(scrpr.scrape_data(2).nil?).not_to be_truthy  
    end

    it 'should return an array of hashes' do
      arr = scrpr.scrape_data(2)

      (0..arr.length - 1).each do |i|
        expect(arr[i]).to be_a(Hash)
      end
    end

    it 'An item of the array should have the Date hash key' do
      arr = scrpr.scrape_data(2)

      (0..arr.length - 1).each do |i|
        expect(arr[i].key?('Date')).to be_truthy
      end
    end

    it 'An item of the array should have the Total-Deaths hash key' do
      arr = scrpr.scrape_data(2)

      (0..arr.length - 1).each do |i|
        expect(arr[i].key?('Total-Deaths')).to be_truthy
      end
    end

    it 'An item of the array should have the New-Deaths hash key' do
      arr = scrpr.scrape_data(2)

      (0..arr.length - 1).each do |i|
        expect(arr[i].key?('New-Deaths')).to be_truthy
      end
    end

    it 'An item of the array should have the Percent-Change hash key' do
      arr = scrpr.scrape_data(2)

      (0..arr.length - 1).each do |i|
        expect(arr[i].key?('Percent-Change')).to be_truthy
      end
    end
  end
end
