json.array!(@saw_logs_classes) do |saw_logs_class|
  json.extract! saw_logs_class, :id, :saw_log_class
  json.url saw_logs_class_url(saw_logs_class, format: :json)
end
