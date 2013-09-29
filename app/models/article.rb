class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy, :slug, :public, :bigphoto, :issue_id, :department_id, :person_ids
  belongs_to :department
  belongs_to :issue
  has_many :ledes
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :people
  validates_presence_of :headline
  validates_presence_of :deck
  validates_presence_of :copy
  validates_uniqueness_of :slug

  def authors_text
    str = ""
    self.people.each do |p|
      if str.length > 0
        str += " and "
      end
      str += '<a href="/people/'
      str += p.id.to_s
      str += '">'
      str += p.name
      str += '</a>'
    end
    str
  end

  def slug_path
   path = '/'+self.department.slug 
   path +='/'+self.slug
  end

end
