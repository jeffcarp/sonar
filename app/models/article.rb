class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy, :slug, :public, :bigphoto, :issue_id, :department_id 
  belongs_to :department
  belongs_to :issue
  validates_presence_of :headline
  validates_presence_of :copy
end
