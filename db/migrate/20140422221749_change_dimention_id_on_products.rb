class ChangeDimentionIdOnProducts < ActiveRecord::Migration
  def self.up
    rename_column :products, :dimention_id, :dimension_id
  end

  def self.down

  end
end
