class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
