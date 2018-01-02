Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do

    resources :users do
      resources :lists
    end

    resources :lists do  #removed , only: []
      resources :items   #removed , only: [:create]
    end

    resources :items  #removed , only: [:destroy]

  end

  root 'home#index'
  get 'about' => 'home#about'

end
