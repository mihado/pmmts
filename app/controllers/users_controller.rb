class UsersController < ApplicationController
# Action: new | create a new user instance & display the sign up form
	def new
		@user = User.new
	end

# Action: save the user to the db OR re-render the form if there's validation error
	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user.user_id
			redirect_to root_url, notice: "Signed up"
		else
			render "new"
		end
	end
end
