require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    students.each do |student|
      name = student.css(".student-name")
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

