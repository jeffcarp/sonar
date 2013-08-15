class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy 
  belongs_to :department
  validates_presence_of :headline
  validates_presence_of :copy
end
