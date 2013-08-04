class Department < ActiveRecord::Base
  attr_accessible :name, :slug, :outlet 
  validates :slug, uniqueness: true
  has_many :articles
end
