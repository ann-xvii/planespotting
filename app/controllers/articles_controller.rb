class ArticlesController < ApplicationController
	before_action :find_article, only: [:show]
	# before_action :authenticate, except: [:index, :show]
	def index
		@articles = Article.all.order("created_at DESC")	
	end

	def fruitloops
		@articles = Article.all.order("created_at DESC")
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		# @article = Article.new
		@article = current_user.articles.build
	end

	def create
		# @article = Article.new(article_params)

		@article = current_user.articles.build(article_params)
	
		if @article.save
			redirect_to @article
		else
			render :new
		end
	end

	def destroy
		@article = current_user.articles.find(params[:id])
	end

	private

	def find_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :content, :image)
	end
end
