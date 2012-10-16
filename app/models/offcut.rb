class Offcut < ActiveRecord::Base
  attr_accessible :code, :description, :height, :in_use, :mtype, :thickness, :use_up, :width

  validates :code, :presence => true
  validates :height, :presence => true, :numericality => true
  validates :width, :presence => true, :numericality => true
  validates :thickness, :presence => true, :numericality => true

end
