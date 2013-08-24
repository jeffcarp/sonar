class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.text :source
      t.string :extension
      t.text :source
      t.integer :person_id
      t.boolean :public
      t.date :taken_on

      t.timestamps
    end
  end
end
