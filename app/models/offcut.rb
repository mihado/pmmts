class Offcut < ActiveRecord::Base
  attr_accessible :code, :description, :height, :in_use, :mtype, :thickness, :use_up, :width

  validates :code, :presence => true
  validates :height, :presence => true, :numericality => true
  validates :width, :presence => true, :numericality => true
  validates :thickness, :presence => true, :numericality => true

  #search by mtype only
  def self.search(search)
    if search
	    where('upper(mtype) LIKE upper(?) AND use_up = ? AND in_use = ?', "%#{search}%", false, false)
    else
		where('use_up = ? AND in_use = ?', false, false)
    end
  end

end
