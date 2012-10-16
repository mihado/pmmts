class Mthickness < ActiveRecord::Base
  attr_accessible :thickness

  #has_many :offcut

  validates :thickness, :presence => true, :uniqueness => true, :numericality => true
end
