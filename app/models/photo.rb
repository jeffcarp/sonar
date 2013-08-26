class Photo < ActiveRecord::Base
  attr_accessible :caption, :extension, :person_id, :public, :source, :source
  has_and_belongs_to_many :articles
end
