#encoding:utf-8
class Thickness < ActiveRecord::Base
  has_many :products
  has_many :framing_saws
end
