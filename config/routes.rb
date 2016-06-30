Rails.application.routes.draw do

  devise_for :users
  resources :items
  root 'items#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
