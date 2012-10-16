class Mtype < ActiveRecord::Base
  attr_accessible :code, :desc

  #has_many :offcut

  validates :code, :presence => true, :uniqueness => true
end
