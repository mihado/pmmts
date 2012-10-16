class UsersController < ApplicationController
before_filter :authorize

# Action: new | create a new user instance & display the sign up form
	def new
		@user = User.new
	end

# Action: save the user to the db OR re-render the form if there's validation error
	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to root_url, notice: "Added new user to the database"
		else
			render "new"
		end
	end
end
