Rails.application.routes.draw do

root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts, only: [:show, :new, :create, :edit, :destroy]
 
end
