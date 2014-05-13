#encoding:utf-8
class SawLogsClass < ActiveRecord::Base

  has_many :saw_logs_receipts

end
