module SessionsHelper
	def current_user
		@current_user ||= User.find(session[:user_id]) 
		# begin rescue block
	end

	def log_in(user)
		session[:user_id] = user.id.to_s
	end

	def logged_in?
		session[:user_id] != nil
	end
end
