class SubjectsController < ApplicationController
  
  def index
  	@subjects = Subject.all
  end

  def show
  	@subject = Subject.find(params[:id])
  end

  def new
  	@subject = Subject.new
  end

  def create
  	@subject = Subject.new(subject_params)
		  if @subject.save
				flash[:success] = "Thank you for submiting your story!"
				redirect_to root_path
			else
				flash[:error] = "not this time buddy, change it up!"
				render :new
			end	
  end

  private
  def subject_params
		params.require(:subject).permit(:title, :image)
	end

end
