class AddDimensionIdToThickness < ActiveRecord::Migration
  def change
    add_column :thicknesses, :dimension_id, :integer
  end
end
