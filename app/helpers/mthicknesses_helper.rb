module MthicknessesHelper
#TODO: turn this one into a proper select_tag
	def mthickness_array_for_select
		mthickness_array = Mthickness.all.map { |mthickness| [mthickness.thickness, mthickness.thickness]  }
	end
end
