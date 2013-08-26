class Person < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :photo_id, :position, :slug, :year
  validates_presence_of :name
  validates_presence_of :slug
  validates_uniqueness_of :slug
end
