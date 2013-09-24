class Lede < ActiveRecord::Base
  attr_accessible :position, :special, :article_id
  belongs_to :article
end
