class PostsController < ApplicationController
  def index
  	#@posts = "My string of shit"
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])	
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
			flash[:success] = "Thank you for submiting your story!"
			redirect_to root_path
		else
			flash[:error] = "not this time buddy, change it up!"
			render :new
		end	

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			flash[:success] = "Thank you for updating your story"
			redirect_to post_path(@post)
		else
			flash[:error] = "not this time buddy, change it!"
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.present?
			flash[:success] = "Successfully destroyed '#{@post.title}'" 
			@post.destroy
		else 
			flash[:error] = "Oops, no post found with id #{params [:id]}"
		end
		redirect_to root_path
	end

  end

  private
  def post_params
		params.require(:post).permit(:title, :body, :url, :image)
	end
end
