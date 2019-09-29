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
    student = {}
    binding.pry 
    page.css 
   binding.pry 
  # return {:twitter => "url", :linkedin => "url", :github =>, :blog =>, :profile_quote =>, :bio =>}  
  
  



# students: page.css("div.student-card").each do |student|
# name: student.css("h4.student-name").text.
# location: student.css("p.student-location").text
# profile_url: student.css("a").attribute("href").value 
  
  social = page.css("div.vitals-container div.social-icon-container a").collect do |icon| icon.attribute("href").value end 
  
  social.each do |link| 
    if link.include?("twitter")
      student[:twitter] = link
    elsif link.include?("linkedin")
      student[:linkedin] = link 
    elsif link.include?("github")
      student[:github] = link 
    elsif link.include?("blog")
      student[:blog] = link 
    else 
    end 
  end 
  student[:profile_quote] = page.css("div.profile-quote")
  student[:bio] = page.css("div.profile-quote").text.
  student 
 end 
 
 
end 
  
# social = page.css("div.vitals-container div.social-icon-container a").attribute("href").value
 
# twitter = 
# linkedin = 
# github = 
# blog = 
# profile_quote = page.css("div.profile-quote").text
# bio = 
