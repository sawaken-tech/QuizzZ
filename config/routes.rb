Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  resources :questions, only: [:index, :new, :create] do
    collection do
      get 'answer', to: 'questions#new_answer'
      post 'answer', to: 'questions#create_answer'
    end
  end

  root to: "homes#index"

end
