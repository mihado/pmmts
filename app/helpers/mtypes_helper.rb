module MtypesHelper
#TODO: turn this one into a proper select_tag
	def mtype_array_for_select
		mtype_array = Mtype.all.map { |mtype| [mtype.id, mtype.code]  }
		options_for_select(mtype_array)
	end
end
