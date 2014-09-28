Rails.application.routes.draw do


root "subjects#index"
  
	resources :subjects do
	  resources :projects
  end

  resources :projects, only: [:index]
  resources :posts
  resources :users do 
  	resources :posts
  end

  resource :session, only: [:new, :create, :destroy]

  get 'tag/:tags', to:'posts#index', as: :tag


 
end
