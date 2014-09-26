Rails.application.routes.draw do

  get 'users/new'

  get 'users/edit'

root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts
  get 'tag/:tags', to:'posts#index', as: :tag
 
end
