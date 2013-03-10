class Department < ActiveRecord::Base
  attr_accessible :name, :slug, :outlet 
  has_many :articles
end
