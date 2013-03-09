class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.column :headline, :string
      t.column :deck, :string
      t.column :department_id, :integer
      t.column :issue_id, :integer
      t.column :copy, :text
      t.column :public, :boolean
      t.column :slug, :string
      t.column :bigphoto, :boolean

      t.timestamps
    end
  end
end
