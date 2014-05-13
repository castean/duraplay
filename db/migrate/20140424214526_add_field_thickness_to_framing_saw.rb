class AddFieldThicknessToFramingSaw < ActiveRecord::Migration
  def change
    add_column :framing_saws, :thickness_id, :integer
    add_column :framing_saws, :status_id, :integer
    add_column :framing_saws, :cubic_meters, :float
  end
end
