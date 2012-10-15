class MthicknessesController < ApplicationController

before_filter :authorize

# Action: show all thicknesses
	def index
		@mthicknesses = Mthickness.order(:thickness)
	end

# Action: new | create a new thickness instance & display the create form
	def new
		@mthickness = Mthickness.new
	end

# Action: save the current thickness to the db OR re-render the form if there's validation error
	def create
		@mthickness = Mthickness.new(params[:mthickness])
		if @mthickness.save
			redirect_to mthicknesses_path, notice: "Created new thickness"
		else
			render "new"
		end
	end

end
