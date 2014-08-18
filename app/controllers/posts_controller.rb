class PostsController < ApplicationController
  def index
  	#@posts = "My string of shit"
  	@posts = Post.all
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
  end

  private
  def post_params
		params.require(:post).permit(:title, :body, :url, :image)
	end
end
