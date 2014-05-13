class AddCodeToPlant < ActiveRecord::Migration
  def change
    add_column :plants, :code, :string
  end
end
