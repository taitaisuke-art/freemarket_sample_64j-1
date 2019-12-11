Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

  resources :users, only: [:index, :edit, :update] do
  end
  resources :profiles, only: [:new, :create]
  resources :items, only: [:index,:new, :create]
  resources :address, only: [:index,:new, :create] 

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

end
