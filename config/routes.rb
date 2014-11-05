Rails.application.routes.draw do

root "main#index"

 devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

resources :projects  
resources :posts
resources :main, :only => [:index]

  resources :users do
	resources :projects  
  	resources :posts
  end
  
  get 'tag/:tags', to:'posts#index', as: :tag
 
end
