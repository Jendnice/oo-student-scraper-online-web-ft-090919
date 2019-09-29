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
    page = Nokogiri::HTML(open(profile_url))
    student_profile = {}
    binding.pry 
    page.css 
  
  # return {:twitter => "url", :linkedin => "url", :github =>, :blog =>, :profile_quote =>, :bio =>}  
  end
  

end

# students: page.css("div.student-card").each do |student|
# name: student.css("h4.student-name").text.
# location: student.css("p.student-location").text
# profile_url: student.css("a").attribute("href").value 
  
  social = page.css("div.vitals-container div.social-icon-container a").collect do |icon| icon.attribute("href").value end 
  
  social.each 
  
# social = page.css("div.vitals-container div.social-icon-container a").attribute("href").value
  if social_icons[0] do twitter = social_icons[0]
# twitter = 
# linkedin = 
# github = 
# blog = 
# profile_quote = 
# bio = 
