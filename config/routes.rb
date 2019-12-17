Rails.application.routes.draw do

  devise_for :users
  root to: 'items#index'
  resources :users, only: [:index, :edit, :update, :show] do
    resources :address, only: [:index,:new, :create]
  end


  resources :items, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  resources :card, only: [:new, :show] 
  resources :profiles, only: [:new, :create]
  resources :categories, only: [:index] 
  resources :purchase, only: [:index, :done, :pay]
  resources :personals, only: [:index, :edit] 
 
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
end