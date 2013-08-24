class Person < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :photo_id, :position, :slug, :year
end
