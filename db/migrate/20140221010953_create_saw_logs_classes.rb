class CreateSawLogsClasses < ActiveRecord::Migration
  def change
    create_table :saw_logs_classes do |t|
      t.integer :saw_log_class

      t.timestamps
    end
  end
end
