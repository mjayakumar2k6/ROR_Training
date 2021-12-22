Rails.application.routes.draw do
  resources :employees
  root to: "welcome#index"
  get "welcome", to: "welcome#index"
  get "welcome/home", to: "welcome#home"
  get "welcome/redirect_to_me", to: "welcome#redirect_to_me"
  get 'welcome/index'
  resources :departments
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
