class DropMthicknessesTable < ActiveRecord::Migration
  def up
  	drop_table :mthicknesses
  end

  def down
  end
end
