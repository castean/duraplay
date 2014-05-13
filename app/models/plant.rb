class Plant < ActiveRecord::Base
  has_many :areas
  has_many :brands
  has_many :products
end
