class CreateThicknesses < ActiveRecord::Migration
  def change
    create_table :thicknesses do |t|
      t.string :name
      t.float :inches
      t.float :milimiter

      t.timestamps
    end
  end
end
