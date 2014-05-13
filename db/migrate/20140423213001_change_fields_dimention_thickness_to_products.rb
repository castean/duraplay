class ChangeFieldsDimentionThicknessToProducts < ActiveRecord::Migration
  def self.up
    rename_column :products, :thickness, :thicknesscode
    rename_column :products, :dimension, :dimensioncode
  end

  def self.down

  end
end
