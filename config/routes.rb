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

  post "rates/:questioin_id/create" => "rates#create"
  post "rates/:questioin_id/destroy" => "rates#destroy"

  resources :mypages, only: [:show] do
    member do
      get 'edit_profile'
      patch 'update_profile'
    end
  end

  root to: "homes#index"

end