class ProjectsController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

def index
	@projects = Project.all
end

def show
  	@project = Project.find(params[:id])	  	
end

def new
	@project = Project.new
end

def create
  	@project = Project.new(project_params)
  	if @project.save
		flash[:success] = "Thank you for submiting your story!"
		redirect_to root_path
	else
		flash[:error] = "not this time buddy, change it up!"
		render :new
	end
end

def edit
	@project = Project.find(params[:id])
end

def update
	@project = Project.find(params[:id])
	if @project.update(project_params)
		flash[:success] = "Thank you for updating your story"
		redirect_to project_path(@project)
	else
		flash[:error] = "not this time buddy, change it!"
		render :edit
	end
end

def destroy
	@project = Project.find(params[:id])
	if @pproject.present?
		flash[:success] = "Successfully destroyed '#{@project.title}'" 
		@project.destroy
	else 
		flash[:error] = "Oops, no post found with id #{params [:id]}"
	end
	redirect_to root_path
end

private
def project_params
	params.require(:project).permit(:title, :body, :url, :image)
end

end


