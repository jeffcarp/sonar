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

task :import_people => :environment do
  json = File.read '/Users/Jeff/Desktop/sonar_people.json'
  people = JSON.parse json
  puts people.count
  people.each do |p|
    begin
      Person.find(p["person_ID"])
    rescue
      n         = Person.new
      n.id      = p["person_ID"]
      n.email   = p["person_Email"]
      n.photo_id= p["person_Photo"]
      n.name    = p["person_Name"]
      n.slug    = p["person_Slug"]
      n.position= p["person_Position"]
      n.year    = p["person_Year"]
      n.bio     = p["person_Bio"]
      puts n.inspect
      puts n.save
    end
  end
end

task :import_photos => :environment do
  json = File.read '/Users/Jeff/Desktop/sonar_photos_simple.json'
  photos = JSON.parse json
  photos.each do |p|
    begin
      Photo.find(p["photo_ID"])
    rescue
      n           = Photo.new
      n.id        = p["photo_ID"]
      n.caption   = p["photo_Caption"]
      n.source    = p["photo_Source"]
      n.extension = p["photo_Extension"]
      person = Person.where('name = ?', p["photo_Photographer"]).first
      if person
        n.person_id = person.id 
      end
      n.public    = (p["photo_Public"] == 1)
      n.taken_on  = p["photo_Date"]

      puts n.inspect
      puts n.save
    end
  end
end

task :import_articles_photos => :environment do
  json = File.read '/Users/Jeff/Desktop/sonar_articles_photos.json'
  articles_photos = JSON.parse json
  articles_photos.each do |ap|
    article_id = ap["articlephoto_Article"]
    photo_id = ap["articlephoto_Photo"]
    begin
      article = Article.find(article_id)
      photo = Photo.find(photo_id)
    rescue
      # create stub article?
      # puts "couldn't find article with id "+article_id.to_s
      # puts "or couldn't find photo with id "+photo_id.to_s
    else
      puts "FOUND BOTH"
      article.photos << photo
    end
  end
end

task :import_new_articles => :environment do
  json = File.read '/Users/Jeff/Desktop/sonar_articles.json'
  articles = JSON.parse json
end
