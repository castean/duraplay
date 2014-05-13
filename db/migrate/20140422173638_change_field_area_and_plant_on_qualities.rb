class ChangeFieldAreaAndPlantOnQualities < ActiveRecord::Migration
  def self.up
    rename_column :qualities, :area, :brand_id
    rename_column :qualities, :plant, :quality_class_id
    add_column :qualities, :code_id, :string
  end

  def self.down

  end
end
