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

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to Planespottr!"
			redirect_to users_path
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
		params.require(:user).permit(:name, :email, :password, :image, :remove_image)
	end

end
