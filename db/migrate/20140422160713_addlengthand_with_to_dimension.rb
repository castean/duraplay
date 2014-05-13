class AddlengthandWithToDimension < ActiveRecord::Migration
  def change
    add_column :dimensions, :width_mts, :float
    add_column :dimensions, :length_mts, :float
    add_column :dimensions, :product_id, :integer
  end
end
