class FixColumnNameonSawLogClass < ActiveRecord::Migration
    def self.up
      rename_column :saw_logs_classes, :saw_log_class, :saw_log_class_value
    end
    def self.down
      # rename back if you need or do something else or do nothing
    end
end
