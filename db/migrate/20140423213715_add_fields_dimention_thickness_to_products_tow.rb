class AddFieldsDimentionThicknessToProductsTow < ActiveRecord::Migration
  def change
    add_column :products, :code_thickness, :string
    add_column :products, :code_dimension, :string
  end
end
