#encoding:utf-8
class Quality < ActiveRecord::Base
  belongs_to :quality_class
  has_many :quality_classes
  has_many :framing_saws

  belongs_to :brand
  has_many :brands

  has_many :products
end
