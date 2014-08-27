Rails.application.routes.draw do

root "subjects#index"
  
	resources :subjects do
	  resources :projects, only: [:show, :new, :create, :edit, :destroy]
  end

  resources :posts, [:show, :new, :create, :edit, :destroy]
 
end
