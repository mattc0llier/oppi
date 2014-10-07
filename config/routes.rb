Rails.application.routes.draw do

  devise_for :users
root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts
  get 'tag/:tags', to:'posts#index', as: :tag
 
end
