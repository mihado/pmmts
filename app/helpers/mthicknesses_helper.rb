module MthicknessesHelper
#TODO: turn this one into a proper select_tag
	def mthickness_array_for_select
		mthickness_array = Mthickness.all.map { |mthickness| [mthickness.id, mthickness.thickness]  }
		options_for_select(mthickness_array)
	end
end
