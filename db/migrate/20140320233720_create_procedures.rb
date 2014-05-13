class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.string :link_address
      t.integer :department_id

      t.timestamps
    end
  end
end
