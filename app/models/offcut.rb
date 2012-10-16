class Offcut < ActiveRecord::Base
  attr_accessible :code, :description, :height, :in_use, :mtype, :thickness, :use_up, :width

  validates :code, :presence => true
  validates :height, :presence => true, :numericality => true
  validates :width, :presence => true, :numericality => true
  validates :thickness, :presence => true, :numericality => true

  #search by mtype only
  # def self.search(search)
  #   if search
	 #    where('upper(mtype) LIKE upper(?) AND use_up = ? AND in_use = ?', "%#{search}%", false, false)
  #   else
		# where('use_up = ? AND in_use = ?', false, false)
  #   end
  # end

  #search, try using arel
  def self.search(params)
  	arel = order('code ASC')
  	arel = arel.where('use_up = ? AND in_use = ?', false, false)
  	arel = arel.where('upper(mtype) LIKE upper(?)', "%#{params[:mtype_s]}%") if params[:mtype_s].present?
  	arel = arel.where('thickness = ?', params[:mthickness_s]) if params[:mthickness_s].present?
  	arel = arel.where('height >= ?', params[:height_s]) if params[:height_s].present?
  	arel = arel. where('width >= ?', params[:width_s]) if params[:width_s].present?
  	arel
  end

  def self.find_in_use
  	arel = order('code ASC')
  	arel = arel.where('in_use = ?', true)
  	arel
  end

  def self.find_used_up
  	arel = order('code ASC')
  	arel = arel.where('use_up =?', true)
  	arel
  end

  def code=(value)
    write_attribute(:code, value.upcase)
  end

  def mtype=(value)
    write_attribute(:mtype, value.upcase)
  end

#TODO
  # def thickness=(value)
  #   write_attribute(:thickness, value.to_d)
  # end

  # def code=(code_string)
  #   code_string = "#{mtype}#{thickness}"
  #   write_attribute(:code, code_string.upcase)
  # end
end