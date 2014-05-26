class AddTypeToInteger < ActiveRecord::Migration
  def change
    add_column :framing_saws, :plant_id, :integer
    add_column :framing_saws, :area_id, :integer
  end
end
