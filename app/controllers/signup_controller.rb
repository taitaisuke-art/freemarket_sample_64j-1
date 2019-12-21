class SignupController < ApplicationController

  def step0
  end

  def step1
    @user = User.new # 新規インスタンス作成
  end
  
  def step2
    session[:password] = params[:password]
    session[:password_confirmation] = params[:password]
    session[:provider] = params[:provider]
    session[:uid] = params[:uid]
    @user = User.new # 新規インスタンス作成
  end

  
  def step3
    session[:credit] = params[:credit]
    @user = User.new # 新規インスタンス作成
  end

  def step4
    @user = User.new # 新規インスタンス作成
  end

  def create
    @user = User.new(user_params) # 新規インスタンス作成
    @user.save
  end

  def done
    
  end


  private
    def user_param
      params(:user).merge(credit: session[:credit])

    end
end