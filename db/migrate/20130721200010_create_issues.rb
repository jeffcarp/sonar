class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string      :name
      t.boolean     :public
      t.integer     :volume
      t.integer     :edition
      t.date        :publish_date
      t.timestamps
    end
  end
end
