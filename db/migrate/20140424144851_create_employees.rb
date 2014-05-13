class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastname
      t.string :second_lastname
      t.integer :company_id
      t.integer :area_id

      t.timestamps
    end
  end
end
