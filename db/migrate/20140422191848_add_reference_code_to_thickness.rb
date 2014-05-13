class AddReferenceCodeToThickness < ActiveRecord::Migration
  def change
    add_column :thicknesses, :reference_code, :string
  end
end
