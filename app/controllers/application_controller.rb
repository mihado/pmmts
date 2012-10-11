class ApplicationController < ActionController::Base
	protect_from_forgery

	private
	# Some private methods
		# make these method accessible from inside the views
		helper_method :current_user, :admin?
		
		# use this method to fetch the current_user in order for the username to be display when logged in
		# fetch current_user based on session[:id] which is defined in sessions_controller (if the session variable exists)
		# @current_user | cached the session variable => fetch once / request
		def current_user
			if session[:user_id]
				@current_user ||= User.find(session[:user_id])
			end
		end

		# the user must log in before he can use any function
		# active this in home_controller with before_filter
		def authorize
			if current_user.nil?
				redirect_to login_url, alert: "Please log in to continue"
			end
		end

		# allow for administrative tasks
		def admin?
			current_user && current_user.username == "admin"
		end
end
