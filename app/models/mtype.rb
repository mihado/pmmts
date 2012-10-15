class Mtype < ActiveRecord::Base
  attr_accessible :code, :desc

  validates :code, :presence => true, :uniqueness => true
end
