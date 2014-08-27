Rails.application.routes.draw do

root "subjects#index"
  
	resources :subjects do
	  resources :projects do
	    resources :posts 
	  end
  end


end
