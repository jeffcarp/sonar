class Issue < ActiveRecord::Base
  attr_accessible :name, :public, :volume, :edition, :publish_date 
  has_many :articles

  def self.latest_published_issue
    Issue.limit(1).order('publish_date DESC').where('public = ?', true).first
  end

  def self.volume_year_range(volume)
    @issues = Issue.where('volume=?', volume)
    latest = @issues.order('publish_date DESC').first 
    earliest = @issues.order('publish_date ASC').first 
    #earliest.publish_date+" - "+latest.publish_date
  end
end
