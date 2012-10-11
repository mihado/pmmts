class CreateMthicknesses < ActiveRecord::Migration
  def change
    create_table :mthicknesses do |t|
      t.integer :thickness

      t.timestamps
    end
  end
end
