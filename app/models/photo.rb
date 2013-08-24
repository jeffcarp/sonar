class Photo < ActiveRecord::Base
  attr_accessible :caption, :extension, :person_id, :public, :source, :source
end
