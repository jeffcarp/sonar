class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy 
  belongs_to :department
end
