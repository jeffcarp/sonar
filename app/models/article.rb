class Article < ActiveRecord::Base
  attr_accessible :headline, :deck, :copy, :slug, :public, :bigphoto, :issue_id, :department_id, :person_ids, :new_photo_id
  belongs_to :department
  belongs_to :issue
  has_many :ledes
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :people
  validates_presence_of :headline
  validates_presence_of :deck
  validates_presence_of :copy
  validates_uniqueness_of :slug
  default_scope order('created_at DESC')

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

  def new_photo_id; end;
  def new_photo_id=(id)
    if photo = Photo.find(id)
      self.photos << photo
    end
  end

end
