# require 'nokogiri'
require 'open-uri'
require 'pry'

# require_relative './student.rb'

class Scraper

  def self.scrape_index_page(index_url)
    # doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html))
 #   doc.css("")
    
 # return [{:name =>, :location =>, :profile_url =>}, {}, etc.]
  end
  

  def self.scrape_profile_page(profile_url)
    
  end

end

# students: doc.css(" ")
# name: 
# location:
# profile_url: 

# collection of courses: doc.css(".post")
# title: doc.css(".post").first.css("h2").text
# schedule: doc.css(".post").first.css(".date").text
# description: doc.css(".post").first.css("p").text
