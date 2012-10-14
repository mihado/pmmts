class CreateMthicknessesTable < ActiveRecord::Migration
  def up
	create_table :mthicknesses do |t|
      t.decimal :thickness

      t.timestamps
  end
  end

  def down
  end
end
