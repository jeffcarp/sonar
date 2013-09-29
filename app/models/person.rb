class Person < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :photo_id, :position, :slug, :year
  has_and_belongs_to_many :articles
  validates_presence_of :name
  validates_presence_of :slug
  validates_uniqueness_of :slug
end
