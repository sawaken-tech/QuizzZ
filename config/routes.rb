Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  root to: "homes#index"

  resources :questions, only: [:index, :new, :create]

end
