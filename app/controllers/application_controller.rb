class ApplicationController < ActionController::Base
	protect_from_forgery

	private
# Some private methods
	# use this method to fetch the current_user in order for the username to be display when logged in
	# fetch current_user based on session[:id] which is defined in sessions_controller (if the session variable exists)
	# @current_user | cached the session variable => fetch once / request
	def current_user
		@current_user ||= User.find(session[:id]) if session[:id]
	end

	# make this method accessible from inside the views
	helper_method :current_user

end
