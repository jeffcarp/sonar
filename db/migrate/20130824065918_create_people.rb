class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :email
      t.integer :photo_id
      t.string :name
      t.string :slug
      t.string :position
      t.integer :year
      t.text :bio

      t.timestamps
    end
  end
end
