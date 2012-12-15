Rails3MongoidDevise::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  
  #config/routes.rb  
   
 get  '/users/auth/weibo'
 
 devise_scope :user do
   get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
 end
 
 devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
   
   
  root :to => "home#index"
  devise_for :users
  resources :users
end