class SignupController < ApplicationController

  def step0
  end

  def step1
    @user = User.new # 新規インスタンス作成
  end
  
  def step2
    @user = User.new # 新規インスタンス作成
  end
  
  def step3
    @user = User.new # 新規インスタンス作成
  end

  def step4
    @user = User.new # 新規インスタンス作成
  end

  def create
    @user = User.new # 新規インスタンス作成
  end

 

end