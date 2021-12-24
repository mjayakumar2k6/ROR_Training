Rails.application.routes.draw do
  get 'session/signin'
  get 'session/signup'
  get 'session/signout'
  post 'session/signup', to: "session#create_user"
  post 'session/signin', to: "session#login"
  post "checkuser", to: "session#checkuser"
  post "upload", to: "session#upload"
  resources :roles
  resources :employees
  root to: "welcome#index"
  get "welcome", to: "welcome#index"
  get "welcome/home", to: "welcome#home"
  get "welcome/redirect_to_me", to: "welcome#redirect_to_me"
  get 'welcome/index'
  resources :departments
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
