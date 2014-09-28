Rails.application.routes.draw do


root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts
  resources :users do 
  	resource :session
  end
  get 'tag/:tags', to:'posts#index', as: :tag


 
end
