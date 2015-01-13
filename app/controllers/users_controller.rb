class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def edit 
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(user_params)
			redirect_to users_path
		else
			render :edit
		end
	end

	# def destroy
	# 	@user = User.find(params[:id])
	# 	@user.destroy
	# 	session.delete(:user_id)
	# 	redirect_to users_path
	# end

	def create
		@user = User.new(user_params)
		if @user.save
			# session[:user_id] = @user.id.to_s
			log_in @user
			flash[:success] = "Welcome to Planespottr!"
			# redirect_to users_path
			redirect_to @user
		else
			render :new
		end
	end

	def show 
		@user = User.find(params[:id])
		@articles = @user.articles
	end

	private

	def user_params 
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :remove_image)
	end

end
