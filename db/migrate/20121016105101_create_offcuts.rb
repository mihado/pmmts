class CreateOffcuts < ActiveRecord::Migration
  def change
    create_table :offcuts do |t|
      t.string :code
      t.string :mtype
      t.decimal :thickness
      t.decimal :height
      t.decimal :width
      t.text :description
      t.boolean :in_use
      t.boolean :use_up

      t.timestamps
    end
  end
end
