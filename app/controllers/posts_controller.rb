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
  	@post.save
  	redirect_to root_path
  end

  private
  def post_params
		params.require(:post).permit(:title, :body, :url)
	end
end
