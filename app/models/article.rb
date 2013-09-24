class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy, :slug, :public, :bigphoto, :issue_id, :department_id 
  belongs_to :department
  belongs_to :issue
  has_many :ledes
  has_and_belongs_to_many :photos
  validates_presence_of :headline
  validates_presence_of :deck
  validates_presence_of :copy
  validates_uniqueness_of :slug
end
