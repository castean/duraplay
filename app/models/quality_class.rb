#encoding:utf-8
class QualityClass < ActiveRecord::Base
  belongs_to :quality
  has_many :qualities
end
