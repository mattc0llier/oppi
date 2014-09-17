Rails.application.routes.draw do

root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts
  get 'tag/:tags', to:'posts#show', as: :tag
 
end
