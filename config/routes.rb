Rails.application.routes.draw do

  get 'purchase/index'

  devise_for :users,controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  root to: 'items#index'
  
  resources :users, only: [:index, :edit, :update, :show] do
    resources :address, only: [:index, :new, :create]
  end

  resources :items do
    collection do
      get 'category_children' 
      get 'category_grandchildren'
      get 'search'
    end
    resources :comments, only: [:create, :destroy]
  end

  resources :item_images, only: [:destroy]
  
  resources :card, only: [:new, :show] 
  
  resources :profiles, only: [:new, :create]
  
  resources :categories, only: [:index, :show]

  resources :personals, only: [:index, :edit]

  resources :purchase, only: [:index, :show] do

    member do
      patch 'pay'
      get 'done'
    end
  end

  resources :signup do
    collection do
      get 'step0'
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4' # ここで、入力の全てが終了する
      get 'done' # 登録完了後のページ
    end
  end
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'card/new'
  get 'card/show'
  post 'users/:user_id/address/new' => 'address#new'
  post 'show', to: 'card#show'
  post 'pay', to: 'card#pay'
  post 'delete', to: 'card#delete'
  post 'card/new', to:'card#new'
end

