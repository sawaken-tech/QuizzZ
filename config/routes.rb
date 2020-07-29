Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  resources :questions do
    collection do
      get 'answer', to: 'questions#new_answer'
      post 'answer', to: 'questions#create_answer'
      get 'index_edit', to: 'questions#index_edit'
    end
    member do
      get 'slove', to: 'questions#slove'
      get 'result', to: 'questions#result'
    end
    resources :comments, only: [:create, :show]
  end

  resources :mypages, only: [:show] do
    member do
      get 'profile', to: 'mypages#edit_profile'
      patch 'profile', to: 'mypages#update_profile'
    end
  end

  root to: "homes#index"

end