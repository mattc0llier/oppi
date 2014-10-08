Rails.application.routes.draw do

  devise_for :users
	root "projects#index"
  
	resources :projects do 
  	resources :posts
  end

  resources :posts
  get 'tag/:tags', to:'posts#index', as: :tag
 
end
