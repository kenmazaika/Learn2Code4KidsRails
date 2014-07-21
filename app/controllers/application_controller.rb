class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



	helper_method :current_opt_in
	def current_opt_in
		if session[:opt_in_id].blank?
			nil
		else
			@current_opt_in ||= OptIn.find(session[:opt_in_id])
		end
	end
end

