class Mtype < ActiveRecord::Base
  attr_accessible :code, :desc

  #has_many :offcut

  validates :code, :presence => true, :uniqueness => true

	def code=(value)
	  write_attribute(:code, value.upcase)
	end
end
