Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users
  end
  
  root 'home#index'

  get 'about' => 'home#about'

end
