Rails.application.routes.draw do

  devise_for :users
	root "projects#index"
  
	resources :subjects
	resources :projects  
  	resources :posts

  get 'tag/:tags', to:'posts#index', as: :tag
 
end
