class Brand < ActiveRecord::Base
  belongs_to :plant
  has_many :qualities
  has_many :products
end
