# require 'nokogiri'
require 'open-uri'
require 'pry'

# require_relative './student.rb'

class Scraper

  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open(index_url))
    students = []
    binding.pry
    page.css("div.roster-cards-container").each |
    
# return students = [{:name =>, :location =>, :profile_url =>}, {}, etc.]
 end
 

  

  def self.scrape_profile_page(profile_url)
    
  end

end

# students: page.css("div.student-card").each do |student|
# name: student.css("h4.student-name").text.
# location:
# profile_url: 

# collection of courses: doc.css(".post")
# title: doc.css(".post").first.css("h2").text
# schedule: doc.css(".post").first.css(".date").text
# description: doc.css(".post").first.css("p").text
