Rails.application.routes.draw do

root "subjects#index"
  
	resources :projects 

  resources :projects do
    resources :posts 
  end
  
end
