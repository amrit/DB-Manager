class BusinessesController < ApplicationController
  
def excel
   require 'rubygems'
   require 'nokogiri'

  doc = Nokogiri::HTML(table_string)

  doc.xpath('//table//tr').each do |row|
    row.xpath('td').each do |cell|
      print '"', cell.text.gsub("\n", ' ').gsub('"', '\"').gsub(/(\s){2,}/m, '\1'), "\", "
    end
    print "\n"
  end
end
  
end
