class SessionsController < ApplicationController
	def new
	end

# Log In
	# find a user by matching the entered username
	# if there is a user && the password match the saved one (find the password subjecting to the username)
	# assign the id of the current session = user.id
	# redirect_to <the root URL for now>
	# if either username or password is incorrect, flash a msg & re-render the form

	def create
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			#redirect_to root_url, notice: "Logged in!"
			redirect_to root_url
		else
			flash.now.alert = "Username or password is invalid"
			render "new"
		end
	end

# Log Out
	def destroy
		session[:user_id] = nil
		reset_session
		#redirect_to root_url, notice: "Logged out!"
		redirect_to root_url
	end

end
