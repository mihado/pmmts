class CreateMtypes < ActiveRecord::Migration
  def change
    create_table :mtypes do |t|
      t.string :code
      t.text :desc

      t.timestamps
    end
  end
end
