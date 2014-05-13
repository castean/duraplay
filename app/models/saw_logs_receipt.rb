#encoding:utf-8
class SawLogsReceipt < ActiveRecord::Base
  
  belongs_to :saw_logs_class

  validates :low_diameter, :presence => true
  validates :high_diameter, :presence => true
  validates :length, :presence => true

  validates_numericality_of :low_diameter, :only_float => true
  validates_numericality_of :high_diameter, :only_float => true

  before_create :validar_mayores
  validate :validate_saw_log_class, :unless => Proc.new{ |saw_logs_receipt| saw_logs_receipt.saw_log_class_id.nil? || saw_logs_receipt.saw_log_class_id == 0}




  def validar_mayores
    if self.low_diameter > self.high_diameter
      menor = self.high_diameter
      mayor = self.low_diameter
      self.low_diameter = menor
      self.high_diameter = mayor
    end
  end

  def validate_saw_log_class
    t = self.saw_log_class_id
    if t == 0 or t.nil? or t == " "
      errors.add('Clase de Troceria: ', "Seleccione por favor una clase")
    end
  end
end
