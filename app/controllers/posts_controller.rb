class PostsController < ApplicationController
  def index
  	if params[:tag]
  		@posts = Post.tagged_with(params[:tag])
  	else
  		@posts = Post.all
  	end
	end

  def show
  	@post = Post.find(params[:id])
	end

  def new
  	@project = Project.find(params[:project_id])
  	@post = @project.posts.build
  end

  def create
  	@project = Project.find(params[:project_id])
  	@post = @project.posts.build(post_params)
  	@post.user_id = current_user.id
  	if @post.save
			flash[:success] = "Thank you for submiting your story!"
			redirect_to root_path
		else
			flash[:error] = "not this time buddy, change it up!"
			render :new
		end	
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

  private
  def post_params
		params.require(:post).permit(:title, :body, :url, :image, :project_id, :tag_list)
	end
end