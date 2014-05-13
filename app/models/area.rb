class Area < ActiveRecord::Base
  belongs_to :plant
  has_many :zones
  has_many :qualities
  has_many :employees
end
