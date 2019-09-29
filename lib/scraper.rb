require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html))
    doc.css("")
    
 # return [{:name =>, :location =>, :profile_url =>}, {}, etc.]
  end
  
  
  def get_courses
    self.get_page.css(".post")
  end 
  
  def make_courses 
    self.get_courses.each do |post|
      course = Course.new 
      course.title = post.css("h2").text 
      course.schedule = post.css(".date").text 
      course.description = post.css("p").text
    end 
  end 
    
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

# students:
# name: 
# location:
# profile_url: 
