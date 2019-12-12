Rails.application.routes.draw do
  get 'card/new'

  get 'card/show'

  devise_for :users
  root to: 'items#index'
  resources :users, only: [:index, :edit, :update]
  resources :items, only: [:index,:new, :create] 
  resources :address, only: [:index,:new, :create]
  resources :card, only: [:new, :show] 
  resources :signup do
    collection do
      get 'step0'
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4' # ここで、入力の全てが終了する
      get 'done' # 登録完了後のページ
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

end
