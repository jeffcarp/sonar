class HadNoIdeaTypeCouldntBeAColumn < ActiveRecord::Migration
  def change
    rename_column :departments, :type, :outlet
  end
end
