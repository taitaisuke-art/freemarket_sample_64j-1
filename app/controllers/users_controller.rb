class UsersController < ApplicationController

  def index
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    user = User.find(current_user)
    user.update(user_params)
    # redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :text)
  end

end
