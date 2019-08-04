require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    student_array = []
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css(".student-card")
    students.each do |student|
      student_hash = {}
      student_hash[:name] = student.css(".student-name").text
      student_hash[:location] = student.css(".student-location").text
      student_hash[:profile_url] = student.css("a").first["href"]
      student_array << student_hash
    end
    student_array
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

