class Mthickness < ActiveRecord::Base
  attr_accessible :thickness

  validates :thickness, :presence => true, :uniqueness => true, :numericality => true
end
