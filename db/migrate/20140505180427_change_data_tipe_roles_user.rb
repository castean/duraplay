class ChangeDataTipeRolesUser < ActiveRecord::Migration
  def change
    change_column :users, :roles, :string
  end
end
