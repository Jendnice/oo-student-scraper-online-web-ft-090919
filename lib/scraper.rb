# require 'nokogiri'
require 'open-uri'
require 'pry'

# require_relative './student.rb'

class Scraper

  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    students = []

   # page.css("div.roster-cards-container").each |student|
    
    page.css("div.student-card").each do |student|
      name = student.css("h4.student-name").text
      location = student.css("p.student-location").text
      profile_url = student.css("a").attribute("href").value 
      student_info = {:name => name, :location => location, :profile_url => profile_url}
      students << student_info  
    end 
    students
 end
 

  

  def self.scrape_profile_page(profile_url)
    
  end

end

# students: page.css("div.student-card").each do |student|
# name: student.css("h4.student-name").text.
# location: student.css("p.student-location").text
# profile_url: student.css("a").attribute("href").value 

# collection of courses: doc.css(".post")
# title: doc.css(".post").first.css("h2").text
# schedule: doc.css(".post").first.css(".date").text
# description: doc.css(".post").first.css("p").text
