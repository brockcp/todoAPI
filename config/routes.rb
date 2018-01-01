Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root 'home#index'

  get 'about' => 'home#about'

end
