class CreateFramingSaws < ActiveRecord::Migration
  def change
    create_table :framing_saws do |t|
      t.string :plant
      t.string :area
      t.integer :product_id
      t.integer :quality_id
      t.integer :dimension_id
      t.string :batch
      t.integer :sheet
      t.string :responsible

      t.timestamps
    end
  end
end
