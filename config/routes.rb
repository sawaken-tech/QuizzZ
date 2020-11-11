Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  resources :homes do
    collection do
      get 'what', to: 'homes#what'
      get 'faq', to: 'homes#faq'
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

  get 'contact', to: 'contact#index'              # 入力画面
  post 'contact/confirm', to: 'contact#confirm'   # 確認画面
  post 'contact/thanks', to: 'contact#thanks'     # 送信完了画面


  resources :challenges, only: [] do
    collection do
      get 'test', to: 'challenge#test'
      get 'play', to: 'challenge#play'
      get 'score', to: 'challenge#score'
    end
  end

end