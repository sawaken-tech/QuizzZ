Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  resources :homes do
    collection do
      get 'what', to: 'homes#what'
    end
  end


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

    post 'add' => 'rates#create'
    delete '/add' => 'rates#destroy'
    
  end


  resources :mypages, only: [:show] do
    member do
      get 'edit_profile'
      patch 'update_profile'
    end
  end

  root to: "homes#index"

end