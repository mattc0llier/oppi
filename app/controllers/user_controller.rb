class UserController < ApplicationController

def edit
 	@user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
    
    if @user.update(user_params)
      flash[:success] = "Your user was updated"
      redirect_to user_path(@user)
    else
      flash[:error] = "Oops somethinig went wrong"
      render :edit
    end
 end

end
