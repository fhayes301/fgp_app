Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#homepage'

  devise_scope :user do
    get "/login" => "devise/sessions#new" # custom path to login/sign_in
  end

  devise_scope :user do
    get "/logout" => "devise/sessions#destroy" # custom path to login/sign_in
  end

  devise_for :users

  resources :equipments
  
  resources :terms, only: [:index]

end
