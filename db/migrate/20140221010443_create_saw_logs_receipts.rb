class CreateSawLogsReceipts < ActiveRecord::Migration
  def change
    create_table :saw_logs_receipts do |t|
      t.integer :ticket_id
      t.integer :saw_log_class_id
      t.float :low_diameter
      t.float :high_diameter
      t.float :length

      t.timestamps
    end
  end
end
