json.array!(@saw_logs_receipts) do |saw_logs_receipt|
  json.extract! saw_logs_receipt, :id, :ticket_id, :saw_log_class_id, :low_diameter, :high_diameter, :length
  json.url saw_logs_receipt_url(saw_logs_receipt, format: :json)
end
