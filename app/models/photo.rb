class Photo < ActiveRecord::Base
  attr_accessible :caption, :extension, :person_id, :public, :source, :source, :image
  has_and_belongs_to_many :articles
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
