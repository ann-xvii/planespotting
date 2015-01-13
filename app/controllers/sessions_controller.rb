class SessionsController < ApplicationController

	def new
	end

	def create
		 user = User.where(email: params[:login][:email]).first
    	 if user && user.authenticate(params[:login][:password])
			# session[:user_id] = user.id.to_s
			# redirect_to users_path
			log_in user
			redirect_to user
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		session.delete(:user_id)
		@current_user = 'The Aviator'
		redirect_to articles_path
	end
end
