# require libraries/modules here
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
end

projects = {}

kickstarter.css("li.project.grid_4").each do |project|
  projects[project] ={}
end

  projects
  end
end

end
