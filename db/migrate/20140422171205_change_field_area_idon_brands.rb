class ChangeFieldAreaIdonBrands < ActiveRecord::Migration
  def self.up
    rename_column :brands, :area_id, :plant_id
  end

  def self.down

  end
end
