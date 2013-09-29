class AddArticlesPeopleTable < ActiveRecord::Migration
  def change
    create_table :articles_people do |t|
      t.belongs_to :article
      t.belongs_to :person
    end 
  end
end
