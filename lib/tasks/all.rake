desc "All custom rake tasks"

task :import_issues => :environment do
  json = File.read '/Users/Jeff/Desktop/sonar_issues.json'
  issues = JSON.parse json
  issues.each do |i|
    begin
      Issue.find(i["issue_ID"])
    rescue
      n = Issue.new
      n.id = i["issue_ID"]
      n.volume = i["issue_Volume"]
      n.edition = i["issue_Edition"]
      n.publish_date = i["issue_Published"]
      n.name = i["issue_Name"] 
      n.public = i["issue_Status"]
      puts n.save
    end
  end
end

