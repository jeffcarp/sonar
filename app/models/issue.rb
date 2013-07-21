class Issue < ActiveRecord::Base
  attr_accessible :name, :public, :volume, :edition, :publish_date 
  has_many :articles
end
