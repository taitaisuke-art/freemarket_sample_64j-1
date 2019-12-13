Rails.application.routes.draw do
  
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:index, :edit, :update] do
    resources :address, only: [:index,:new, :create]
  end
  resources :items, only: [:index,:new, :create]
  resources :card, only: [:new, :show] 
  resources :profiles, only: [:new, :create]

  resources :signup do
    collection do
      get 'step0'
      get 'step2'
      get 'done' # 登録完了後のページ
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'card/new'
  get 'card/show'

end
