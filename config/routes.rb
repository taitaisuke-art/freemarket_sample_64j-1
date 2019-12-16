Rails.application.routes.draw do
  
  get 'purchase/index'

  devise_for :users
  root to: 'items#index'
  resources :users, only: [:index, :edit, :update] do
    resources :address, only: [:index,:new, :create]
  end
  resources :items, only: [:index,:new, :create]
  resources :card, only: [:new, :show] 
  resources :categories, only: [:index] 
  resources :purchase, only: [:index] 
  resources :personals, only: [:edit] 
  

  resources :signup do
    collection do
      get 'step0'
      get 'step2'
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
  post 'pay', to: 'purchase#pay'
  get 'done', to: 'purchase#done'
end