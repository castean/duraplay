class Product < ActiveRecord::Base
  belongs_to :plant
  belongs_to :brand
  belongs_to :quality
  belongs_to :face
  belongs_to :thickness
  belongs_to :dimension

  before_save :get_name

  def get_name
    self.name = self.plant.code + "-" + self.brand.code + self.quality.code

    unless :covering_one?
        self.name = self.name + '-' + self.covering_one
    else
        self.name
    end
    unless :covering_two?
      self.name = self.name + self.covering_two
    else
      self.name
    end

    case self.face_id # a_variable is the variable we want to compare
      when 1    #compare to 1
        self.name = self.name + "-" + self.face.name
      when 2    #compare to 2
        self.name = self.name + "-" + self.face.name
      when 3    #compare to 2
        self.name = self.name
    end

    if :code_thickness?
        self.name = self.name + "-" + self.code_thickness
    else
        self.name = self.name + "-" + self.thickness.name
    end

    if :code_dimension?
      self.name = self.name + "-" + self.code_dimension
    else
      self.name = self.name + "-" + self.dimension.name
    end
  end
  validates :name, uniqueness: true
end
