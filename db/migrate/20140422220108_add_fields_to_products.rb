class AddFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :plant_id, :integer
    add_column :products, :brand_id, :integer
    add_column :products, :quality_id, :integer
    add_column :products, :face_id, :integer
    add_column :products, :covering_one, :string
    add_column :products, :covering_two, :string
    add_column :products, :thickness_id, :integer
    add_column :products, :dimention_id, :integer
  end
end
