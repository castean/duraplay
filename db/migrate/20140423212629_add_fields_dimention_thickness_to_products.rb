class AddFieldsDimentionThicknessToProducts < ActiveRecord::Migration
  def change
    add_column :products, :thickness, :integer
    add_column :products, :dimension, :integer
  end
end
