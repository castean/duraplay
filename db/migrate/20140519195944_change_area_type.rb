class ChangeAreaType < ActiveRecord::Migration
  def self.up
    rename_column :framing_saws, :plant, :plant_id
    rename_column :framing_saws, :area, :area_id
  end


  def self.down

  end
end
