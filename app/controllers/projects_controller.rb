class ProjectsController < ApplicationController

def index
	@projects = Project.all
end

def show
  	@subject = Subject.find(params[:subject_id])
  	@project = @subject.projects.find(params[:id])	  	
end

def new
  	@subject = Subject.find(params[:subject_id])
  	@project = @subject.projects.new
end

def create
	@subject = Subject.find(params[:subject_id])
  	@project = @subject.projects.new(project_params)
  	if @project.save
		flash[:success] = "Thank you for submiting your story!"
		redirect_to root_path
	else
		flash[:error] = "not this time buddy, change it up!"
		render :new
	end	
end

private
def project_params
	params.require(:project).permit(:title, :body, :url, :image)
end


end
