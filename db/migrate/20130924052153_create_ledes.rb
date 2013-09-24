class CreateLedes < ActiveRecord::Migration
  def change
    create_table :ledes do |t|
      t.string :position
      t.belongs_to :article
      t.string :special

      t.timestamps
    end
  end
end
