class ChangeFieldCodeIdOnQualities < ActiveRecord::Migration
  def self.up
    rename_column :qualities, :code_id, :code
  end

  def self.down

  end
end
