class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :slug
      t.string :type

      t.timestamps
    end
  end
end
