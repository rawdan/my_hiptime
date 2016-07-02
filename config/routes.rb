Rails.application.routes.draw do

  devise_for :users
  resources :items do
    member do
      patch :complete
    end
  end
  root 'items#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
