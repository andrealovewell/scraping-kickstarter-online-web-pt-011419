# require libraries/modules here
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
end

projects = {}

kickstarter.css("li.project.grid_4").each do |project|
   title = project.css("h2.bbcard_name strong a").text
   projects[title.to_sym] = {}
 end

 projects
end
end
