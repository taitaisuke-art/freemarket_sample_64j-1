class UsersController < ApplicationController

  def index
  end

  def edit
  end

  def update
    user = User.find(current_user)
    user.update(user_params)
    if user.save
      redirect_to users_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :text)
  end

end
