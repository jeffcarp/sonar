class Issue < ActiveRecord::Base
  attr_accessible :name, :public, :volume, :edition, :publish_date 
  has_many :articles

  def self.latest_published_issue
    Issue.limit(1).order('publish_date DESC').where('public = ?', true).first
  end
end
