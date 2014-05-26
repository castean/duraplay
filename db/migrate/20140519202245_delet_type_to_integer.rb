class DeletTypeToInteger < ActiveRecord::Migration
  def change
    remove_column :framing_saws, :plant_id

    remove_column :framing_saws, :area_id
  end
end
