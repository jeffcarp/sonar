class ChangeArticleStringFieldsToText < ActiveRecord::Migration
  def change
    change_column :articles, :headline, :text
    change_column :articles, :deck, :text
    change_column :articles, :slug, :text
  end
end
