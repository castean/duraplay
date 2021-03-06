class FramingSaw < ActiveRecord::Base
  belongs_to :thickness
  belongs_to :dimension
  belongs_to :quality
  belongs_to :area
  belongs_to :plant

  validates_presence_of :quality_id, :thickness_id, :dimension_id, :sheet
  before_save :calcula_metros_cubicos



  def calcula_metros_cubicos
    self.batch = Time.now.strftime("%y%m-%d-%H%M")
    self.cubic_meters = self.sheet * ((self.dimension.length_mts * self.dimension.width_mts) * self.thickness.milimiter )
  end

end
