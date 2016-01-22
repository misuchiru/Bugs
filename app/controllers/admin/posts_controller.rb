class Admin::PostsController < ApplicationController
	before_action :authenticate_user!
	def index
		if current_user.admin?
			@posts = Post.all
		else
			@posts = current_user.posts
		end
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.author = current_user
		if @post.save
			redirect_to admin_posts_path
		else
			render :new
		end
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to admin_posts_path
		else
			render :edit
		end
	end
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to admin_posts_path 
	end

	private
	def post_params
		params.require(:post).permit(:title, :content)
	end
end
